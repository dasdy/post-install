(el-get-bundle! elpy)

(el-get-bundle! jedi)
(el-get-bundle flycheck)
(el-get-bundle py-autopep8)
(el-get-bundle smartparens)

;; jedi:setup to start work
;; C-c C-p to start python
;; C-c C-c to eval buffer
;; C-c C-l to eval file
;; C-M-X to eval function
;; C-c C-r to eval region

;; (setq python-python-command "/usr/bin/python3")
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

(setq jedi:environment-root "jedi")  ; or any other name you like
(setq jedi:environment-virtualenv
      (append python-environment-virtualenv
              '("--python" "/usr/bin/python3")))

(defun python-shell-calculate-command ()
  "python3 -i")

(setq jedi:complete-on-dot t)
(setq jedi:tooltip-method '())
(setq jedi:use-shortcuts t)
(setq jedi:environment-root "jedi")
(defun python-mode-custom-hook ()
  (jedi:setup)
  (jedi:ac-setup)
  (smartparens-mode 1)
  (highlight-indentation-mode 0))

(add-hook 'python-mode-hook 'python-mode-custom-hook)

(provide 'init-python)
