;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:

;;(setq doom-font (font-spec :family "FiraCode Nerd Font Mono" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "FiraCode Nerd Font" :size 13))

;; (setq doom-font (font-spec :family "Hack Nerd Font" :size 14))
;; (setq doom-unicode-font (font-spec :family "Hack Nerd Font" :size 14))

;; (setq doom-modeline-icon t)
;; (setq doom-modeline-major-mode-icon t)

;; (setq doom-font (font-spec :family "Source Code Pro" :size 14))

;;(setq doom-font (font-spec :family "Hack Nerd Font" :size 14)
;;      doom-variable-pitch-font (font-spec :family "Hack Nerd Font" :size 14)
;;      doom-big-font (font-spec :family "Hack Nerd Font" :size 20)
;;      doom-symbol-font (font-spec :family "Hack Nerd Font" :size 14)
;;      doom-serif-font (font-spec :family "Hack Nerd Font" :size 14))
;;
;;(setq doom-modeline-icon t)
;;(setq all-the-icons-scale-factor 1.1)
;;(setq doom-modeline-major-mode-icon t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 기본 영문 폰트 설정 (JetBrainsMono Nerd Font Mono)
(setq doom-font (font-spec :family "JetBrainsMono Nerd Font Mono" :size 14 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "JetBrainsMono Nerd Font Mono" :size 14))

;; 한글 폰트 설정 (D2CodingLigature Nerd Font Mono)
;; 유니코드 한글 블록에만 적용
(set-fontset-font t 'hangul (font-spec :family "D2CodingLigature Nerd Font Mono" :size 14))

;; nerd-icons 설정
(use-package nerd-icons
  :custom
  (nerd-icons-font-family "JetBrainsMono Nerd Font Mono")
  :config
  (setq nerd-icons-scale-factor 1.2)
  (setq nerd-icons-default-adjust 0.0))

;; 모드라인 설정
(setq doom-modeline-icon t
      doom-modeline-major-mode-icon t
      doom-modeline-major-mode-color-icon t
      doom-modeline-height 30
      doom-modeline-bar-width 3
      doom-modeline-segment-padding 2
      doom-modeline-icon-size 12)

;; 모드라인 폰트 설정 (영문 기준)
(set-face-attribute 'mode-line nil :family "JetBrainsMono Nerd Font Mono" :height 140)
(set-face-attribute 'mode-line-inactive nil :family "JetBrainsMono Nerd Font Mono" :height 140)

;; 아이콘 폰트 설정
(set-fontset-font t 'symbol "JetBrainsMono Nerd Font Mono" nil 'prepend)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;(setq doom-font (font-spec :family "Hack Nerd Font" :size 14 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Hack Nerd Font" :size 12))
;;
;;(use-package nerd-icons
;;  :custom
;;  (nerd-icons-font-family "Hack Nerd Font"))
;;
;;;;(set-fontset-font t 'symbol "Hack Nerd Font" nil 'prepend)
;;
;;(setq doom-modeline-icon-size 12)  ; 모드라인 아이콘 크기를 폰트 크기에 맞춥니다.
;;
;;(set-face-attribute 'mode-line nil :family "Hack Nerd Font" :height 120)
;;(set-face-attribute 'mode-line-inactive nil :family "Hack Nerd Font" :height 120)
;;
;;(setq nerd-icons-scale-factor 1.2)  ; 값을 조금씩 증가시켜 보세요 (예: 1.1, 1.2, 1.3)
;;(setq nerd-icons-default-adjust 0.2)  ; 기본값은 -0.2입니다. 양수 값으로 설정하면 간격이 넓어집니다.
;;(setq doom-modeline-segment-padding 2)  ; 기본값은 1입니다. 필요에 따라 조정하세요.
;;
;;(setq doom-modeline-icon t)
;;(setq doom-modeline-major-mode-icon t)
;;(setq doom-modeline-major-mode-color-icon t)
;;(setq doom-modeline-hud t)

;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;;
;; LSP pylsp
;; (use-package lsp-mode
;;  :config
;;  (setq lsp-pyls-server-command "pdm run pylsp"))
;;
(setenv "PYTHONPATH" (shell-command-to-string "pdm info --python-path"))

(after! python
  (setq python-shell-interpreter "pdm"
        python-shell-interpreter-args "run python"))

(after! lsp-pyright
  (setq lsp-pyright-venv-path (expand-file-name "~/.local/share/pdm/venvs")))


(use-package! pyvenv
  :config
  (pyvenv-mode 1)
  (add-hook 'python-mode-hook
            (lambda ()
              (when-let ((pdm-root (locate-dominating-file default-directory "pyproject.toml")))
                (pyvenv-activate (expand-file-name ".venv" pdm-root))))))

(use-package! denote
  :config
  (setq denote-directory (expand-file-name "~/SynologyDrive/syncthing/denote"))
  (setq denote-known-keywords '("work" "personal" "project"))
  (setq denote-infer-keywords t)
  (setq denote-sort-keywords t)
  (setq denote-file-type nil) ; 파일 확장자 설정 (nil은 .org)
  (setq denote-prompts '(title keywords))
  (setq denote-allow-multi-word-keywords t))


(after! lsp-mode
  (set-eglot-client! 'python-mode '("pylsp"))
  (setq lsp-pylsp-server-command
        (list (expand-file-name "__pypackages__/3.13/bin/pylsp" (projectile-project-root)))))

(setq lsp-pylsp-plugins-black-enabled t)
(setq lsp-pylsp-plugins-mypy-enabled t)
(setq lsp-pylsp-plugins-ruff-enabled t)


;; eshell

(setq eshell-scroll-to-bottom-on-output nil)
(setq eshell-scroll-show-maximum-output nil)

(use-package capf-autosuggest
  :hook (eshell-mode . capf-autosuggest-mode))

(use-package corfu
  :custom
  (corfu-auto t)
  (corfu-cycle t)
  :init (global-corfu-mode))

(use-package cape
  :init
  (add-to-list 'completion-at-point-functions #'cape-file))

(add-hook 'eshell-post-command-hook 'ha-eshell-store-last-output)

(defun ha-eshell-store-last-output ()
  (setq ha-eshell-last-output
        (buffer-substring eshell-last-output-start
                          eshell-last-output-end)))

(setq eshell-history-size 10000)
(setq eshell-save-history-on-exit t)
(setq eshell-hist-ignoredups t)

;; uutils-coreutils , gls
(setenv "PATH" (concat "/usr/local/opt/uutils-coreutils/libexec/uubin:" (getenv "PATH")))
(setq exec-path (cons "/usr/local/opt/uutils-coreutils/libexec/uubin" exec-path))

;; rye
(setenv "PATH" (concat (getenv "HOME") "/.rye/shims:" (getenv "PATH")))
(setq exec-path (cons (expand-file-name "~/.rye/shims") exec-path))

(after! python
  (setq python-shell-interpreter "python"
        python-shell-virtualenv-root (expand-file-name "~/.rye/shims")
        lsp-pyright-python-executable-cmd "python"))

;; chezmoi
(global-set-key (kbd "C-c C f")  #'chezmoi-find)
(global-set-key (kbd "C-c C s")  #'chezmoi-write)

;; eol
