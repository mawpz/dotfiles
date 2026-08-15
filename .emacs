(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(package-install 'evil)
(package-install 'doom-themes)
(package-install 'company)

(set-frame-font "GoogleSansCode Nerd Font 12" nil t)

(evil-mode)

(setq ring-bell-function 'ignore)
(setq inhibit-startup-message t)
(setq make-backup-files nil)
(setq display-line-numbers-type 'relative)
(setq-default indent-tabs-mode t)
(setq-default tab-width 8)

(global-display-line-numbers-mode)
(global-company-mode)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode)

(load-theme 'doom-ir-black t)
