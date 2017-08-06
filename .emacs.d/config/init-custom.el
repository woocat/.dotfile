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
 '(flycheck-check-syntax-automatically (quote (save new-line mode-enabled)))
 '(flycheck-checker-error-threshold 20)
 '(flycheck-disabled-checkers
   (quote
    (go-gofmt go-vet go-test go-errcheck go-unconvert go-megacheck)))
 '(flycheck-go-golint-executable "/home/woocat/go/bin/golint"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flycheck-error ((t (:underline (:color "#F92672" :style wave)))))
 '(flycheck-info ((t (:underline (:color "#66D9EF" :style wave)))))
 '(flycheck-warning ((t (:underline (:color "#FD971F" :style wave)))))
 '(ivy-highlight-face ((t nil))))
(provide 'init-custom)
