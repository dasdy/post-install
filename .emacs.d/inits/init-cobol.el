
;;(el-get-emacswiki-refresh)
;;(el-get-bundle 'cobol-mode :type emacswiki)
;;(el-get-emacswiki-install 'cobol-mode)

(add-hook 'cobol-mode-hook (lambda () (abbrev-mode -1)))

(setq auto-mode-alist
      (append '(("\\.cbl$" . cobol-mode)
                ("\\.CBL$" . cobol-mode)
                ("\\.COB$" . cobol-mode)
                ("\\.cob$" . cobol-mode)
                ("\\.CPY$" . cobol-mode)
                ("\\.cpy$" . cobol-mode))
              auto-mode-alist))

(provide 'init-cobol)
