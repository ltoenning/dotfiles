;;;;;;;;;;;;;;;
;;; general ;;;
;;;;;;;;;;;;;;;

;; General keyboard bindings
(use-package general
  :init
  (setq general-override-states '(insert
                                  emacs
                                  hybrid
                                  normal
                                  visual
                                  motion
                                  operator
                                  replace))
:config
(general-create-definer lt/leader-keys
:states '(normal visual motion)
:keymaps 'override
:prefix "SPC"
:global-prefix "C-SPC")
(lt/leader-keys
"f" '(:ignore t :which-key "files")
"b" '(:ignore t :which-key "buffers")
"g" '(:ignore t :which-key "git")
"h" '(:ignore t :which-key "help")
"s" '(:ignore t :which-key "search")
"hf" '(describe-function :which-key "describe function")
"ff" '(counsel-find-file :which-key "find file")
"fr" '(counsel-recentf :which-key "recent files")
"fs" '(save-buffer :which-key "save file")
"bb" '(ivy-switch-buffer :which-key "change buffer")
"bd" '(kill-this-buffer :which-key "kill buffer")
"ps" '(counsel-projectile-rg :which-key "search")
"gg" '(magit-status :which-key "show magit")
"qq" '(save-buffers-kill-terminal :which-key "quit emacs")))
