(el-get-bundle! 'clojure-mode)

(define-clojure-indent
  (defroutes 'defun)
  (GET 2)
  (POST 2)
  (PUT 2)
  (DELETE 2)
  (HEAD 2)
  (ANY 2)
  (context 2))

(require 'cl)
(defun bk-kill-buffers (regexp)
  "Kill buffers matching REGEXP without asking for confirmation."
  (interactive "sKill buffers matching this regular expression: ")
  (cl-flet ((kill-buffer-ask (buffer) (kill-buffer buffer)))
    (kill-matching-buffers regexp)))

(defun kill-cider-buffers ()
  (interactive)
  (bk-kill-buffers "cider")
  (bk-kill-buffers "nrepl*"))

(el-get-bundle cider)
(el-get-bundle auto-complete)
(el-get-bundle ac-cider)
(el-get-bundle projectile)
(el-get-bundle clj-refactor)
;(el-get-bundle 'kibit-helper)

(add-hook 'cider-mode-hook 'ac-flyspell-workaround)
(add-hook 'cider-mode-hook 'ac-cider-setup)
(add-hook 'cider-mode-hook 'paredit-mode)
(add-hook 'cider-repl-mode-hook 'ac-cider-setup)
(add-hook 'cider-repl-mode-hook 'paredit-mode)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'cider-mode))
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'cider-repl-mode))

(setq cider-show-error-buffer nil)
(setq nrepl-log-messages t)

(add-hook 'cider-mode-hook 'eldoc-mode)

(el-get-bundle projectile)
(add-hook 'clojure-mode-hook 'projectile-mode)

(modify-syntax-entry ?- "w" clojure-mode-syntax-table)


(setq cljr-favor-prefix-notation nil)
(setq cljr-favor-private-functions nil)

(cljr-add-keybindings-with-modifier "C-s-")
(define-key clj-refactor-map (kbd "C-x C-r") 'cljr-rename-file)


(define-key clojure-mode-map (kbd "M-s-d") 'clj-duplicate-top-level-form)

(add-to-list 'cljr-project-clean-functions 'cleanup-buffer)

(define-key clojure-mode-map (kbd "C->") 'cljr-thread)
(define-key clojure-mode-map (kbd "C-<") 'cljr-unwind)

(define-key clojure-mode-map (kbd "s-j") 'clj-jump-to-other-file)

(defun clj-hippie-expand-no-case-fold ()
  (interactive)
  (let ((old-syntax (char-to-string (char-syntax ?/))))
    (modify-syntax-entry ?/ " ")
    (hippie-expand-no-case-fold)
    (modify-syntax-entry ?/ old-syntax)))

(define-key clojure-mode-map (kbd "C-.") 'clj-hippie-expand-no-case-fold)

(provide 'init-clojure)
