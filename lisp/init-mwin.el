;;; init-mwin.el --- Better usability of C-a and C-e -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(use-package mwim
  :ensure t
  :bind
  ("C-a" . mwim-beginning-of-code-or-line)
  ("C-e" . mwim-end-of-code-or-line))

(provide 'init-mwin)

;;; init-mwin.el ends here
