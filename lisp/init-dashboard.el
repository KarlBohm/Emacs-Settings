;;; init-dashboard -- Setting welcome screen
;;; Commentary:

;;; Code:
(use-package dashboard
  :ensure t
  :config
  ;; Set the title
  (setq dashboard-banner-logo-title "上升的一切必将汇合")
  (setq dashboard-projects-backend 'projectile)
  (setq dashboard-items '((recents . 5)
			  (projects . 5)
			  (agenda . 5)))
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t)
  (dashboard-setup-startup-hook))

(provide 'init-dashboard)

;;; init-dashboard.el ends here
