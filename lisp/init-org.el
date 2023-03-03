;;; init-org.el --- Configurations for org-mode -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

;; From org-mode manual
(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

(provide 'init-org)
;;; init-org.el ends here
