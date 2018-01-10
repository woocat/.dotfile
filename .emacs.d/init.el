(setq gc-cons-threshold 100000000)
(setq package-enable-at-startup nil)
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")))
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(defun package--save-selected-packages (&rest opt) nil)
(org-babel-load-file (expand-file-name "~/.emacs.d/org/init.org"))
 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#ecf0f1" "#e74c3c" "#2ecc71" "#f1c40f" "#2492db" "#9b59b6" "#1abc9c" "#2c3e50"])
 '(company-go-gocode-command "gocode")
 '(company-go-show-annotation t)
 '(company-require-match nil)
 '(custom-safe-themes
   (quote
    ("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "cdfc5c44f19211cfff5994221078d7d5549eeb9feda4f595a2fd8ca40467776c" "15348febfa2266c4def59a08ef2846f6032c0797f001d7b9148f30ace0d08bcf" default)))
 '(eldoc-idle-delay 0.9)
 '(evil-want-C-i-jump t)
 '(evil-want-C-u-scroll t)
 '(exec-path
   (quote
    ("/usr/local/sbin" "/usr/local/bin" "/usr/bin" "/bin" "/home/woocat/programming/golang/bin")))
 '(fci-rule-color "#f1c40f")
 '(flycheck-check-syntax-automatically (quote (save mode-enabled)))
 '(flycheck-checker-error-threshold 100)
 '(flycheck-disabled-checkers
   (quote
    (go-gofmt go-vet go-test go-errcheck go-unconvert go-megacheck go-golint)))
 '(flycheck-display-errors-delay 1)
 '(flycheck-highlighting-mode (quote lines))
 '(gofmt-show-errors nil)
 '(hl-paren-background-colors (quote ("#2492db" "#95a5a6" nil)))
 '(hl-paren-colors (quote ("#ecf0f1" "#ecf0f1" "#c0392b")))
 '(org-log-into-drawer t)
 '(sml/active-background-color "#34495e")
 '(sml/active-foreground-color "#ecf0f1")
 '(sml/inactive-background-color "#dfe4ea")
 '(sml/inactive-foreground-color "#34495e")
 '(vc-annotate-background "#ecf0f1")
 '(vc-annotate-color-map
   (quote
    ((30 . "#e74c3c")
     (60 . "#c0392b")
     (90 . "#e67e22")
     (120 . "#d35400")
     (150 . "#f1c40f")
     (180 . "#d98c10")
     (210 . "#2ecc71")
     (240 . "#27ae60")
     (270 . "#1abc9c")
     (300 . "#16a085")
     (330 . "#2492db")
     (360 . "#0a74b9"))))
 '(vc-annotate-very-old-color "#0a74b9"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
