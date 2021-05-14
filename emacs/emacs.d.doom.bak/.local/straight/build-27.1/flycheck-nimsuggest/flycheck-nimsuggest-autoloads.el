;;; flycheck-nimsuggest-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "flycheck-nimsuggest" "flycheck-nimsuggest.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from flycheck-nimsuggest.el

(add-hook 'nimsuggest-mode-hook 'flycheck-nimsuggest-setup)

(autoload 'flycheck-nimsuggest-start "flycheck-nimsuggest" "\
Start nimsuggest’s ‘chk’ method syntax check with CHECKER.

CALLBACK is the status callback passed by Flycheck.

\(fn CHECKER CALLBACK)" nil nil)

(autoload 'flycheck-nimsuggest-setup "flycheck-nimsuggest" "\
Setup flycheck configuration for nimsuggest." nil nil)

;;;***

(provide 'flycheck-nimsuggest-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; flycheck-nimsuggest-autoloads.el ends here
