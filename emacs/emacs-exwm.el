


(defun efs/exwm-update-class ()
  (exwm-workspace-rename-buffer exwm-class-name))

(use-package exwm
  :config
  ;; Set the default number of workspaces to 5; defaults to 1
  (setq exwm-workspace-number 5)
  (exwm-enable))
