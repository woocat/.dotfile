(setq make-backup-files nil)
(setq auto-save-default nil)
(setq auto-save-list-file-prefix nil)
(global-auto-revert-mode t)
(fset 'yes-or-nop 'y-or-n-p)
(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'always)
(put 'dired-find-alternate-file 'disabled nil)
(with-eval-after-load 'dired
(define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))
(setq ediff-split-window-function 'split-window-horizontally)
(require 'dired-x)
(provide 'init-better-defaults)