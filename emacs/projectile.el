;;;;;;;;;;;;;;;;;;
;;; Projectile ;;;
;;;;;;;;;;;;;;;;;;

(use-package projectile
:diminish projectile-mode
:config (projectile-mode)
:bind-keymap
("C-c p" . projectile-command-map)
:init
(when (file-directory-p "~/projects")
(setq projectile-project-search-path '("~/projects"))
(setq projectile-project-search-path '("~/projects/Flightgear")))
(setq projectile-switch-project-action #'projectile-dired))

;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Counsel-projectile ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package counsel-projectile
:config (counsel-projectile-mode))

(lt/leader-keys
"p" '(:ignore t :which-key "projectile")
"pp" '(counsel-projectile-switch-project :which-key "change project")
"pf" '(counsel-projectile-find-file :which-key "find find")
"ps" '(counsel-projectile-grep :which-key "grep"))
