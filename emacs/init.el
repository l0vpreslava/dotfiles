(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;; (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; Bootstrap use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Configure use-package to install packages by default
(setq use-package-always-ensure t)

(use-package catppuccin-theme)
(use-package lsp-ui)
(use-package company)
(use-package which-key)
(use-package flycheck)

(set-frame-parameter nil 'alpha-background 70)
(add-to-list 'default-frame-alist '(alpha-background . 70))
(tool-bar-mode -1)
(menu-bar-mode -1)
(setq-default cursor-type 'bar)
(set-frame-font "JetBrains Mono 14" nil t)

(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'python-mode-hook #'lsp-deferred)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(catppuccin))
 '(custom-safe-themes
   '("ba98102679e7ed71a0b79c9a490328370b6b20537e04730bf0028bdd8a2418a9"
     default))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(## catppuccin-theme company flycheck lsp-mode lsp-ui tree-sitter)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'set-goal-column 'disabled nil)
