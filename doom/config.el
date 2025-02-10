;; Me
(setq user-full-name "Jasper Geer"
      user-mail-address "jasper.geer@gmail.com")

;; Appearance
(setq doom-font (font-spec :family "DejaVuSansM Nerd Font" :size 13)
      doom-big-font (font-spec :family "DejaVuSansM Nerd Font" :size 13)
      doom-variable-pitch-font (font-spec :family "DejaVuSansM Nerd Font" :size 13)
      doom-serif-font (font-spec :family "DejaVuSansM Nerd Font" :size 13)
      doom-symbol-font (font-spec :family "Latin Modern Math" :size 13))

;; (setq doom-theme 'doom-oksolar-light)
(setq doom-theme 'doom-one)

(setq display-line-numbers-type t)

;; org-mode
(setq org-directory "~/org/"
      org-agenda-files (list org-directory))

;; Editing
(setq tab-width 2)
(setq indent-tabs-mode t)

;; C/C++
(c-add-style "microsoft"
             '("stroustrup"
               (c-offsets-alist
                (innamespace . -)
                (inline-open . 0)
                (inher-cont . c-lineup-multi-inher)
                (arglist-cont-nonempty . +)
                (template-args-cont . +))))
(setq c-default-style "microsoft")

;; Haskell
(after! lsp-haskell
  (setq lsp-haskell-formatting-provider "fourmolu"))

;; Bison
(after! bison-mode
  (add-to-list 'auto-mode-alist '("*.y" . bison-mode)))

;; auto-load agda-mode for .agda and .lagda.md
(setq auto-mode-alist
   (append
     '(("\\.agda\\'" . agda2-mode)
       ("\\.lagda.md\\'" . agda2-mode))
     auto-mode-alist))

;; LaTeX
(add-hook 'LaTeX-mode-hook 'turn-on-auto-fill)
