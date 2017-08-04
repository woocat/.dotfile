(when (>= emacs-major-version 24)
	     (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                      ("melpa" . "http://elpa.emacs-china.org/melpa/"))))
(require 'cl)
;; package want to download
(defvar woocat/packages '(
				   company
				   monokai-theme
				   hungry-delete
				   smartparens
				   exec-path-from-shell
				   magit
				   evil		   
				   evil-leader
				   evil-ediff
				   popwin
				   flycheck
				   yasnippet
				   diminish
				   window-numbering
				   counsel
				   counsel-projectile
				   go-mode
				   go-eldoc
				   company-go
				   ))
(setq package-selected-packages woocat/packages)
;; function to loop user packages to find which is not installed
(defun woocat/packages-installed-p ()
    (loop for pkg in woocat/packages
          when (not (package-installed-p pkg)) do (return nil)
          finally (return t)))
(unless (woocat/packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg woocat/packages)
      (when (not (package-installed-p pkg))
        (package-install pkg))))

(exec-path-from-shell-copy-env "GOPATH")
;; this set $MANPATH, $PATH and exec from shell, only on linux and macOS
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; other
(require 'popwin)
(popwin-mode t)

;; evil
(require 'evil-leader)
(global-evil-leader-mode)
(evil-mode 1)
(setcdr evil-insert-state-map nil)
(define-key evil-insert-state-map [escape] 'evil-normal-state)
(setq evil-want-C-u-scroll t)
(add-hook 'emacs-lisp-mode-hook 'company-mode)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; company
(setq company-idle-delay 0.01)
(setq company-minimum-prefix-length 1)
(window-numbering-mode 1)
(setq company-tooltip-limit 5)                      ; bigger popup window
(setq company-idle-delay 0.01)                         ; decrease delay before autocompletion popup shows
(setq company-echo-delay 0)                          ; remove annoying blinking
(setq company-begin-commands '(self-insert-command)) ; start autocompletion only after typing
(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-go))
                          (company-mode)))
(add-hook 'go-mode-hook 'go-eldoc-setup)
(setq ediff-window-setup-function 'ediff-setup-windows-plain)
(setq ediff-split-window-function 'split-window-horizontally)
;;(dolist (mode '(ag-mode))
;;	      (add-to-list 'evil-emacs-state-modes))
(setq browse-url-browser-function 'browse-url-chromium) ; google's browser
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
(setq flycheck-check-syntax-automatically '(mode-enabled save new-line))

(provide 'init-packages)
