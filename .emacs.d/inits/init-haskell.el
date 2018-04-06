(el-get-bundle 'haskell-mode)
(el-get-bundle 'ghc-mod)
(el-get-bundle! 'company-ghc)

;; (add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)

;;(add-hook 'haskell-mode-hook 'turn-on-hi2)
;;(add-hook 'haskell-mode-hook #'hindent-mode)

(eval-after-load 'haskell-mode
          '(define-key haskell-mode-map [f8] 'haskell-navigate-imports))


(let ((my-cabal-path (expand-file-name "~/.cabal/bin")))
  (setenv "PATH" (concat my-cabal-path path-separator (getenv "PATH")))
  (add-to-list 'exec-path my-cabal-path))
(custom-set-variables '(haskell-tags-on-save t))

(add-to-list 'load-path "~/.cabal/share/x86_64-linux-ghc-7.10.2/ghc-mod-5.3.0.0")

(custom-set-variables
  '(haskell-process-suggest-remove-import-lines t)
  '(haskell-process-auto-import-loaded-modules t)
  '(haskell-process-log t))
(eval-after-load 'haskell-mode
  '(progn
     (define-key haskell-mode-map (kbd "C-c C-l") #'haskell-process-load-or-reload)
     (define-key haskell-mode-map (kbd "C-c C-z") #'haskell-interactive-switch)
     (define-key haskell-mode-map (kbd "C-c C-n C-t") #'haskell-process-do-type)
     (define-key haskell-mode-map (kbd "C-c C-n C-i") #'haskell-process-do-info)
     (define-key haskell-mode-map (kbd "C-c C-n C-c") #'haskell-process-cabal-build)
     (define-key haskell-mode-map (kbd "C-c C-n c") 'haskell-process-cabal)
     (define-key haskell-mode-map (kbd "SPC") 'haskell-mode-contextual-space)))
(eval-after-load 'haskell-cabal
  '(progn
     (define-key haskell-cabal-mode-map (kbd "C-c C-z") #'haskell-interactive-switch)
     (define-key haskell-cabal-mode-map (kbd "C-c C-k") #'haskell-interactive-mode-clear)
     (define-key haskell-cabal-mode-map (kbd "C-c C-c") #'haskell-process-cabal-build)
     (define-key haskell-cabal-mode-map (kbd "C-c c") 'haskell-process-cabal)))

(eval-after-load 'haskell-mode
  '(define-key haskell-mode-map (kbd "C-c C-o") #'haskell-compile))
(eval-after-load 'haskell-cabal
  '(define-key haskell-cabal-mode-map (kbd "C-c C-o") #'haskell-compile))

(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook #'(lambda () (ghc-init)))

(custom-set-variables '(haskell-process-type 'cabal-repl))


(el-get-bundle 'company)
(add-hook 'haskell-mode-hook 'global-company-mode)

(add-to-list 'company-backends 'company-ghc)
(custom-set-variables '(company-ghc-show-info t))


(provide 'init-haskell)
