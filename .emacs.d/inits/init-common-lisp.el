;; (el-get-bundle joaotavora/sly)
(el-get-bundle slime)
(el-get-bundle ac-slime)


(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'slime-repl-mode))

;; set lisp interpreter
(setq inferior-lisp-program "sbcl")

;; (require 'sly-autoloads)
(require 'slime-autoloads)

(setq slime-contribs '(slime-fancy))
(slime-setup slime-contribs)

(modify-syntax-entry ?- "w" lisp-mode-syntax-table)

(defun json-format ()
  (interactive)
  (save-excursion
    (shell-command-on-region (mark) (point)
			     "python -m json.tool"
			     (buffer-name) t)))

(provide 'init-common-lisp)
