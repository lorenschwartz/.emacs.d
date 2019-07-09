;;; package --- summary:

;;; Commentary:

;; (custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;; )

;;; Code:
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-ispell-fuzzy-limit 2)
 '(ac-ispell-requires 4)
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#839496"])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#657b83")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes nil)
 '(electric-pair-mode t)
 '(fci-rule-color "#eee8d5")
 '(global-captain-mode t)
 '(gnus-inhibit-startup-message t)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#fdf6e3" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#586e75")
 '(highlight-tail-colors
   (quote
    (("#eee8d5" . 0)
     ("#B4C342" . 20)
     ("#69CABF" . 30)
     ("#69B7F0" . 50)
     ("#DEB542" . 60)
     ("#F2804F" . 70)
     ("#F771AC" . 85)
     ("#eee8d5" . 100))))
 '(hl-bg-colors
   (quote
    ("#DEB542" "#F2804F" "#FF6E64" "#F771AC" "#9EA0E5" "#69B7F0" "#69CABF" "#B4C342")))
 '(hl-fg-colors
   (quote
    ("#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3")))
 '(interleave-org-notes-dir-list (quote ("~/Dropbox/org-files")))
 '(magit-diff-use-overlays nil)
 '(neo-window-position (quote right))
 '(org-agenda-diary-file (concat org-directory "Diary.org"))
 '(org-agenda-files
   (quote
    ("/Users/darkhelmet/Dropbox/org-files/Diary.org" "/Users/darkhelmet/Dropbox/org-files/Inbox.org" "/Users/darkhelmet/Dropbox/org-files/Main.org" "/Users/darkhelmet/Dropbox/org-files/Regulatory.org" "/Users/darkhelmet/Dropbox/org-files/AML.org" "/Users/darkhelmet/Dropbox/org-files/Personal.org")))
 '(org-agenda-include-diary t)
 '(org-agenda-ndays 7)
 '(org-agenda-restore-windows-after-quit t)
 '(org-agenda-show-all-dates t)
 '(org-agenda-skip-deadline-if-done t)
 '(org-agenda-skip-unavailable-files t)
 '(org-agenda-span 1)
 '(org-agenda-start-on-weekday t)
 '(org-agenda-window-frame-fractions (quote (1 . 1)))
 '(org-archive-location "%s_archive::datetree/*")
 '(org-confirm-babel-evaluate nil)
 '(org-deadline-warning-days 7)
 '(org-default-notes-file (concat org-directory "org-files/Inbox.org"))
 '(org-directory "~/Dropbox/")
 '(org-ellipsis "⤵")
 '(org-fast-tag-selection-single-key (quote expert))
 '(org-habit-following-days 1)
 '(org-habit-graph-column 80)
 '(org-habit-show-done-always-green t)
 '(org-index-file (concat org-directory "org-files/Main.org"))
 '(org-log-done (quote time))
 '(org-modules
   (quote
    (org-habit org-mac-iCal org-mac-ical org-w3m org-bbdb org-bibtex org-docview org-gnus org-info org-irc org-mhe org-rmail)))
 '(org-reverse-note-order t)
 '(org-src-fontify-natively t)
 '(org-src-tabs-act-natively t)
 '(org-src-window-setup (quote current-window))
 '(org-startup-truncated t)
 '(org-use-property-inheritance nil)
 '(package-selected-packages
   (quote
    (powerthesaurus web-mode auto-package-update cider sudoku ob-clojurescript pdf-tools prettier-js-mode prettier-js add-node-modules-path react-snippets flyspell-correct-popup flyspell-correct avy neotree define-word counsel flx smex ivy-rich expand-region move-text spaceline-all-the-icons ox-reveal htmlize cider-eval-sexp-fu image+ hydandata-light-theme ac-slime slime tablist interleave yankpad rainbow-delimiters paredit clojure-snippets helm-projectile bbdb captain pomidor atom-one-dark-theme swiper switch-window which-key fancy-battery spaceline ac-ispell all-the-icons wsd-mode fastnav monokai-theme magit xkcd use-package treemacs-projectile treemacs markdown-mode minimap exec-path-from-shell ein py-autopep8 flycheck helm project-explorer python orgbox yaml-mode projectile dashboard page-break-lines ecukes multiple-cursors emojify emoji-fontset gruvbox-theme jedi elpy org-ac ac-emoji solarized-theme org-bullets google-this engine-mode diffview darkroom csv-mode color-theme-sanityinc-tomorrow)))
 '(pos-tip-background-color "#eee8d5")
 '(pos-tip-foreground-color "#586e75")
 '(send-mail-function nil)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#eee8d5" 0.2))
 '(spaceline-all-the-icons-hide-long-buffer-path t)
 '(spaceline-all-the-icons-separator-type (quote arrow))
 '(spaceline-all-the-icons-slim-render t)
 '(split-height-threshold nil)
 '(split-width-threshold nil)
 '(term-default-bg-color "#fdf6e3")
 '(term-default-fg-color "#657b83")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#c85d17")
     (60 . "#be730b")
     (80 . "#b58900")
     (100 . "#a58e00")
     (120 . "#9d9100")
     (140 . "#959300")
     (160 . "#8d9600")
     (180 . "#859900")
     (200 . "#669b32")
     (220 . "#579d4c")
     (240 . "#489e65")
     (260 . "#399f7e")
     (280 . "#2aa198")
     (300 . "#2898af")
     (320 . "#2793ba")
     (340 . "#268fc6")
     (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#fdf6e3" "#eee8d5" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#657b83" "#839496"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
