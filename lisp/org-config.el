;; (add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

;; When starting an Org capture, start in evil insert state

(setq org-ellipsis "⤵") ;; Use downward ellipsis in org displays

(setq org-directory "~/Documents/org-files"
      org-main-file "~/Documents/org-files/Main.org"
      org-personal-file "~/Documents/org-files/Personal.org")

(setq org-agenda-files `(,org-main-file ,org-personal-file))

(setq org-agenda-ndays 7
      org-agenda-restore-windows-after-quit t
      org-agenda-show-all-dates t
      org-agenda-skip-deadline-if-done t
      org-agenda-skip-scheduled-if-done t
      org-agenda-skip-timestamps-if-done t
      org-agenda-skip-unavailable-files t
      org-agenda-span 1
      org-agenda-start-on-weekday t
      org-agenda-todo-ignore-deadlines nil
      org-agenda-todo-ignore-with-date nil
      org-deadline-warning-days 7
      org-src-fontify-natively nil
      org-startup-folded t
      org-startup-truncated nil
      org-startup-with-inline-images t)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline org-main-file "Inbox")
         "* TODO %? %^G\n")
        ("d" "Todo with deadline" entry (file+headline org-main-file "Inbox")
         "* TODO %? %^G\n DEADLINE:%^t")
        ("s" "Scheduled Todo" entry (file+headline org-main-file "Inbox")
         "* TODO %? %^G\n SCHEDULED:%^t")
        ("i" "Issue" entry (file+headline org-main-file "Inbox")
         "* ISSUE %? %^G\n")
        ("p" "Project" entry (file+headline org-main-file "Projects")
         "* NEW %? %^G\n :PROPERTIES:\n :STATE: %^{STATE}\n :PM: %^{PM}\n :END:")
        ("I" "Idea" entry (file+headline org-main-file "Incubator")
         "* IDEA %? %^G")
        ("j" "Journal" entry (file+olp+datetree org-personal-file "Journal")
         "** %U\n %?")
        ("w" "Work Journal" entry (file+olp+datetree org-main-file "Journal")
         "* %U\n %?")
        ("f" "Follow Up" entry (file+headline org-main-file "Inbox")
         "** FOLLOW UP %? %^G\n")))

(setq org-todo-keywords
      '((sequence "TODO(t)" "NEXT(n)" "DOING" "|" "DONE(d)")
        (sequence "OPEN" "|" "CLOSED(c)")
        (sequence "ISSUE" "|" "RESOLVED(r)")
        (sequence "NEW" "ACTIVE(a)" "|" "COMPLETE")
        (sequence "FOLLOW UP" "WAITING(w)" "|" "DONE")
        (sequence "IDEA(i)" "IN REVIEW(r)" "STUCK(s)" "|" "ABANDON" "PURSUE")))

;; (setq org-todo-state-tags-triggers
;;       (quote (("CANCELLED" ("CANCELLED" . t))
;;               ("WAITING" ("WAITING" . t))
;;               ("ISSUE" ("ISSUE" . t))
;;               ("HOLD" ("WAITING") ("HOLD" . t))
;;               (done ("WAITING") ("HOLD"))
;;               ("NEXT" ("WAITING") ("CANCELLED") ("HOLD"))
;;               ("DONE" ("WAITING") ("CANCELLED") ("HOLD")))))

(setq org-agenda-custom-commands
      '(("p" "Priority Agenda View"
         ((agenda "" ((org-agenda-ndays 5)))
          (todo "FOLLOW UP"
                ((org-agenda-overriding-header "Follow Up Items")
                 (org-agenda-sorting-strategy '(priority-down tag-up))))
          (todo "ISSUE"
                ((org-agenda-overriding-header "Issue List")
                 (org-agenda-sorting '(priority-down))))
          (tags "PRIORITY=\"A\""
                ((org-agenda-skip-function
                  '(or (ls-org-skip-subtree-if-follow-up)
                       (org-agenda-skip-entry-if 'todo 'done)
                       (org-agenda-skip-entry-if 'todo '("ISSUE"))))
                 (org-agenda-sorting-strategy '(tag-up))
                 (org-agenda-overriding-header "High Priority Items")))
          (tags "STATE=\"Red\""
                ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                 (org-agenda-overriding-header "Overdue Projects")
                 (org-agenda-sorting-strategy '(tag-up))))
          (tags "STATE=\"Yellow\""
                ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                (org-agenda-overriding-header "Projects At Risk")))
          (alltodo ""
                   ((org-agenda-skip-function
                     '(or (ls-org-skip-subtree-if-priority ?A)
                          (ls-org-skip-subtree-if-state-yellow)
                          (ls-org-skip-subtree-if-state-red)
                          (ls-org-skip-subtree-if-state-green)
                          (ls-org-skip-subtree-if-habit)
                          (ls-org-skip-subtree-if-follow-up)
                          (org-agenda-skip-entry-if 'todo '("ISSUE"))
                          (org-agenda-skip-if nil '(scheduled deadline)))))
                    (org-agenda-sorting
                     '(tag-down priority-down)))
          (tags "STATE=\"Green\""
               ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                (org-agenda-overriding-header "On track")
                (org-agenda-sorting-strategy '(tag-up))))))))

(defun ls-org-skip-subtree-if-habit ()
  "Skip an agenda entry if it has a STYLE property equal to habit."
  (let ((subtree-end (save-excursion (org-end-of-subtree t))))
    (if (string= (org-entry-get nil "STYLE") "habit")
        subtree-end
      nil)))

(defun ls-org-skip-subtree-if-follow-up ()
  "Skip an agenda item if it a follow up task."
  (let ((subtree-end (save-excursion (org-end-of-subtree t))))
    (if (string= (org-get-todo-state) "FOLLOW UP")
        subtree-end
      nil)))

(defun ls-org-skip-subtree-if-state-yellow ()
  "Skip an agenda item if it has a STATE property equal to yellow."
  (let ((subtree-end (save-excursion (org-end-of-subtree t))))
    (if (string= (org-entry-get nil "STATE") "Yellow")
        subtree-end
      nil)))

(defun ls-org-skip-subtree-if-state-red ()
  "Skip an agenda item if it has a STATE property equal to red."
  (let ((subtree-end (save-excursion (org-end-of-subtree t))))
    (if (string= (org-entry-get nil "STATE") "Red")
        subtree-end
      nil)))

(defun ls-org-skip-subtree-if-state-green ()
  "Skip an agenda item if it has a STATE property equal to green."
  (let ((subtree-end (save-excursion (org-end-of-subtree t))))
    (if (string= (org-entry-get nil "STATE") "Green")
        subtree-end
      nil)))

(defun ls-org-skip-subtree-if-priority (priority)
  "Skip an agenda subtree if it has a priority of PRIORITY."
  (let ((subtree-end (save-excursion (org-end-of-subtree t)))
        (pri-value (* 1000 (- org-lowest-priority priority)))
        (pri-current (org-get-priority (thing-at-point 'line t))))
    (if (= pri-value pri-current)
        subtree-end
      nil)))

(provide 'org-config)
