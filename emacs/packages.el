;;;;;;;;;;;;;;;;
;;; Which-key ;;;
;;;;;;;;;;;;;;;;;
;; Shows key hints
(use-package which-key
:init (which-key-mode)
:diminish which-key-mode
:config
(setq which-key-idle-delay 0.3))

;;;;;;;;;;;;;
;;; Forge ;;;
;;;;;;;;;;;;;
(use-package forge)

;;;;;;;;;;;;;;
;;; ranger ;;;
;;;;;;;;;;;;;;
(use-package ranger)

;;;;;;;;;;;;;;;;;
;;; dashboard ;;;
;;;;;;;;;;;;;;;;;
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))
(setq dashboard-center-content t)

(use-package lua-mode)
