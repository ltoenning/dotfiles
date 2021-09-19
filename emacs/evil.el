;;;;;;;;;;;;
;;; Evil ;;;
;;;;;;;;;;;;
(setq evil-want-keybinding nil)


(use-package evil
:init
(setq evil-want-C-u-scroll t)
:config
(evil-mode 1)
)

;;;;;;;;;;;;;;;;;;;;;;;
;;; evil-collection ;;;
;;;;;;;;;;;;;;;;;;;;;;;

(use-package evil-collection
:after evil
:ensure t
:config
(evil-collection-init))

(lt/leader-keys
"w" '(:ignore t :which-key "window")
"wv" '(evil-window-vsplit :which-key "split vertical")
"ws" '(evil-window-split  :which-key "split horizontally")
"wd" '(evil-window-delete :which-key "delete current")
"wl" '(evil-window-right  :which-key "select right")
"wh" '(evil-window-left   :which-key "select left")
"wk" '(evil-window-up     :which-key "select up")
"wj" '(evil-window-down   :which-key "select down")
)

