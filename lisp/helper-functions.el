;;; describe this point lisp only
(defun describe-thing-at-point ()
  "Show the documentation of the Elisp function and variable near point.
   This checks in turn:
	-- for a function name where point is
	-- for a variable name where point is
	-- for a surrounding function call
	"
  (interactive)
  (let (sym)
    (cond ((setq sym (ignore-errors
                       (with-syntax-table emacs-lisp-mode-syntax-table
                         (save-excursion
                           (or (not (zerop (skip-syntax-backward "_w")))
                               (eq (char-syntax (char-after (point))) ?w)
                               (eq (char-syntax (char-after (point))) ?_)
                               (forward-sexp -1))
                           (skip-chars-forward "`'")
        	           (let ((obj (read (current-buffer))))
                             (and (symbolp obj) (fboundp obj) obj))))))
           (describe-function sym))
          ((setq sym (variable-at-point)) (describe-variable sym))
          ;; now let it operate fully -- i.e. also check the
          ;; surrounding sexp for a function call.
          ((setq sym (function-at-point)) (describe-function sym)))))

(defun indent-buffer ()
  "Indent the entire buffer according to the mode."
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)))
(global-set-key (kbd "s-.") 'indend-buffer)

(defun new-scratch-frame ()
  "Create a new scratch frame"
  (interactive)
  (select-frame (make-frame))
  (switch-to-buffer "*scratch*"))
(global-set-key (kbd "s-n") 'new-frame)

(defun nano--delete-frame-or-kill-emacs ()
  "Delete frame or kill Emacs if there is only one frame."
  (interactive)
  (if (> (length (frame-list)) 1)
      (delete-frame)
    (save-buffers-kill-terminal)))
(global-set-key (kbd "C-x C-c") 'nano--delete-frame-or-kill-emacs)

(defun open-main-file ()
  "Open Main.org file."
  (interactive)
  (find-file org-main-file)
  (end-of-buffer))
(global-set-key (kbd "C-c m") 'open-main-file)

(defun open-personal-file ()
  "Open Personal.org file."
  (interactive)
  (find-file org-personal-file)
  (end-of-buffer))
(global-set-key (kbd "C-c p") 'open-personal-file)

(provide 'helper-functions)
