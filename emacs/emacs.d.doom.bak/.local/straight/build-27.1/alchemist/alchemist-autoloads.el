;;; alchemist-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "alchemist" "alchemist.el" (0 0 0 0))
;;; Generated autoloads from alchemist.el

(autoload 'alchemist-mode "alchemist" "\
Toggle alchemist mode.

If called interactively, enable alchemist mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

Key bindings:
\\{alchemist-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "alchemist-iex" "alchemist-iex.el" (0 0 0 0))
;;; Generated autoloads from alchemist-iex.el

(defalias 'run-elixir 'alchemist-iex-run)

(autoload 'alchemist-iex-run "alchemist-iex" "\
Start an IEx process.
Show the IEx buffer if an IEx process is already run.

\(fn &optional ARG)" t nil)

(autoload 'alchemist-iex-project-run "alchemist-iex" "\
Start an IEx process with mix 'iex -S mix' in the
context of an Elixir project.
Show the IEx buffer if an IEx process is already run." t nil)

;;;***

;;;### (autoloads nil "alchemist-phoenix" "alchemist-phoenix.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from alchemist-phoenix.el

(autoload 'alchemist-phoenix-project-p "alchemist-phoenix" "\
Return non-nil if `default-directory' is inside a Phoenix project." nil nil)

(autoload 'alchemist-phoenix-mode "alchemist-phoenix" "\
Minor mode for Elixir Phoenix web framework projects.

If called interactively, enable Alchemist-Phoenix mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

The following commands are available:

\\{alchemist-phoenix-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'alchemist-phoenix-enable-mode "alchemist-phoenix" nil nil nil)

(dolist (hook '(alchemist-mode-hook)) (add-hook hook 'alchemist-phoenix-enable-mode))

;;;***

;;;### (autoloads nil "alchemist-refcard" "alchemist-refcard.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from alchemist-refcard.el

(autoload 'alchemist-refcard "alchemist-refcard" "\
Generate an Alchemist refcard of all the features." t nil)

;;;***

;;;### (autoloads nil "alchemist-test-mode" "alchemist-test-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from alchemist-test-mode.el

(autoload 'alchemist-test-mode "alchemist-test-mode" "\
Minor mode for Elixir ExUnit files.

If called interactively, enable Alchemist-Test mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

The following commands are available:

\\{alchemist-test-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'alchemist-test-enable-mode "alchemist-test-mode" nil nil nil)

(dolist (hook '(alchemist-mode-hook)) (add-hook hook 'alchemist-test-enable-mode))

;;;***

;;;### (autoloads nil nil ("alchemist-company.el" "alchemist-compile.el"
;;;;;;  "alchemist-complete.el" "alchemist-eval.el" "alchemist-execute.el"
;;;;;;  "alchemist-file.el" "alchemist-goto.el" "alchemist-help.el"
;;;;;;  "alchemist-hex.el" "alchemist-hooks.el" "alchemist-info.el"
;;;;;;  "alchemist-interact.el" "alchemist-key.el" "alchemist-macroexpand.el"
;;;;;;  "alchemist-message.el" "alchemist-mix.el" "alchemist-project.el"
;;;;;;  "alchemist-report.el" "alchemist-scope.el" "alchemist-server.el"
;;;;;;  "alchemist-utils.el") (0 0 0 0))

;;;***

(provide 'alchemist-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; alchemist-autoloads.el ends here
