;; Straight Bootstrap 

(setq straight-repository-branch "develop" 
      straight-enable-use-package-integration nil)

(defvar bootstrap-version)
(let ((bootstrap-file
        (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
      (url-retrieve-synchronously
        "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
        'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Features 
(add-to-list 'load-path "~/egun/features")

;; Use what you want.
(require 'egun-core)
(require 'egun-keybindings)
(require 'egun-org)
