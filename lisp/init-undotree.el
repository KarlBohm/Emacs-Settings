;;; init-undotree.el --- Enhance the usability of undo ---  -*- lexical-binding: t -*-
;;; Commentary:


;;; Code:

(use-package undo-tree
  :ensure t
  :init (global-undo-tree-mode))

(provide 'init-undotree)

;;; init-undotree.el ends here
