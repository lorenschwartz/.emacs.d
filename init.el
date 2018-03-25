(setq debug-on-error t)
<<<<<<< HEAD


(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)

;; Bootstrapping use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(setq shell-command-switch "-ic")
=======
(package-initialize)
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(require 'use-package)
(exec-path-from-shell-copy-env "PATH")
>>>>>>> 33cc63a7899d1f164d59ec60f1d547c85e1d347e

(require 'org)
(org-babel-load-file "~/.emacs.d/configuration.org")
;;Set all themes to be safe to use without asking
(setq custom-safe-themes t)

;;Set up the customize file to its own separate file.
(setq user-emacs-directory (file-truename "~/.emacs.d/"))
(setq custom-file
      (expand-file-name "custom.el" user-emacs-directory))
(load-file custom-file)
<<<<<<< HEAD
(exec-path-from-shell-initialize)
=======
>>>>>>> 33cc63a7899d1f164d59ec60f1d547c85e1d347e
