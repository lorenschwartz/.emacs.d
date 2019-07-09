;;; package --- summary:
;;; Commentary:
;;; Code:
(setq debug-on-error t)

;; Package system and sources.
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                 (not (gnutls-available-p))))
    (proto (if no-ssl "http" "https")))
    ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
    (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
    ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
    (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
(add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))

(package-initialize)

;; Bootstrapping use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile (require 'use-package))

;; No need to 'esnure' anywhere
(setq use-package-always-ensure t)

;; Pass system shell environment to Emacs. This is important primarily for shell inside Emacs, but also things like Org mode export to Tex PDF don't work, since it relies on running external command pdflatex, which is loaded from PATH.
(use-package exec-path-from-shell
  :ensure t)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;;(setq shell-command-switch "-ic")
;;(exec-path-from-shell-copy-env "PATH")

(require 'org)
(org-babel-load-file "~/.emacs.d/configuration.org")
;;Set all themes to be safe to use without asking
(setq custom-safe-themes t)

;;Set up the customize file to its own separate file. Don't freak out if not found.
(setq user-emacs-directory (file-truename "~/.emacs.d/"))
(setq custom-file
      (expand-file-name "custom.el" user-emacs-directory))
(load-file custom-file)
(load custom-file 'noerror)

(put 'erase-buffer 'disabled nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(provide 'init)
;;; init.el ends here
