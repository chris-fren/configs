(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(backup-by-copying t)
 '(backup-directory-alist (quote (("." . "~/.saves"))))
 '(desktop-save t)
 '(desktop-save-mode t)
 '(global-linum-mode t)
 '(linum-eager t)
 '(scroll-bar-mode nil)
 '(scroll-step 1)
 '(server-mode t)
 '(sr-speedbar-width-x 48)
 '(tool-bar-mode nil)
 '(truncate-lines t)
 '(vc-follow-symlinks t)
 '(vc-make-backup-files nil))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; Colors
(set-face-background 'default "black")
(set-face-foreground 'default "green")

;; Green on Black
(set-background-color "black")
(set-foreground-color "green")
(set-cursor-color "green")

;; Setup Tex mode to use pdflatex
(setq latex-run-command "pdflatex")

;; PDF Viewer
(defun tex-view ()
    (interactive)
    (tex-send-command "evince" (tex-append tex-print-file ".pdf")))

;; Font
;;(set-face-attribute 'default nil :height 85)
(set-default-font "Monospace:pixelsize=12")

;; Set the debug option to enable a backtrace when a
;; problem occurs.
(setq debug-on-error t)

;; General Settings
(setq visible-bell t) ;; Disable audible bell
(setq require-final-newline t)    ;; will make the last line end in a carriage return.
(fset 'yes-or-no-p 'y-or-n-p)     ;; will allow you to type just "y" instead of "yes" when you exit.
(setq next-line-add-newlines nil) ;; will disallow creation of new lines when you press the "arrow-down key" at end of the buffer.
;;(setq-default indent-tabs-mode nil) ;; will introduce spaces instead of tabs by default.
(transient-mark-mode t) ;; will highlight region between point and mark.
(setq font-lock-maximum-decoration t) ;; denotes our interest in maximum possible fontification.

;; Close all buffers
(defun close-all-buffers ()
  (interactive)
  (mapc 'kill-buffer (buffer-list)))

;; Comment region
(global-set-key "\C-c\C-c" 'comment-region)

;; Replace string
(global-set-key (kbd "s-r") 'replace-string)


