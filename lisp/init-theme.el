;;; init-theme.el --- Sets the themes for emacs  -*- lexical-binding: t -*-
;;; Commentary:

;; System maintained configuration, stored at ~/.emacs.d/custom.el, are also loaded here.

;;; Code:

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;(load-theme 'dracula t)

(use-package all-the-icons
  :ensure t
  :config
  (add-to-list `all-the-icons-extension-icon-alist `("v" all-the-icons-fileicon "coq"  :heightt 1.0 :v-adjust -0.2 :face all-the-icons-reds)))

(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-tokyo-night t)
  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ; (doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-colors"
	) ; use "doom-colors" for less minimal icon theme
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

(custom-set-faces
 `(font-lock-comment-face ((t (:slant ,'italic)))))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :config (setq doom-modeline-time t))

(provide 'init-theme)

;;; init-theme.el ends here
