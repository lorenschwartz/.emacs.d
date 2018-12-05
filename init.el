(setq debug-on-error t)

(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)

;; Bootstrapping use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(setq shell-command-switch "-ic")

(package-initialize)
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(require 'use-package)
(exec-path-from-shell-copy-env "PATH")

(require 'org)
(org-babel-load-file "~/.emacs.d/configuration.org")
;;Set all themes to be safe to use without asking
(setq custom-safe-themes t)

;;Set up the customize file to its own separate file.
(setq user-emacs-directory (file-truename "~/.emacs.d/"))
(setq custom-file
      (expand-file-name "custom.el" user-emacs-directory))
(load-file custom-file)

(exec-path-from-shell-initialize)

(put 'erase-buffer 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-ispell-fuzzy-limit 2)
 '(ac-ispell-requires 4)
 '(org-agenda-files
   (quote
    ("/Users/darkhelmet/Dropbox/org-files/Diary.org" "/Users/darkhelmet/Dropbox/org-files/Inbox.org" "/Users/darkhelmet/Dropbox/org-files/Main.org" "/Users/darkhelmet/Dropbox/Presentation.org")))
 '(org-agenda-include-diary t)
 '(org-agenda-show-all-dates t)
 '(org-agenda-skip-deadline-if-done t)
 '(org-agenda-span 5)
 '(org-agenda-start-on-weekday t)
 '(org-confirm-babel-evaluate nil)
 '(org-deadline-warning-days 7)
 '(org-default-notes-file (concat org-directory "org-files/Inbox.org"))
 '(org-directory "~/Dropbox/")
 '(org-index-file (concat org-directory "org-files/Main.org"))
 '(org-log-done (quote time))
 '(org-reverse-note-order t)
 '(org-src-fontify-natively t)
 '(org-src-tabs-act-natively t)
 '(org-src-window-setup (quote current-window))
 '(org-startup-truncated t)
 '(powerline-default-separator (quote arrow))
 '(powerline-display-hud t)
 '(powerline-height 24)
 '(spaceline-all-the-icons-file-name-highlight nil)
 '(spaceline-all-the-icons-icon-set-git-ahead (quote commit))
 '(spaceline-all-the-icons-icon-set-sun-time (quote sun/moon)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(powerline-active1 ((t (:inherit mode-line :background "grey22" :foreground "#6495ED" :weight normal))))
 '(powerline-active2 ((t (:inherit mode-line :background "grey40")))))
