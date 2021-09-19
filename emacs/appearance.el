;; Font
(set-face-attribute 'default nil :font "FiraCodeRetina" :height 140)


;;;;;;;;;;;;;;;;;;;
;;; Doom-themes ;;;
;;;;;;;;;;;;;;;;;;;
(use-package doom-themes)

(load-theme 'doom-opera)

;;;;;;;;;;;;;;;;;;;;;
;;; Doom Modeline ;;;
(use-package doom-modeline
:init (doom-modeline-mode 1))

;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Rainbow delimiters ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package rainbow-delimiters
:hook (prog-mode . rainbow-delimiters-mode))
