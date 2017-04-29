(require 'package)

(package-initialize)


(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))
(add-to-list 'package-archives
	     '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

;; (add-to-list 'load-path "~/.emacs.d/el-get/el-get")

;; (unless (require 'el-get nil 'noerror)
;;   (require 'package)
;;   (add-to-list 'package-archives
;;                '("melpa" . "http://melpa.org/packages/"))
;;   (package-refresh-contents)
;;   (package-initialize)
;;   (package-install 'el-get)
;;   (require 'el-get))

;; (add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")



(defun require-package (feature-symbol &optional package-symbol)
  (let ((package-to-install (or package-symbol
				feature-symbol)))
    (package-install-if-not-present package-to-install)
    (require feature-symbol)))

(defun package-install-if-not-present (package-symbol)
  (unless (package-installed-p package-symbol)
    (package-refresh-contents)
    (package-install package-symbol)))

(provide 'init-packages)
