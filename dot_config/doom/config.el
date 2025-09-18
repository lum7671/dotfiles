;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Nate Doohyun Jang"
      user-mail-address "antz@duck.com")

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

(setq default-input-method "korean-hangul3f")

;;; (setq doom-unicode-font (font-spec :family "D2CodingLigature Nerd Font Mono" :size 14))
(setq doom-font (font-spec :family "D2CodingLigature Nerd Font Propo" :size 14)
      doom-symbol-font (font-spec :family "JetBrainsMono Nerd Font Mono" :size 14))

;; nerd-icons 설정
(use-package nerd-icons
  :custom
  (nerd-icons-font-family "JetBrainsMono Nerd Font Mono")
  :config
  (setq nerd-icons-scale-factor 1.5)
  (setq nerd-icons-default-adjust -0.1))
;;;
;; 모드라인 설정
(setq doom-modeline-icon t
      doom-modeline-major-mode-icon t
      doom-modeline-major-mode-color-icon t
      doom-modeline-height 30
      doom-modeline-bar-width 3
      doom-modeline-segment-padding 2
      doom-modeline-icon-size 12)
;;;
;;; ;; 모드라인 폰트 설정 (영문 기준)
;;; (set-face-attribute 'mode-line nil :family "JetBrainsMono Nerd Font Mono" :height 140)
;;; (set-face-attribute 'mode-line-inactive nil :family "JetBrainsMono Nerd Font Mono" :height 140)
;;;
;;; ;; 아이콘 폰트 설정
;;; (set-fontset-font t 'symbol "JetBrainsMono Nerd Font Mono" nil 'prepend)

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

;; Ruff LSP 및 포매터 설정
(add-hook 'python-mode-hook 'eglot-ensure)

(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(python-mode . ("ruff" "server")))
  (add-hook 'after-save-hook 'eglot-format))

(require 'flymake-ruff)
(add-hook 'python-mode-hook #'flymake-ruff-load)

(require 'ruff-format)
(add-hook 'python-mode-hook 'ruff-format-on-save-mode)


(use-package! denote
  :config
  (setq denote-directory (expand-file-name "~/SynologyDrive/syncthing/denote"))
  (setq denote-known-keywords '("work" "personal" "project"))
  (setq denote-infer-keywords t)
  (setq denote-sort-keywords t)
  (setq denote-file-type nil) ; 파일 확장자 설정 (nil은 .org)
  (setq denote-prompts '(title keywords))
  (setq denote-allow-multi-word-keywords t))

;; Rye shims 경로 추가 (이미 적용됨)
(setenv "PATH" (concat (getenv "HOME") "/.rye/shims:" (getenv "PATH")))
(setq exec-path (cons (expand-file-name "~/.rye/shims") exec-path))

;; Python 인터프리터를 Rye의 shim python으로 지정
(after! python
  (setq python-shell-interpreter "python"
        python-shell-virtualenv-root nil
        lsp-pyright-python-executable-cmd "python"))

;; 프로젝트별 .venv 자동 활성화 (Rye 사용)
(use-package! pyvenv
  :config
  (pyvenv-mode 1)
  (add-hook 'python-mode-hook
            (lambda ()
              (when-let ((venv-root (locate-dominating-file default-directory ".venv")))
                (pyvenv-activate (expand-file-name ".venv" venv-root))))))

;; 필요하다면 PYTHONPATH도 수동 설정 가능 (대부분 필요 없음)
;; (setenv "PYTHONPATH" "<원하는 경로>")

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

;; aidermacs - AI pair programming with Aider
(use-package! aidermacs
  :bind (("C-c a" . aidermacs-transient-menu))
  :config
  ;; aider 프로그램 경로 설정
  (setq aidermacs-program (expand-file-name "~/.aider-env/bin/aider"))
  
  ;; OpenCode 토큰을 찾는 함수
  (defun get-opencode-api-key ()
    "OpenCode에서 사용하는 API 키를 찾습니다."
    (or 
     ;; 1. 환경변수에서 확인
     (getenv "OPENCODE_API_KEY")
     (getenv "ANTHROPIC_API_KEY") 
     (getenv "OPENAI_API_KEY")
     ;; 2. 설정 파일에서 확인 (JSON 형태)
     (let* ((config-files '("~/.config/opencode/config.json"
                           "~/.opencode/config.json" 
                           "~/.config/opencode/settings.json"
                           "~/Library/Application Support/OpenCode/config.json"))
            (api-key nil))
       (dolist (file config-files api-key)
         (let ((expanded-file (expand-file-name file)))
           (when (and (file-exists-p expanded-file) (not api-key))
             (with-temp-buffer
               (insert-file-contents expanded-file)
               (goto-char (point-min))
               (when (re-search-forward "\"\\(anthropic\\|openai\\)_api_key\"\\s-*:\\s-*\"\\([^\"]+\\)\"" nil t)
                 (setq api-key (match-string 2))))))))
     ;; 3. macOS keychain에서 확인 시도
     (ignore-errors
       (string-trim 
        (shell-command-to-string 
         "security find-generic-password -s 'opencode' -w 2>/dev/null || security find-generic-password -s 'anthropic' -w 2>/dev/null")))))

  ;; OpenCode 토큰 설정
  (let ((opencode-token (get-opencode-api-key)))
    (when opencode-token
      ;; Anthropic 토큰으로 우선 설정 (OpenCode에서 주로 Claude 사용)
      (if (string-match-p "^sk-ant-" opencode-token)
          (setenv "ANTHROPIC_API_KEY" opencode-token)
        ;; OpenAI 토큰인 경우  
        (setenv "OPENAI_API_KEY" opencode-token))
      (message "OpenCode API 키가 설정되었습니다.")))

  ;; 수동 설정 옵션 (OpenCode 토큰을 직접 입력하고 싶은 경우)
  ;; 아래 라인의 주석을 해제하고 실제 토큰을 입력하세요:
  ;; (setenv "ANTHROPIC_API_KEY" "sk-ant-your-opencode-token-here")
  ;; 또는
  ;; (setenv "OPENAI_API_KEY" "sk-your-opencode-token-here")
  
  :custom
  ;; OpenCode와 유사한 설정으로 구성
  (aidermacs-default-chat-mode 'code)
  (aidermacs-default-model 
   (cond 
    ;; Anthropic Claude (OpenCode에서 주로 사용)
    ((getenv "ANTHROPIC_API_KEY") "claude-3-5-sonnet-20241022")
    ;; DeepSeek (저렴한 대안)
    ((getenv "DEEPSEEK_API_KEY") "deepseek/deepseek-coder")
    ;; OpenAI GPT (대안)
    ((getenv "OPENAI_API_KEY") "gpt-4o")
    ;; 기본: 로컬 코딩 특화 모델
    (t "ollama/deepseek-coder-v2-instruct")))
  
  (aidermacs-backend 'vterm)
  (aidermacs-auto-commits nil)
  (aidermacs-show-diff-after-change t)
  (aidermacs-exit-kills-buffer t)
  
  ;; OpenCode와 유사한 사용 경험을 위한 추가 옵션
  (aidermacs-extra-args '("--no-auto-commits" 
                          "--show-diffs"
                          "--dark-mode"
                          "--pretty"
                          "--model" "ollama/deepseek-coder-v2-instruct")))


;; GitHub Copilot 설정
(use-package! copilot
  :hook (prog-mode . copilot-mode)
  :bind (:map copilot-completion-map
              ("<tab>" . 'copilot-accept-completion)
              ("TAB" . 'copilot-accept-completion)
              ("C-TAB" . 'copilot-accept-completion-by-word)
              ("C-<tab>" . 'copilot-accept-completion-by-word))
  :config
  ;; Copilot 완성을 표시할 때 더 명확하게 보이도록 설정
  (setq copilot-indent-offset-warning-disable t)
  ;; 한국어 주석도 잘 작동하도록 설정
  (setq copilot-max-char -1))

;; GitHub Copilot Chat 설정 (올바른 함수명 사용)
(use-package! copilot-chat
  :defer t
  :commands (copilot-chat 
             copilot-chat-ask-and-insert
             copilot-chat-explain 
             copilot-chat-fix 
             copilot-chat-optimize
             copilot-chat-test
             copilot-chat-doc
             copilot-chat-review
             copilot-chat-transient)
  :bind (("C-c c c" . copilot-chat)                    ; 메인 채팅
         ("C-c c i" . copilot-chat-ask-and-insert)     ; 질문하고 결과 삽입
         ("C-c c e" . copilot-chat-explain)            ; 코드 설명
         ("C-c c f" . copilot-chat-fix)                ; 코드 수정
         ("C-c c o" . copilot-chat-optimize)           ; 코드 최적화
         ("C-c c t" . copilot-chat-test)               ; 테스트 생성
         ("C-c c d" . copilot-chat-doc)                ; 문서 생성
         ("C-c c r" . copilot-chat-review)             ; 코드 리뷰
         ("C-c c m" . copilot-chat-transient))         ; 메뉴
  :config
  ;; 기본 설정
  (setq copilot-chat-frontend 'shell-maker)
  (setq copilot-chat-backend 'curl)
  
  ;; GitHub 로그인 확인
  (message "GitHub Copilot Chat 로드됨. 'M-x copilot-chat'로 시작하세요."))


;; eol
