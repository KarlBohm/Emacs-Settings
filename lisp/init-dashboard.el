;;; init-dashboard -- Setting welcome screen
;;; Commentary:

;;; Code:
(use-package dashboard
  :ensure t
  :config
  (setq dashboard-banner-logo-title "上升的一切必将汇合") 
  ;; (setq dashboard-projects-backend 'projectile)
  (setq dashboard-startup-banner 'official) ;; 也可以自定义图片
  (setq dashboard-items '((recents  . 5)   ;; 显示多少个最近文件
			  (bookmarks . 5)  ;; 显示多少个最近书签
			  (projects . 10))) ;; 显示多少个最近项目
  (dashboard-setup-startup-hook))

(provide 'init-dashboard)

;;; init-dashboard.el ends here
