(require-package 'paredit)

(mapc (lambda (mode)
        (add-hook mode 'enable-paredit-mode))
      '(clojure-mode-hook
        emacs-lisp-mode-hook
        lisp-mode-hook
        cider-repl-mode-hook
        slime-repl-mode-hook
        ))

(global-set-key (kbd "M-[") 'paredit-wrap-square)
(global-set-key (kbd "M-{") 'paredit-wrap-curly)

(global-set-key (kbd "C-c C-M-k") 'backward-kill-sexp)

(provide 'init-paredit)
