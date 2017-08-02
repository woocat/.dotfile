;; turn off display toll bar, scroll bar and menu bar
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
;; set default font
(set-default-font "Inconsolata 15" nil t)
;; turn off start display
(setq inhibit-splash-screen t)
(setq initial-frame-alist (quote ((fullscreen . maximized))))
;; loat-theme
(load-theme 'monokai t)
(provide 'init-ui)
