;; ------------------------------------------------------
;; General behavior and appearance settings
;; ------------------------------------------------------

(setq inhibit-startup-screen t
      inhibit-startup-message t
      inhibit-startup-echo-area-message t
      initial-scratch-message nil
      ring-bell-function 'ignore  ; Disable the bell
      delete-by-moving-to-trash t ; move files to trash when deleting
      indicate-empty-lines nil    ; no empty line indicators
      tab-width 4                 ; Tab space equivalence
      x-underline-at-descent-line t
      use-dialog-box nil
      pop-up-windows nil)

(tool-bar-mode 0)
(tooltip-mode 0)
(menu-bar-mode 0)

(when (eq system-type 'darwin)
  (setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ; one line at a time
  (setq mouse-wheel-progressive-speed nil) ; don't accelerate scrolling
  (setq mouse-wheel-follow-mouse 't) ; scroll window under mouse
  (setq scroll-step 1) ; keyboard scroll one line at a time
  (setq use-dialog-box nil) ; Disable dialog boxes
  (set-frame-parameter (selected-frame) 'alpha '(90 . 90)) ; set frame transparency
  (add-to-list 'default-frame-alist '(alpha . (90 . 90)))
  (set-frame-parameter (selected-frame) 'fullscreen 'maximized) ; maximize by default
  (add-to-list 'default-frame-alist '(fullscreen . maximized)))

;; on OSX, type the line below (in terminal) to get a 1 pixel border
(setq-default indent-tabs-mode nil); No tabs
(set-default 'fill-column 80)      ; 80 is a good width
(fset 'yes-or-no-p 'y-or-n-p)      ; y/n for  answering yes/no questions

;; Open files from the home directory
(if (eq system-type 'darwin)
    (setq default-directory "~/"))

;; Delete trailing white space after a buffer is saved
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Navigate windows using shift+direction
(windmove-default-keybindings)

;; User name and email
(setq user-full-name "Loren Schwartz"
      user-email-address "lorencanbefound@gmail.com")

;; (setq electric-pair-mode t)

;; Completion style, see
;; gnu.org/software/emacs/manual/html_node/emacs/Completion-Styles.html
(setq completion-styles '(basic substring partial-completion))

;; Mouse active in terminal
(unless (display-graphic-p)
  (xterm-mouse-mode 1)
  (global-set-key (kbd "<mouse-4>") 'scroll-down-line)
  (global-set-key (kbd "<mouse-5>") 'scroll-up-line))

;; Size of temporary buffers
(temp-buffer-resize-mode)
(setq temp-buffer-max-height 8)

;; Buffer encoding
(prefer-coding-system       'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-language-environment   'utf-8)

;; Unique buffer names
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse
      uniquify-separator " • "
      uniquify-after-kill-buffer-p t
      uniquify-ignore-buffers-re "^\\*")

;; Default shell in term
(setq-default shell-file-name "/bin/zsh")
(setq explicit-shell-file-name "/bin/zsh")

;; Kill term buffer when exiting
(defadvice term-sentinel (around my-advice-term-sentinel (proc msg))
  (if (memq (process-status proc) '(signal exit))
      (let ((buffer (process-buffer proc)))
        ad-do-it
        (kill-buffer buffer))
    ad-do-it))
(ad-activate 'term-sentinel)

(recentf-mode 1);; Save a list of recent files visited. (open recent file with C-x r)
(setq recentf-max-saved-items 100) ; just 20 is too recent
(setq-default truncate-lines t)    ; Don't break lines for me, please)
(setq gc-cons-threshold 20000000)  ; Don't be so stingy on the memory
(setq vc-follow-symlinks t)        ; When opening a file, always follow symlinks)

;; Make scripts executable
(add-hook 'after-save-hook
          'executable-make-buffer-file-executable-if-script-p)

;; Do not use 'init.el' for `custom-*' code - use 'custom-file.el'
(setq custom-file "~/.emacs.d/lisp/custom-file.el")
(if (file-exists-p custom-file)
    (load-file custom-file))

;; Highlight the current line
(global-hl-line-mode)

;; Hide the slashes and stars that denote _emphasis_ and *bold* text
(setq org-hide-emphasis-markers t)

;; Quickly visit Emacs configs
(defun ls/visit-emacs-config ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(setq ispell-program-name "aspell")
;; ---------------------------------------------------
;; Keybindings
;; ---------------------------------------------------

(setq mac-right-command-modifier 'super
      mac-command-modifier 'super
      mac-option-modifier 'meta
      mac-right-option-modifier 'nil)

(global-set-key (kbd "s-s") 'save-buffer)
(global-set-key (kbd "s-q") 'save-buffer-kill-emacs)
(global-set-key (kbd "s-w") 'kill-current-buffer)
(global-set-key (kbd "s-a") 'mark-whole-buffer)
(global-set-key (kbd "s-z") 'undo)
(global-set-key (kbd "s-Z") 'redo) ; Cmd+Shift+B
(global-set-key (kbd "s-o") 'find-file)
(global-set-key (kbd "s-B") 'neotree-toggle)
(global-set-key (kbd "C-c r") 'recentf-open-files) ; Open recent files
(global-set-key (kbd "C-c e") 'ls/visit-emacs-config)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "<s-return>") 'toggle-frame-maximized)
(global-set-key (kbd "s-/") 'comment-line)
(global-set-key (kbd "s-\\") 'flyspell-correct-previous)
(global-set-key (kbd "C-s-\\") 'ispell-word)

;; Go to other windows easily with one keystroke Cmd-something.
(global-set-key (kbd "s-1") (kbd "C-x 1"))  ;; Cmd-1 kill other windows (keep 1)
(global-set-key (kbd "s-2") (kbd "C-x 2"))  ;; Cmd-2 split horizontally
(global-set-key (kbd "s-3") (kbd "C-x 3"))  ;; Cmd-3 split vertically


(provide 'better-defaults)
