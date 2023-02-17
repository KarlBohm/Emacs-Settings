;;; init-programming.el --- Common extensions for programming
;;; Commentary:

;;; Code:

;; use projectile.el to manage projeccts
(use-package projectile
  :ensure t
  :bind (("C-c p" . projectile-command-map))
  :config
  (setq projectile-mode-line "Projectile")
  (setq projectile-track-known-projects-automatically nil)
  (setq projectile-project-search-path '("~/" "~/code/" "~/Documents/SoftwareFoundation/")))

(use-package counsel-projectile
  :ensure t
  :after (projectile)
  :init (counsel-projectile-mode))

;; magit for git
(use-package magit
  :ensure t)

(provide 'init-prog)

;;; init-programming.el ends here
