(el-get-bundle 'go-mode)

(el-get-bundle 'exec-path-from-shell)
(el-get-bundle 'go-autocomplete)

;;prerequisites to work:
;;GOPATH set to correct value
;;'go' binary in your PATH
;;also run:
;; go get golang.org/x/tools/cmd/...
;; go get github.com/rogpeppe/godef
;; go get -u github.com/nsf/gocode
;; go get golang.org/x/tools/cmd/goimports

(add-to-list 'exec-path (expand-file-name (concat (getenv "GOPATH") "/bin")))

(defun my-go-mode-hook ()
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook 'gofmt-before-save)
  (local-set-key (kbd "M-.") 'godef-jump)
  (auto-complete-mode 1)
  (yas-minor-mode 1)
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v && go test -v && go vet")))

(add-hook 'go-mode-hook 'my-go-mode-hook)
(with-eval-after-load 'go-mode
  (require 'go-autocomplete))
(provide 'init-go)
