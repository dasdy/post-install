(require-package 'web-mode)
(require-package 'skewer-mode)
(require-package 'js2-mode)

(setq web-mode-enable-auto-pairing t)

(add-hook 'js2-mode-hook 'skewer-mode)
(add-hook 'css-mode-hook 'skewer-css-mode)
(add-hook 'html-mode-hook 'skewer-html-mode)

;; M-x run-skewer

;; C-M-x load current tag in html/current rule around the point
;; C-c C-k load current buffer (js)

(provide 'init-webmode)
