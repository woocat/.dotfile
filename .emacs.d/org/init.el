(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(set-default-font "Inconsolata 15" nil t)
(setq inhibit-splash-screen t)
(setq initial-frame-alist (quote ((fullscreen . maximized))))
(use-package solarized-theme
  :ensure t
  :init
  ;; make the fringe stand out from the background
  (setq solarized-distinct-fringe-background nil)

  ;; Don't change the font for some headings and titles
  (setq solarized-use-variable-pitch nil)

  ;; Use less bolding
  (setq solarized-use-less-bold t)

  ;; Use more italics
  (setq solarized-use-more-italic t)

  ;; Use less colors for indicators such as git:gutter, flycheck and similar
  (setq solarized-emphasize-indicators nil)

  ;; Don't change size of org-mode headlines (but keep other size-changes)
  (setq solarized-scale-org-headlines nil)

  ;; Avoid all font-size changes
  (setq solarized-height-minus-1 1.0)
  (setq solarized-height-plus-1 1.0)
  (setq solarized-height-plus-2 1.0)
  (setq solarized-height-plus-3 1.0)
  (setq solarized-height-plus-4 1.0)
  :config
  (load-theme 'solarized-light t))
(use-package powerline
  :ensure t
  :config
  (powerline-default-theme))

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq auto-save-list-file-prefix nil)
;;(global-auto-revert-mode t)
(fset 'yes-or-nop 'y-or-n-p)
(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'always)
(put 'dired-find-alternate-file 'disabled nil)
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))
(setq ediff-split-window-function 'split-window-horizontally)
(require 'dired-x)
(setq browse-url-browser-function 'browse-url-chromium)
(setq scroll-step 1)
(global-set-key (kbd "C-w") 'backward-kill-word)
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

;; function to open init file
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/org/init.org"))
;; function and micro to open browser,and search from google,
;; baidu, youtube, github and so on
(defun prelude-search (query-url prompt)
  "Open the search url constructed with the QUERY-URL.
PROMPT sets the `read-string prompt."
  (browse-url
   (concat query-url
	   (url-hexify-string
	    (if mark-active
		(buffer-substring (region-beginning) (region-end))
	      (read-string prompt))))))

(defmacro prelude-install-search-engine (search-engine-name search-engine-url search-engine-prompt)
  "Given some information regarding a search engine, install the interactive command to search through them"
  `(defun ,(intern (format "prelude-%s" search-engine-name)) ()
     ,(format "Search %s with a query or region if any." search-engine-name)
     (interactive)
     (prelude-search ,search-engine-url ,search-engine-prompt)))

(prelude-install-search-engine "google"     "http://www.google.com/search?q="              "Google: ")
(prelude-install-search-engine "youtube"    "http://www.youtube.com/results?search_query=" "Search YouTube: ")
(prelude-install-search-engine "github"     "https://github.com/search?q="                 "Search GitHub: ")
(prelude-install-search-engine "baidu" "https://www.baidu.com/s?wd="              "Baidu:")

(use-package org
  :ensure t
  :bind
  ("C-c c" . org-capture)
  :config
  (setq org-capture-templates '(("t" "Todo [inbox]" entry
				 (file+headline "~/gtd/inbox.org" "Tasks")
				 "* TODO %i%?")
				("T" "Tickler" entry
				 (file+headline "~/gtd/tickler.org" "Tickler")
				 "* %i%? \n %U")))
  (setq org-refile-targets '(("~/gtd/gtd.org" :maxlevel . 3)
			   ("~/gtd/someday.org" :level . 1)
			   ("~/gtd/tickler.org" :maxlevel . 2))))
(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

(use-package counsel-projectile
  :ensure t)
(use-package counsel
  :ensure t
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  :bind(("C-s" . swiper)
	("M-x" . counsel-M-x)
	 ("C-h f" . counsel-describe-function)
	 ("C-h v" . counsel-describe-variable)
	 ("C-x C-f" . counsel-find-file)
	 ("M-y" . counsel-yank-pop)))

(use-package evil
      :ensure t
      :config
      (evil-mode 1)
      (setcdr evil-insert-state-map nil)
      (define-key evil-insert-state-map [escape] 'evil-normal-state)
      (define-key evil-motion-state-map (kbd "C-e") nil)
      (define-key evil-motion-state-map (kbd "C-y") nil)
      (define-key evil-motion-state-map (kbd "C-b") nil)
      (define-key evil-normal-state-map (kbd "C-p") nil)
      (define-key evil-motion-state-map (kbd "C-f") nil))
;;      (define-key evil-normal-state-map (kbd "C-n") nil)
;;      (define-key evil-insert-state-map (kbd "C-d") nil)
;;      (define-key evil-insert-state-map (kbd "C-e") nil)
;;      (define-key evil-insert-state-map (kbd "C-a") nil))
    (use-package evil-leader
      :ensure t
      :config
      (global-evil-leader-mode)
      (evil-leader/set-key
       "bb" 'ivy-switch-buffer
       "SPC" 'counsel-M-x
       "ff" 'counsel-find-file
       "pf" 'counsel-projectile-find-file
       "pp" 'counsel-projectile-switch-project
       "pb" 'counsel-projectile-switch-to-buffer
       "sp" 'counsel-projectile-ag
       "sb" 'prelude-baidu
       "sg" 'prelude-google
       "sh" 'prelude-github
       "fr" 'counsel-recentf
       "jd" 'godef-jump))

(use-package smartparens
  :ensure t
  :config
  (require 'smartparens-config))
(use-package exec-path-from-shell
  :if (memq window-system '(mac ns))
  :ensure t
  :config
  (exec-path-from-shell-initialize))
(use-package popwin
  :ensure t
  :config
  (popwin-mode t))
(use-package hungry-delete
  :ensure t)

(use-package avy
  :ensure t
  :bind
  ("M-s" . avy-goto-char))

(use-package ace-window
  :ensure t
  :bind
  ("C-x o" . ace-window)
  :config
  (setq aw-scope 'frame))

(use-package company
  :ensure t
  :config
  (setq company-tooltip-limit 5)
  (setq company-idle-delay 0.01)
  (setq company-echo-delay 0)                          ; remove annoying blinking
  (setq company-begin-commands '(self-insert-command))
  (setq company-minimum-prefix-length 3)
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous)
  (define-key company-active-map (kbd "C-w") nil))

(use-package magit
  :ensure t)
(use-package evil-magit
  :ensure t)

(use-package flycheck
  :ensure t)

(add-hook 'emacs-lisp-mode-hook (lambda()
				  (company-mode)
				  (hungry-delete-mode)
				  (smartparens-mode)
				  ))

(use-package go-mode
  :ensure t
  :config
  (add-hook 'go-mode-hook (lambda ()
			    (set (make-local-variable 'company-backends) '(company-go))
			    (company-mode)
			    (hungry-delete-mode)
			    (flycheck-mode)
			    (smartparens-mode)
			    (go-eldoc-setup)
			    (add-hook 'before-save-hook 'gofmt-before-save)
			    (setq tab-width 4)
			    (setq indent-tabs-mode 1)
			    (setq gofmt-command "goimports"))))
(use-package go-eldoc
  :ensure t)
(use-package company-go
  :ensure t)
