;;; dante-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "dante" "dante.el" (0 0 0 0))
;;; Generated autoloads from dante.el

(autoload 'dante-mode "dante" "\
Minor mode for Dante.

If called interactively, enable Dante mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

`dante-mode' takes one optional (prefix) argument.
Interactively with no prefix argument, it toggles dante.
A prefix argument enables dante if the argument is positive,
and disables it otherwise.

When called from Lisp, the `dante-mode' toggles dante if the
argument is `toggle', disables dante if the argument is a
non-positive integer, and enables dante otherwise (including
if the argument is omitted or nil or a positive integer).

\\{dante-mode-map}

\(fn &optional ARG)" t nil)

;;;***

(provide 'dante-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; dante-autoloads.el ends here
