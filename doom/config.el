;; Me
(setq user-full-name "Jasper Geer"
      user-mail-address "jasper.geer@gmail.com")

;; Appearance
(setq doom-font (font-spec :family "FiraCode Nerd Font" :size 13)
      doom-big-font (font-spec :family "FiraCode Nerd Font" :size 13)
      doom-variable-pitch-font (font-spec :family "FiraCode Nerd Font" :size 13)
      doom-serif-font (font-spec :family "FiraCode Nerd Font" :size 13))

(setq doom-theme 'doom-one)

(add-to-list 'initial-frame-alist '(fullscreen . maximized))

(setq display-line-numbers-type t)

;; org-mode
(setq org-directory "~/org/"
      org-agenda-files (list org-directory))

;; LANGUAGES

(setq-default tab-width 2)

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
