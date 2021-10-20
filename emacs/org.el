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


(setq org-roam-v2-ack t)
(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory "~/org/roam")
  :config
  (org-roam-db-autosync-mode))

(lt/leader-keys
  "n" '(:ignore t :which-key "notes")
  "nr" '(:ignore t :which-key "roam")
  "nrf" '(org-roam-node-find :which-key "find node")
  "nri" '(org-roam-node-insert :which-key "insert node")
  "o" '(:ignore t :which-key "org")
  "ol" '(org-latex-preview :which-key "latex preview")
  )

(setq org-format-latex-options (plist-put org-format-latex-options :scale 2.0)) ;; https://stackoverflow.com/a/11272625

(use-package org-roam-ui
  :straight
  (:host github :repo "org-roam/org-roam-ui" :branch "main" :files ("*.el" "out")))
