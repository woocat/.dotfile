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
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "9a155066ec746201156bb39f7518c1828a73d67742e11271e4f24b7b178c4710" "43c1a8090ed19ab3c0b1490ce412f78f157d69a29828aa977dae941b994b4147" "b571f92c9bfaf4a28cb64ae4b4cdbda95241cd62cf07d942be44dc8f46c491f4" "51e228ffd6c4fff9b5168b31d5927c27734e82ec61f414970fc6bcce23bc140d" "8ed752276957903a270c797c4ab52931199806ccd9f0c3bb77f6f4b9e71b9272" default)))
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
 )
