
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("org" . "http://orgmode.org/elpa"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes '(adwaita))
 '(custom-safe-themes
   '("b89ae2d35d2e18e4286c8be8aaecb41022c1a306070f64a66fd114310ade88aa" "939ea070fb0141cd035608b2baabc4bd50d8ecc86af8528df9d41f4d83664c6a" "e1d09f1b2afc2fed6feb1d672be5ec6ae61f84e058cb757689edb669be926896" "aded61687237d1dff6325edb492bde536f40b048eab7246c61d5c6643c696b7f" "4cf9ed30ea575fb0ca3cff6ef34b1b87192965245776afa9e9e20c17d115f3fb" "a06658a45f043cd95549d6845454ad1c1d6e24a99271676ae56157619952394a" "123a8dabd1a0eff6e0c48a03dc6fb2c5e03ebc7062ba531543dfbce587e86f2a" default))
 '(package-selected-packages
   '(org org-bullets eglot magit gruvbox-theme clojure-mode-extra-font-locking cider company lsp-mode evil))
 '(pdf-view-midnight-colors '("#282828" . "#f9f5d7")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-company-mode)
(add-hook 'cider-repl-mode-hook #'cider-company-enable-fuzzy-completion)
(add-hook 'cider-mode-hook #'cider-company-enable-fuzzy-completion)
(require 'evil)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 1)
(evil-mode 0)
(show-paren-mode +1) ;; show matching parenthesis
(setq backup-directory-alist `(("." . "~/.backup"))) ;; avoid creating a lot of backup files in the directorires
;; (load-theme 'gruvbox-light-soft)
;; (setq org-adapt-indentation nil) ;; disables org-mode auto indenting headers

;; org mode stuff
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(setq org-hide-emphasis-markers t)

;; (add-hook 'org-mode-hook (lambda () (electric-indent-mode -1)))

(desktop-save-mode 1) ;; save emacs session

(setq-default truncate-lines nil) ;; disable line truncation

;; enable org-bullets
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(setq org-roam-directory (file-truename "/mnt/HDD/Org"))
(org-roam-db-autosync-mode)

;; wrap lines at col 100
(add-hook 'text-mode-hook #'auto-fill-mode)
(setq-default fill-column 100)

(setq column-number-mode t)
