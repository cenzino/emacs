;; Custum settings ------------------------------------------------------
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

;; Load ext -------------------------------------------------------------
(add-to-list 'load-path "~/.emacs.d/ext/")

;; Global settings ------------------------------------------------------
;; Disabilita lo startup screen
(setq inhibit-startup-message t)

;; Disabilita il backup dei file
(setq make-backup-files nil)

;; Pdee -----------------------------------------------------------------
(add-to-list 'load-path "~/.emacs.d/ext/pdee/")
(defvar pdee-install-dir "~/.emacs.d/ext/pdee/")
(load-file "~/.emacs.d/ext/pdee/pdee-init.el")

(setq pdee-load-all nil)
(require 'pdee-init)   ;; Set up pdee load paths
(require 'pdee-python) ;; If you want the python facilities [optional]
(require 'pdee-completion) ;; If you want the autocompletion settings [optional]
(require 'pdee-editing) ;; For configurations related to editing [optional]
(require 'pdee-bindings) ;; For my suggested keybindings [optional]

;; Html Tab -------------------------------------------------------------
(add-hook 'html-mode-hook
          (lambda()
            (setq sgml-basic-offset 4)
            (setq indent-tabs-mode t)))

;; Markdown -------------------------------------------------------------
(autoload 'markdown-mode "markdown-mode.el" 
  "Major mode for editing Markdown files" t)
(setq auto-mode-alist 
      (cons '("\\.markdown" . markdown-mode) auto-mode-alist))