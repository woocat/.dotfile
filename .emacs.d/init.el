(setq package-enable-at-startup nil)
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")))
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(org-babel-load-file (expand-file-name "~/.emacs.d/org/init.org"))
 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-go-show-annotation t)
 '(company-require-match nil)
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" default)))
 '(evil-leader/leader "SPC")
 '(evil-want-C-u-scroll t)
 '(flycheck-check-syntax-automatically (quote (save mode-enabled)))
 '(flycheck-checker-error-threshold 100)
 '(flycheck-disabled-checkers
   (quote
    (go-gofmt go-vet go-test go-errcheck go-unconvert go-megacheck)))
 '(org-log-into-drawer t)
 '(package-selected-packages
   (quote
    (helm-swoop helm evil-magit magit evil-leader ace-window avy company-go go-eldoc go-mode powerline solarized-theme hungry-delete popwin exec-path-from-shell smartparens evil org org-bullets company use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-checkbox ((t (:background "#fdf6e3" :foreground "#657b83" :box nil)))))
