;;; ansible-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "ansible" "ansible.el" (0 0 0 0))
;;; Generated autoloads from ansible.el

(defvar ansible-key-map (make-sparse-keymap) "\
Keymap for Ansible.")

(autoload 'ansible "ansible" "\
Ansible minor mode.

If called interactively, enable Ansible mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'ansible-dict-initialize "ansible" "\
Initialize Ansible auto-complete." nil nil)

;;;***

(provide 'ansible-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ansible-autoloads.el ends here
