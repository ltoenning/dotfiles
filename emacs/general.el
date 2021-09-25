(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Place custom block into own file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

;; Disable default startup screen
(setq inhibit-startup-message t)

;; Display scroll/tool/tooltip-bar
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)

;; Line/Column numbers
(column-number-mode) ;; Show column number
(global-display-line-numbers-mode t) ;; Show line numbers

(setq visible-bell nil)

;; Follow symlinks automatically
(setq vc-follow-symlinks t)

; Replace yes-or-no with y-or-n (work-around! should be set for each prompt)
(defalias 'yes-or-no-p 'y-or-n-p)

;; Setup package repos
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			("org" . "https://orgmode.org/elpa/")
			("elpa". "https://elpa.gnu.org/packages/")))



(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(package-initialize)
(unless package-archive-contents
(package-refresh-contents))

(unless (package-installed-p 'use-package)
(package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; Change backup directory
(setq backup-directory-alist `(("." . "~/.emacs_backups")))
