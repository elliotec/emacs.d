(add-to-list 'load-path "~/.emacs.d/custom")
(load "00global.el")

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)

(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(defvar my-packages '(
                       better-defaults
                       dirtree
                       enh-ruby-mode
                       find-file-in-project
                       idle-highlight-mode
                       ido-ubiquitous
                       js2-mode
                       magit
                       monokai-theme
                       multiple-cursors
                       pallet
                       paredit
                       robe
                       sass-mode
                       scpaste
                       skewer-mode
                       sly
                       smartparens
                       smex
                       web-mode
                       yasnippet
                      ))
(package-initialize)
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(load "01package-config.el")
(load-theme 'monokai t)

