(require-package 'auto-complete)
(global-auto-complete-mode)
;; (ac-linum-workaround)

(setq ac-auto-start t)

(global-set-key (kbd "C-<tab>") 'auto-complete)
(global-set-key (kbd "M-n") 'ac-expand)
(global-set-key (kbd "M-p") 'ac-previous)

(require 'haskell-ac)

(provide 'init-auto-complete)