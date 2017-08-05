(setq custom-file (expand-file-name "config/init-custom.el" user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-go-show-annotation t)
 '(evil-leader/in-all-states nil)
 '(evil-leader/leader "SPC")
 '(evil-want-C-u-scroll t)
 '(flycheck-check-syntax-automatically (quote (save mode-enabled)))
 '(flycheck-disabled-checkers (quote (go-errcheck go-build go-vet go-gofmt gotest))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ivy-highlight-face ((t nil))))
(provide 'init-custom)
