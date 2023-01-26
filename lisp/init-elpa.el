;;; init-elpa.el --- Configures for using packages  -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(require 'package)

(setq package-archives '(("gnu"    . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

(package-initialize)

(provide 'init-elpa)

;;; init-elpa ends here

