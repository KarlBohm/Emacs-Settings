;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;;  I will say something later here. By far I'm just learning by copying.

;;; Code:

(let ((minver "25.1"))
  (when (version< emacs-version minver)
    (error "This configuration is way too young for this Emacs. Try v%s or higher." minver)))
(when (version< emacs-version "26.1")
  (message "Your Emacs is old, and some functionality in this config will be disabled. Please upgrade if possible."))

(message "loaded")

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory)) ; Set where source code is loaded

(defconst *spell-check-support-enabled* nil) ;; Maybe I will need it.
(defconst *is-a-mac* (eq system-type 'darwin)) ;; Maybe I will have one later?

;;; Enlarge Garbage collection
(let ((normal-gc-cons-threshold (* 20 1024 1024))
      (init-gc-cons-threshold (* 128 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  (add-hook 'emacs-startup-hook
            (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))

;;; Learning module
; (require 'hello)

;;; Emacs settings
(require 'common)

(eval-when-compile
  (require 'use-package))

(require 'init-elpa)

(require 'init-theme)

(require 'init-ivy)

(require 'init-amx)

(require 'init-mwin)

;(require 'init-sml)

(require 'init-undotree)

(require 'init-ace-win)

(require 'init-haskell)

(require 'init-org)

(require 'init-ligature)

(require 'init-proof)

(require 'init-dashboard)

(require 'init-prog)

(require 'init-edit)

(require 'init-read)

(provide 'init)

;;; init.el ends here

