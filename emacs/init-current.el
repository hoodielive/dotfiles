:
;; Cleanup Defaults
(setq inhibit-startup-screen t)

;; Make UI minimal.
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode -1)
(menu-bar-mode -1)

;; Package Management 
(setq package-enable-at-startup nil)

;; Bootstrap straight.el
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

;; Install use-package to interface with straight.el
(straight-use-package
 '(evil :type git :flavor melpa :files (:defaults "doc/build/texinfo/evil.texi" (:exclude "evil-test-helpers.el") "evil-pkg.el") :host github :repo "emacs-evil/evil"))
(evil-mode)

(straight-use-package
 '(doom-themes :type git :flavor melpa :files (:defaults "themes/*.el" "doom-themes-pkg.el") :host github :repo "hlissner/emacs-doom-themes"))
(load-theme 'doom-peacock t)

(straight-use-package
 '(org :type git :repo "https://git.savannah.gnu.org/git/emacs/org-mode.git" :local-repo "org" :depth full :pre-build (straight-recipes-org-elpa--build) :build (:not autoloads) :files (:defaults "lisp/*.el" ("etc/styles/" "etc/styles/*"))))
(org-mode)

(straight-use-package
 '(org-bullets :type git :flavor melpa :host github :repo "integral-dw/org-bullets"))
(org-bullets-mode)

(straight-use-package
 '(org-roam :type git :flavor melpa :files (:defaults "extensions/*" "org-roam-pkg.el") :host github :repo "org-roam/org-roam"))

(straight-use-package
 '(vertico :type git :host github :repo "emacs-straight/vertico" :files ("*" (:exclude ".git"))))
(vertico-mode)
(setq vertico-scroll-margin 0)
(setq vertico-count 20)
(setq vertico-resize t)
(setq vertico-cycle t)

(straight-use-package
 '(orderless :type git :flavor melpa :host github :repo "oantolin/orderless"))
(setq completion-styles '(orderless)
      completion-category-defaults nil
      completion-category-overrides '((file (styles partial-completion))))

(straight-use-package
 '(bind-key :type git :flavor melpa :files ("bind-key.el" "bind-key-pkg.el") :host github :repo "jwiegley/use-package"))

(straight-use-package
 '(counsel :type git :flavor melpa :files ("counsel.el" "counsel-pkg.el") :host github :repo "abo-abo/swiper"))
(require 'ivy)
(ivy-mode +1)

(counsel-mode)
(bind-keys
 ("C-h   f" . counsel-describe-function)
 ("C-h   l" . counsel-load-library)
 ("C-h   v" . counsel-describe-variable)
 ("C-h C-l" . counsel-find-library)
 ("C-x C-f" . counsel-find-file)
 ("M-x    " . counsel-M-x))

(setq ivy-use-virtual-buffer t
      ivy-count-format "%d %d ")

