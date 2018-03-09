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
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "cdfc5c44f19211cfff5994221078d7d5549eeb9feda4f595a2fd8ca40467776c" "15348febfa2266c4def59a08ef2846f6032c0797f001d7b9148f30ace0d08bcf" default)))
 '(eldoc-idle-delay 0.9)
 '(evil-want-C-i-jump t)
 '(evil-want-C-u-scroll t)
 '(exec-path
   (quote
    ("/usr/local/sbin" "/usr/local/bin" "/usr/bin" "/bin" "/home/woocat/programming/go/bin")))
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
 '(ivy-count-format "")
 '(org-agenda-files
   (quote
    ("/home/woocat/workspace/org/gtd.org" "/home/woocat/workspace/org/inbox.org" "/home/woocat/workspace/org/tickler.org" "/home/woocat/workspace/org/work.org")))
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
 '(dired-directory ((t (:background "white" :foreground "blue" :weight bold))))
 '(dired-header ((t (:background "white" :foreground "blue" :weight bold))))
 '(mode-line ((t (:background "#335EA8" :foreground "#85CEEB" :box nil :overline "#eee8d5" :underline "#cccec4"))))
 '(mode-line-highlight ((t nil)))
 '(mode-line-inactive ((t (:background "#9B9C97" :foreground "#F0F0EF" :box nil :overline "#eee8d5" :underline "#cccec4")))))
