;;;;;;;;;;;;;
;;; Magit ;;;
;;;;;;;;;;;;;
(use-package magit)
(add-hook 'git-commit-mode-hook 'evil-insert-state)
(setq magit-display-buffer-function 'magit-display-buffer-fullframe-status-v1)


(use-package git-gutter)
(global-git-gutter-mode +1)
(custom-set-variables
 '(git-gutter:modified-sign " ")
 '(git-gutter:added-sign " ")
 '(git-gutter:deleted-sign " "))
(set-face-background 'git-gutter:modified "yellow")
(set-face-background 'git-gutter:added "green")
(set-face-background 'git-gutter:deleted "red")
