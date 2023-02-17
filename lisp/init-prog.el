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
  (setq projectile-project-search-path '("~/" "~/code/" "~/Documents/SoftwareFoundation/"))
  (setq projectile-generic-command "fd . -0 --type f --color=never") ; for fd < v8.3.0
  )

(use-package counsel-projectile
  :ensure t
  :after (projectile)
  :init (counsel-projectile-mode))

;; magit for git
(use-package magit
  :ensure t)

(use-package treemacs
  :ensure t
  :defer t
  :config
  (treemacs-tag-follow-mode)
  :bind
  (:map global-map
        ("M-0"       . treemacs-select-window)
        ("C-x t 1"   . treemacs-delete-other-windows)
        ("C-x t t"   . treemacs)
        ("C-x t B"   . treemacs-bookmark)
        ;; ("C-x t C-t" . treemacs-find-file)
        ("C-x t M-t" . treemacs-find-tag))
  (:map treemacs-mode-map
	("/" . treemacs-advanced-helpful-hydra)))

(use-package treemacs-projectile
  :ensure t
  :after (treemacs projectile))

(provide 'init-prog)

;;; init-programming.el ends here
