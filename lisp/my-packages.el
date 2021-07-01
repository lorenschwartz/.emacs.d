;; Configure Evil
(use-package evil
  :ensure t
  :init
  (setq evil-respect-visual-line-mode t)
  :config
  (evil-mode))

;; All-the-icons
(use-package all-the-icons
             :ensure t)

;; Use org-bullets instead of asterisks in org-mode files
(use-package org-bullets
  :ensure t
  :init
  (add-hook 'org-mode-hook 'org-bullets-mode))

;; Configure rainbow-delimiter-mode
(use-package rainbow-delimiters
  :ensure t)

;; File tree
(use-package neotree
  :config
  (setq neo-window-width 32
        neo-create-file-auto-open t
        neo-banner-message nil
        neo-show-updir-line t
        neo-window-fixed-size nil
        neo-vc-integration nil
        neo-mode-line-type 'neotree
        neo-smart-open t
        neo-show-hidden-files t
        neo-mode-line-type 'none
        neo-auto-indent-point t)
  (setq neo-theme (if (display-graphic-p) 'nerd 'arrow)))

;; Configure 'closure-mode
(use-package clojure-mode
  :ensure t
  :mode (("\\.clj\\'" . clojure-mode)
         ("\\.edn\\'" . clojure-mode))
  :init
  (add-hook 'clojure-mode-hook #'yas-minor-mode)
  (add-hook 'clojure-mode-hook #'linum-mode)
  (add-hook 'clojure-mode-hook #'subword-mode)
  (add-hook 'clojure-mode-hook #'smartparen-mode)
  (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'clojure-mode-hook #'eldoc-mode))

;; Configure CIDER
(use-package cider
  :ensure t
  :defer t
  :init (add-hook 'cider-mode-hook #'clj-refactor-mode)
  :diminish subword-mode
  :config
  (setq nrepl-log-messages t
        cider-repl-display-in-current-window t
        cider-repl-use-clojure-font-lock t
        cider-prompt-save-file-on-load 'always-save
        cider-font-lock-dynamically '(macro core function var)
        nrepl-hide-special-buffers t
        cider-overlays-use-font-lock t)
  (cider-repl-toggle-pretty-printing))

;; Configure `smartparens
(use-package smartparens
  :defer t
  :ensure t
  :diminish smartparens-mode
  :init
  (setq sp-override-key-bindings
        '(("C-<right>" . nil)
          ("C-<left>" . nil)
          ("C-)" . sp-forward-slurp-sexp)
          ("M-<backspace>" . nil)
          ("C-(" . sp-forward-barf-sexp)))
  :config
  (use-package smartparens-config)
  (sp-use-smartparens-bindings)
  (sp--update-override-key-bindings)
  :commands (smarparens-mode show-smartparens-mode))

;; Popup window for spellchecking
(use-package flyspell-correct)
(use-package flyspell-correct-popup)

(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)

;; Enable right mouse click on Mac to see list of suggestions
(eval-after-load "flyspell"
  '(progn
     (define-key flyspell-mouse-map [down-mouse-3] #'flyspell-correct-word)
     (define-key flyspell-mouse-map [mouse-3] #'undefined)))

;; Search for synonyms
(use-package powerthesaurus
  :config
  (global-set-key (kbd "s-|") 'powerthesaurus-lookup-word-at-point))

(use-package nano-theme
  :ensure nil
  :defer t
  :quelpa (nano-theme
           :fetcher github
           :repo "rougier/nano-theme"))

(provide 'my-packages)
