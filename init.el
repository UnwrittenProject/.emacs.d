(setq inhibit-startup-message t
      inhibit-startup-screen t
      initial-scratch-message nil
      initial-major-mode 'org-mode)

(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(setq auto-save-default nil)

;; Packages
(load "package")
(package-initialize)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; User Details
(setq user-full-name "Mark Lanser")
(setq user-mail-address "markklanser@gmail.com")


;;ORG-MODE

(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)


(setq org-capture-templates
      '(("t" "Tasks" entry
	 (file+headline "~/Dropbox/Capture.org" "Tasks")
	("i" "Idea" entry
	 (file+headline "~/Dropbox/Capture/org" "Ideas")
	 ))))

(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
              (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" "PHONE" "MEETING"))))

'(org-todo ((t (:foreground "E1F024" :weight bold))))
'(org-done ((t (:foreground "gray57" :weight light))))


(setq line-spacing '0.25)

;; THEME 

(load-theme 'solarized-dark t)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
   (quote
    ("c:/Users/M/GoogleDrive/GTD/TODO/NEXT.ORG" "c:/Users/M/GoogleDrive/GTD/TODO/PROJECTS.org" "c:/Users/M/GoogleDrive/GTD/REFERENCE/ROOSTER.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
