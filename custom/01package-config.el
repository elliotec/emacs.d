;; dirtree
(require 'dirtree)

;; smex
(require 'smex)
(smex-initialize)

;; slime
(add-to-list 'load-path "~/.emacs.d/custom/slime")
(require 'slime-autoloads)
(setq inferior-lisp-program "/usr/local/bin/sbcl")
(setq slime-contribs '(slime-fancy))

;; web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.cshtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

;; multiple-cursors
(require 'multiple-cursors)
(multiple-cursors-mode 1)
(global-set-key (kbd "C-c f") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c b") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c e") 'mc/mark-all-like-this)

;; sass-mode
(setq js-indent-level 2)
(setq scss-indent-level 2)
(setq sass-indent-level 2)
(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))

;; ruby
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Berksfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))
(add-hook 'enh-ruby-mode-hook 'robe-mode)

;; smartparens
(require 'smartparens-config)
 (require 'smartparens-ruby)
 (smartparens-global-mode)
 (show-smartparens-global-mode t)
 (sp-with-modes '(rhtml-mode)
   (sp-local-pair "<" ">")
   (sp-local-pair "<%" "%>"))
