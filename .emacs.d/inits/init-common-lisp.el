(require-package 'slime)
(require-package 'ac-slime)

(require 'slime-autoloads)
(setq slime-contribs '(slime-fancy))
(slime-setup slime-contribs)

(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
;; (eval-after-load "auto-complete"
;;    '(add-to-list 'ac-modes 'slime-repl-mode))

;; set lisp interpreter
(setq inferior-lisp-program "sbcl")

(modify-syntax-entry ?- "w" lisp-mode-syntax-table)

;;(add-hook 'lisp-mode-hook 'rainbow-delimiters-mode)

(defun json-format ()
  (interactive)
  (save-excursion
    (shell-command-on-region (mark) (point)
			     "python -m json.tool"
			     (buffer-name) t)))

(provide 'init-common-lisp)
