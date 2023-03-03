;;; init-proof -- Set proof general
;;; Commentary

;;; Code:

(use-package proof-general
  :ensure t
  :config
  (setq coq-compile-before-require t))

(provide 'init-proof)

;;; init-proof.el ends here
