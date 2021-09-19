;;;;;;;;;;;
;;; Ivy ;;;
;;;;;;;;;;;

(use-package ivy
:delight
:bind (:map ivy-minibuffer-map
	("C-j" . ivy-next-line)
	("C-k" . ivy-previous-line))
:config
(ivy-mode 1))

(lt/leader-keys
  "ss" '(swiper :which-key "search in file"))
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

;;;;;;;;;;;;;;
;;;; smex ;;;;
;;;;;;;;;;;;;;
(use-package smex)
