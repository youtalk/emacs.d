(menu-bar-mode -1)
(when window-system
  (tool-bar-mode -1)
  (set-scroll-bar-mode 'right))

(load-theme 'misterioso)
(setq default-background (face-attribute 'default :background))
;; (unless window-system
;;   (setq frame-background-mode (frame-parameter nil 'background-mode))
;;   (set-face-background 'default "unspecified-bg"))
(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))
(add-hook 'window-setup-hook 'on-after-init)

(if window-system
  (set-frame-font "Source Han Code JP")
