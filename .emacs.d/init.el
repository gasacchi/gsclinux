;; another 6 try emacs
(setq inhibit-startup-message t)

(menu-bar-mode -1)          ; Disable menu bar
(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
(tooltip-mode -1)           ; Disable tooltips
(set-fringe-mode 10)        ; Give some breathing room
(column-number-mode)
(global-display-line-numbers-mode t)
(setq display-line-numbers-type 'relative)

;; using visual bell instead beep sound
(setq visible-bell t)

(set-face-attribute 'default nil :font "Hasklug Nerd Font" :height 120)

;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
 (package-refresh-contents))

;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
   (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)


(use-package command-log-mode)
(use-package ivy
  :diminish
  :bind (("C-s" . swiper)
         :map ivy-minibuffer-map
         ("TAB" . ivy-alt-done)	
         ("C-l" . ivy-alt-done)
         ("C-j" . ivy-next-line)
         ("C-k" . ivy-previous-line)
         :map ivy-switch-buffer-map
         ("C-k" . ivy-previous-line)
         ("C-l" . ivy-done)
         ("C-d" . ivy-switch-buffer-kill)
         :map ivy-reverse-i-search-map
         ("C-k" . ivy-previous-line)
         ("C-d" . ivy-reverse-i-search-kill))
  :config
  (ivy-mode 1))

;; NOTE: The first time you load your configuration on a new machine, you'll
;; need to run the following command interactively so that mode line icons
;; display correctly:
;;
;; M-x all-the-icons-install-fonts
(use-package all-the-icons)
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))

(use-package dracula-theme)
(load-theme 'dracula t)
(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package counsel
  :bind (("M-x" . counsel-M-x)
         ("C-x b" . counsel-ibuffer)
         ("C-x C-f" . counsel-find-file)
         :map minibuffer-local-map
         ("C-r" . 'counsel-minibuffer-history)))

(use-package ivy-rich
  :init
  (ivy-rich-mode 1))

(use-package general
  :config
  (general-create-definer gsc/leader-keys
    :keymaps '(normal insert visual emacs)
    :prefix "SPC"
    :global-prefix "C-SPC")

  (gsc/leader-keys
    ;; General
    "SPC" '(which-key-abort :which-key "Abort")
    "q" '(evil-quit-all :which-key "Quit")


    ;; File TODO
    "f"  '(:ignore t :which-key "Files")
    "f SPC" '(which-key-abort :which-key "abort")
    "ff" '(counsel-find-file :which-key "find file")
    "fw" '(save-buffer :which-key "write file")
    "fW" '(evil-save-and-quit :which-key "write and quit")
    "fs" '(evil-save :which-key "save to file")
    "fS" '(evil-save-and-close :which-key "save and close")

    ;; Help
    "h" '(:ignore t :which-key "Help")
    "h SPC" '(which-key-abort :which-key "abort")
    "hv" '(describe-variable :which-key "describe variable")
    "hk" '(describe-key :which-key "describe key")
    "hf" '(describe-function :which-key "describe function")
    "hb" '(describe-bindings :which-key "describe bindings")

    ;; Search
    "s" '(:ignore t :which-key "Search")
    "s SPC" '(which-key-abort :which-key "abort")
    "ss" '(swiper :which-key "spwiper")

    ;; M-x
    "x" '(counsel-M-x :which-key "M-x")

    ;; eval-last-sexp
    "e" '(eval-last-sexp :which-key "Eval last sexp")

    ;; Window
    "w" '(:ignore t :which-key "Window")
    "w SPC" '(which-key-abort :which-key "abort")
    "ws" '(evil-window-split :which-key "horizontal split")
    "wv" '(evil-window-vsplit :which-key "vertical split")
    "wj" '(evil-window-down :which-key "move down")
    "wk" '(evil-window-up :which-key "move up")
    "wl" '(evil-window-right :which-key "move right")
    "wh" '(evil-window-left :which-key "move left")
    "wp" '(evil-window-prev :which-key "prev window")
    "wn" '(evil-window-next :which-key "next window")
    "wq" '(evil-window-delete :which-key "quit current window")
    "wo" '(evil-window-new :which-key "open new window")
    ))



(use-package evil
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (setq evil-want-C-u-scroll t)
  (setq evil-want-C-i-jump nil)
  :config
  (evil-mode 1)
  (define-key evil-insert-state-map (kbd "C-g") 'evil-normal-state)
  (define-key evil-insert-state-map (kbd "C-h") 'evil-delete-backward-char-and-join))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 1))
;; must install to quickly bindings for
;; example to resize split
;;(use-package hydra)
  

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(which-key evil-collection evil general ivy-rich counsel dracula-theme use-package ivy doom-modeline)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
