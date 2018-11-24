;;; init.el -- Bootstrap org-init.org file
;;; Commentary:

;;; Code:

;; load the preload-custom.el
(setq custom-file (format "%spreload-custom.el" user-emacs-directory))
(if (not (file-exists-p custom-file))
    (with-temp-buffer
      (insert "(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
")
(write-file custom-file)))
(load custom-file)

;; Setup custom group
