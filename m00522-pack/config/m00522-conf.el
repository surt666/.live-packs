(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(package-initialize)
(setq nrepl-popup-stacktraces nil)
(setq nrepl-popup-stacktraces-in-repl t)
(setq org-directory "~/orgfiles/")
(setq org-default-notes-file "~/.notes")
;(setq remember-annotation-functions '(org-remember-annotation))
;(setq remember-handler-functions '(org-remember-handler))
(add-hook 'org-capture-mode-hook 'org-capture-apply-template)
(define-key global-map "\C-cr" 'org-capture)

(setq org-agenda-files (list "~/orgfiles/notes.org"
                             "~/GTD/newgtd.org" 
                             "~/GTD/journal.org"))

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/GTD/newgtd.org" "Tasks") "* TODO %^{Brief Description} %^g\n%?\nAdded: %U")
        ("j" "Journal" entry (file+headline "~/GTD/journal.org") "** %^{Head Line} %U %^g\n%i%?")))

(global-font-lock-mode 1)
(setq org-log-done t)
(setq org-use-fast-todo-selection t)

