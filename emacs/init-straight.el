(setq inhibit-startup-screen t)

;; Make UI as minimal as possible.
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode -1)
(menu-bar-mode -1)

;; We only want to use straight.el.
;; Does not look like its going to be possible.
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

;; I want to drink from the fire hose so put me on the dev branch.
(setq straight-repository-branch 'develop)
(setq package-enable-at-startup nil)

;; Use straight.el for use-package expressions.
(straight-use-package 'use-package)

;; Deal with trash. 
(setq user-emacs-directory (expand-file-name "~/.cache/emacs/")
      url-history-file (expand-file-name "url/history" user-emacs-directory))

;; Keep custom settings in a temp dir. 
(setq custom-file
      (if (boundp 'server-socket-dir)
         (expand-file-name "custom.el" server-socket-dir)
        (expand-file-name (format "emacs-custom-%s.el" (user-uid)) temporary-file-directory)))
(load custom-file t)

;; Keyboard Bindings. 
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Evil mode. 
(straight-use-package '(evil :host github
                             :repo "emacs-evil/evil"))

;; Evil collections.
(straight-use-package '(evil-collection :type git
 	                                :host github
					:repo "emacs-evil/evil-collection"))

(straight-use-package '(evil-escape :type git
                                    :host github
                                    :repo "syl20bnr/evil-escape"))

;; Enable evil modes and configure escape.
(evil-mode)
(evil-escape-mode)
(setq-default evil-escape-key-sequence "jj")
(setq-default evil-escape-delay 0.2)

;; Sane undo.
(straight-use-package 'undo-tree)
(undo-tree-mode)

;; Doom-Themes
(straight-use-package '(emacs-doom-themes :type git
					  :host github
					  :repo "hlissner/emacs-doom-themes"))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(setq emacs-doom-themes t)

;; Packages.
(straight-use-package 'use-package)
(straight-use-package 'no-littering)
(straight-use-package 'org)
(straight-use-package 'org-roam)
