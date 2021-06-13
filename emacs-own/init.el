(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("f7fed1aadf1967523c120c4c82ea48442a51ac65074ba544a5aefc5af490893b" default))
 '(package-selected-packages
   '(dashboard ranger org-bullets forge magit counsel-projectile projectile evil-collection evil general doom-themes which-key rainbow-delimiters doom-modeline counsel ivy-rich ivy delight use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;;;;;;;;;;;;;;;;;;;;;;;;;
;; General settings ;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Disable default startup screen
(setq inhibit-startup-message t)

;; Display scroll/tool/tooltip-bar
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)

;; Show visible bell insted of beeping
(setq visible-bell t)

;; Follow symlinks automatically
(setq vc-follow-symlinks t)

; Replace yes-or-no with y-or-n (work-around! should be set for each prompt)
(defalias 'yes-or-no-p 'y-or-n-p)

;;;;;;;;;;;;;;;;;;;;;;;
;;;;; Apperance ;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;

;; Font
(set-face-attribute 'default nil :font "FiraCodeRetina" :height 140)

;; Line/Column numbers
(column-number-mode) ;; Show column number
(global-display-line-numbers-mode t) ;; Show line numbers

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; General keybindings ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)


;;;;;;;;;;;;;;;;;;;;;;;
;;;;; Packages  ;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;

;; Setup package repos
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			("org" . "https://orgmode.org/elpa/")
			("elpa". "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
(package-refresh-contents))

(unless (package-installed-p 'use-package)
(package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)


;;;;;;;;;;;;;;;
;;; Delight ;;;
;;;;;;;;;;;;;;;
;; Package for hiding minor modes
(use-package delight)


;;;;;;;;;;;
;;; Ivy ;;;
;;;;;;;;;;;

(use-package ivy
:delight
:bind (("C-s" . swiper)
	:map ivy-minibuffer-map
	("C-j" . ivy-next-line)
	("C-k" . ivy-previous-line))
:config
(ivy-mode 1))

;;;;;;;;;;;;;;;;
;;; Ivy-rich ;;;
;;;;;;;;;;;;;;;;
;; Show more information on ivy
(use-package ivy-rich
:init
(ivy-rich-mode 1))

;;;;;;;;;;;;;;;
;;; Counsel ;;;
;;;;;;;;;;;;;;;

(use-package counsel
:bind (("M-x" . counsel-M-x)
	("C-x C-f" . counsel-find-file))
:config (setq ivy-initial-inputs-alist nil)) ;; dont start searches with 

;;;;;;;;;;;;;;
;;; Swiper ;;;
;;;;;;;;;;;;;;
(use-package swiper)

;;;;;;;;;;;;;;;;;;;;;
;;; Doom Modeline ;;;
(use-package doom-modeline
:init (doom-modeline-mode 1))

;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Rainbow delimiters ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package rainbow-delimiters
:hook (prog-mode . rainbow-delimiters-mode))

;;;;;;;;;;;;;;;;;
;;; Which-key ;;;
;;;;;;;;;;;;;;;;;
;; Shows key hints which operations are available
(use-package which-key
:init (which-key-mode)
:diminish which-key-mode
:config
(setq which-key-idle-delay 0.3))


;;;;;;;;;;;;;;;;;;;
;;; Doom-themes ;;;
;;;;;;;;;;;;;;;;;;;
(use-package doom-themes)

(load-theme 'doom-opera)


;;;;;
;; Example for keybinding only for emacs-list-mode
(define-key emacs-lisp-mode-map (kbd "C-x M-t") 'counsel-load-theme)

;;;;;;;;;;;;;;;
;;; general ;;;
;;;;;;;;;;;;;;;

;; Simple general keyboard bindings
(use-package general
:config
(general-create-definer lt/leader-keys
:keymaps '(normal insert visual emacs)
:prefix "SPC"
:global-prefix "C-SPC")
(lt/leader-keys
"f" '(:ignore t :which-key "files")
"p" '(:ignore t :which-key "projectile")
"b" '(:ignore t :which-key "buffers")
"ff" '(counsel-find-file :which-key "find file")
"fs" '(save-buffer :which-key "save file")
"bb" '(counsel-switch-buffer :which-key "chage buffer")
"pp" '(counsel-projectile-switch-project :which-key "change project")
"pf" '(counsel-projectile-find-file :which-key "find find")
"bd" '(kill-this-buffer :which-key "kill buffer")
"ps" '(counsel-projectile-rg :which-key "search")
"qq" '(save-buffers-kill-terminal :which-key "quit emacs")))

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

;; More commands for projectile SPC p p -> Alt o
(use-package counsel-projectile
:config (counsel-projectile-mode))

;;;;;;;;;;;;;
;;; Magit ;;;
;;;;;;;;;;;;;
(use-package magit)

;;;;;;;;;;;;;
;;; Forge ;;;
;;;;;;;;;;;;;
(use-package forge)

;;;;;;;;;;;
;;; org ;;;
;;;;;;;;;;;
(use-package org
  :config
  (setq org-ellipsis " ." org-hide-emphasis-markers t))

;;;;;;;;;;;;;;;;;;;
;;; org-bullets ;;;
;;;;;;;;;;;;;;;;;;;
;; TODO Set custom 
(use-package org-bullets
  :after org
  :hook (org-mode . org-bullets-mode))

;;;;;;;;;;;;;;;;;
;;; org-tempo ;;;
;;;;;;;;;;;;;;;;;
(require 'org-tempo)

(add-to-list 'org-structure-template-alist '("cpp" . "src cpp"))
(add-to-list 'org-structure-template-alist '("el" . "src emacs-lisp"))

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
