(global-set-key (kbd "<f2>") 'open-my-init-file)
(global-set-key (kbd "C-w") 'backward-kill-word)
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous)
  )
(define-key evil-motion-state-map (kbd "C-e") nil)
(define-key evil-motion-state-map (kbd "C-y") nil)
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
(evil-leader/set-key
  "bb" 'ivy-switch-buffer
  "SPC" 'counsel-M-x
  "ff" 'counsel-find-file
  "pf" 'counsel-projectile-find-file
  "pp" 'counsel-projectile-switch-project
  "pb" 'counsel-projectile-switch-to-buffer
  "sp" 'counsel-projectile-ag
  "fr" 'counsel-recentf
  "jd" 'godef-jump
  )
(provide 'init-keybindings)
