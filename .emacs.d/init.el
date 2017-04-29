
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(let ((default-directory user-emacs-directory))
  (normal-top-level-add-subdirs-to-load-path))

(setq custom-file "~/.emacs.d/custom.el")

(require 'init-packages)

;; Save point position between sessions
(require-package 'saveplace)
(setq-default save-place t)
(setq save-place-file (expand-file-name ".places" user-emacs-directory))
(global-subword-mode 1)
; Write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; Make backups of files, even when they're in version control
(setq vc-make-backup-files t)

(setq-default indent-tabs-mode nil)

(setq scroll-preserve-screen-position t)
(setq undo-limit 90000000)


;; (modify-syntax-entry ?- "w" emacs-lisp-mode-syntax-table)

(package-install-if-not-present 'magit)

(setq mouse-wheel-scroll-amount '(3))
(setq mouse-wheel-progressive-speed nil)

(require 'init-shortcuts)
(require 'init-visual)
(require 'init-mode-line)
(require 'init-auto-complete)
(require 'init-clojure)
(require 'init-common-lisp)
(require 'init-paredit)
(require 'init-ido)
(require 'init-haskell)
(require 'init-webmode)
(require 'init-go)
;; (require 'init-cobol)
(require 'init-python)

(load custom-file 'noerror)
;; (el-get 'sync)
(provide 'init)
