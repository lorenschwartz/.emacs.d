 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;;  '(custom-safe-themes
;;    (quote
;;     ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a"
;;      "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016"
;;      "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58"
;;      "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879"
;;      "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4"
;;       "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0"
;;       default)))
;;  '(package-selected-packages
;;    (quote
;;     (google-this org-bullets color-theme-sanityinc-tomorrow solarized-theme csv-mode darkroom diffview))))
;; (custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;; )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
<<<<<<< HEAD
 '(ac-ispell-fuzzy-limit 2)
 '(ac-ispell-requires 4)
=======
>>>>>>> 33cc63a7899d1f164d59ec60f1d547c85e1d347e
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
 '(magit-diff-use-overlays nil)
<<<<<<< HEAD
 '(neo-window-position (quote right))
=======
>>>>>>> 33cc63a7899d1f164d59ec60f1d547c85e1d347e
 '(org-agenda-diary-file (concat org-directory "Diary.org"))
 '(org-agenda-file (quote org-directory))
 '(org-agenda-files
   (quote
<<<<<<< HEAD
    ("/Users/lorenschwartz/Dropbox/org-files/Main.org" "/Users/lorenschwartz/Dropbox/org-files/Inbox.org")))
 '(org-agenda-include-diary t)
 '(org-agenda-ndays 7)
 '(org-agenda-show-all-dates t)
 '(org-agenda-skip-deadline-if-done t)
=======
    ("/Users/lorenschwartz/Dropbox/org-files/Reading-list.org" "/Users/lorenschwartz/Dropbox/org-files/Main.org" "/Users/lorenschwartz/Dropbox/org-files/Journal.org" "/Users/lorenschwartz/Dropbox/org-files/Inbox.org")))
 '(org-agenda-include-diary t)
 '(org-agenda-ndays 7)
 '(org-agenda-show-all-dates t)
 '(org-agenda-skip-deadline-if-done t t)
>>>>>>> 33cc63a7899d1f164d59ec60f1d547c85e1d347e
 '(org-agenda-span 7)
 '(org-agenda-start-on-weekday nil)
 '(org-archive-location "%s_archive::datetree/*")
 '(org-confirm-babel-evaluate nil)
<<<<<<< HEAD
 '(org-deadline-warning-days 7)
=======
 '(org-deadline-warning-days 14)
>>>>>>> 33cc63a7899d1f164d59ec60f1d547c85e1d347e
 '(org-default-notes-file (concat org-directory "org-files/Inbox.org"))
 '(org-directory "~/Dropbox/")
 '(org-ellipsis "⤵")
 '(org-fast-tag-selection-single-key (quote expert))
 '(org-index-file (concat org-directory "org-files/Main.org"))
 '(org-log-done (quote time))
 '(org-reverse-note-order t)
 '(org-src-fontify-natively t)
 '(org-src-tabs-act-natively t)
 '(org-src-window-setup (quote current-window))
 '(org-startup-truncated nil)
 '(package-selected-packages
   (quote
<<<<<<< HEAD
    (swiper switch-window which-key fancy-battery spaceline ac-ispell all-the-icons wsd-mode fastnav monokai-theme magit xkcd use-package treemacs-projectile treemacs markdown-mode minimap exec-path-from-shell ein py-autopep8 flycheck helm project-explorer python orgbox yaml-mode projectile dashboard page-break-lines ecukes multiple-cursors emojify emoji-fontset neotree gruvbox-theme jedi elpy org-ac ac-emoji solarized-theme org-bullets google-this engine-mode diffview darkroom csv-mode color-theme-sanityinc-tomorrow)))
=======
    (magit xkcd use-package treemacs-projectile treemacs markdown-mode minimap exec-path-from-shell ein py-autopep8 flycheck helm project-explorer python orgbox yaml-mode projectile dashboard page-break-lines ecukes multiple-cursors emojify emoji-fontset neotree gruvbox-theme jedi elpy org-ac ac-emoji solarized-theme org-bullets google-this engine-mode diffview darkroom csv-mode color-theme-sanityinc-tomorrow)))
>>>>>>> 33cc63a7899d1f164d59ec60f1d547c85e1d347e
 '(pos-tip-background-color "#eee8d5")
 '(pos-tip-foreground-color "#586e75")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#eee8d5" 0.2))
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
