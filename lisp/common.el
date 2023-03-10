;;; common -- Put all the basic settings here  -*- lexical-binding: t -*-
;;; Commentary:

;; This file holds all the settings related only to emacs itself.
;; Anything invloving plugins needs to be put at somewhere else.

;;; Code:

(electric-pair-mode t)                       ; 自动补全括号
(add-hook 'prog-mode-hook #'show-paren-mode) ; 编程模式下，光标在括号上时高亮另一个括号
(column-number-mode t)                       ; 在 Mode line 上显示列号
(global-auto-revert-mode t)                  ; 当另一程序修改了文件时，让 Emacs 及时刷新 Buffer
(delete-selection-mode t)                    ; 选中文本后输入文本会替换文本（更符合我们习惯了的其它编辑器的逻辑）
(setq inhibit-startup-message t)             ; 关闭启动 Emacs 时的欢迎界面
(setq make-backup-files nil)                 ; 关闭文件自动备份
(add-hook 'prog-mode-hook #'hs-minor-mode)   ; 编程模式下，可以折叠代码块
(global-display-line-numbers-mode 1)         ; 在 Window 显示行号
(tool-bar-mode -1)                           ; 关闭 Tool bar
(menu-bar-mode -1)
(when (display-graphic-p) (toggle-scroll-bar -1)) ; 图形界面时关闭滚动条

(savehist-mode 1)                            ; （可选）打开 Buffer 历史记录保存
(setq display-line-numbers-type 'relative)   ; （可选）显示相对行号

(add-to-list 'default-frame-alist '(font . "Sarasa Mono Slab SC-14" ))  ; 更改为更纱黑体

(setq display-time-24hr-format t) ; 24 小时格式（以规避中文空格问题）
(display-time-mode 1) ; 显示时间

;; Specify font for Chinese characters, copied from Centaur Emacs
(when (display-graphic-p)
  (setq face-font-rescale-alist `((,"LXGW WenKai Mono" . 1)))
  (set-fontset-font t '(#x4e00 . #x9fff) (font-spec :family "LXGW WenKai Mono")))

;; Faster move cursor
(defun next-ten-lines()
  "Move cursor to next 10 lines."
  (interactive)
  (next-line 10))

(defun previous-ten-lines()
  "Move cursor to previous 10 lines."
  (interactive)
  (previous-line 10))
;; 绑定到快捷键
(global-set-key (kbd "M-n") 'next-ten-lines)            ; 光标向下移动 10 行
(global-set-key (kbd "M-p") 'previous-ten-lines)        ; 光标向上移动 10 行

;; Behave like vi's o command, from Emacs Wiki
(defun open-next-line (arg)
  "Move to the next line and then opens a line. See also `newline-and-indent'."
  (interactive "p")
  (end-of-line)
  (open-line arg)
  (forward-line 1)
  (when 'newline-and-indent
    (indent-according-to-mode)))

(defun open-previous-line (arg)
  "Open a new line before the current one. See also `newline-and-indent'."
  (interactive "p")
  (beginning-of-line)
  (open-line arg)
  (when 'newline-and-indent
    (indent-according-to-mode)))

(global-set-key (kbd "C-j") nil)
;; 删去光标所在行 
(global-set-key (kbd "C-j C-k") 'kill-whole-line)
(global-set-key (kbd "C-j C-j") 'open-next-line) ; 或许我应该设置为 C-o
(global-set-key (kbd "C-j C-l") 'open-previous-line) ; 或者 M-o

(provide 'common)
;;; common.el ends here
