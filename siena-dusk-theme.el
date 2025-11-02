;;; siena-dusk-theme.el --- A warm dark Emacs theme inspired by Siena at dusk -*- lexical-binding: t; -*-

;; Copyright (C) 2025  Bruno Dias

;; Author: Bruno Dias <your.email@example.com>
;; Maintainer: Bruno Dias <your.email@example.com>
;; Created: November 2025
;; Version: 1.0
;; Package-Requires: ((emacs "24.1"))
;; Keywords: faces, theme, dark, warm
;; Homepage: https://github.com/diasbruno/siena-dusk-theme
;; URL: https://github.com/diasbruno/siena-dusk-theme

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Siena Dusk is a warm, dark Emacs theme inspired by the glowing amber lights
;; and deep blue twilight of Siena’s skyline at sunset.
;;
;; The palette combines rich terracotta tones, golden highlights, and deep
;; dusk blues — creating a cozy, cinematic atmosphere for late-night coding.
;;
;; Features:
;; - Warm amber-gold accents for keywords and functions
;; - Deep twilight background for low eye strain
;; - Balanced contrast for both writing and development
;; - Designed for GUI and terminal use

;; To use:
;;   1. Save this file to your `~/.emacs.d/themes/` directory.
;;   2. Add the following to your Emacs configuration:
;;
;;        (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;;        (load-theme 'siena-dusk t)
;;
;; Alternatively, if using use-package:
;;
;;        (use-package siena-dusk-theme
;;          :load-path "~/.emacs.d/themes/"
;;          :config (load-theme 'siena-dusk t))
;;
;; Enjoy the warmth of a Tuscan evening in your code editor.

;;; Code:


(deftheme siena-dusk
  "A warm dark theme inspired by the city lights of Siena at dusk.")

(let* ((bg "#12181c")
      (fg  "#f2efe9")
      (accent "#d19a66")
      (accent2 "#a86c4c")
      (accent3 "#6f4c3a")
      (accent4 "#34495e")
      (comment "#71797f")
      (string "#92a8b6")
      (keyword "#9c5938")
      (function "#e7b97b")
      (error "#b45a44")
      (link string))
  (custom-theme-set-faces
   'siena-dusk
   `(default ((t (:background ,bg :foreground ,fg))))
   `(cursor ((t (:background ,accent))))
   `(region ((t (:background ,accent3 :foreground ,fg))))
   `(font-lock-comment-face ((t (:foreground ,comment :slant italic))))
   `(font-lock-keyword-face ((t (:foreground ,keyword :weight bold))))
   `(font-lock-string-face ((t (:foreground ,string))))
   `(font-lock-function-name-face ((t (:foreground ,function :weight bold))))
   `(font-lock-variable-name-face ((t (:foreground ,accent2))))
   `(minibuffer-prompt ((t (:foreground ,accent :weight bold))))
   `(mode-line ((t (:background ,accent4 :foreground ,fg :box nil))))
   `(mode-line-inactive ((t (:background ,bg :foreground ,comment :box (:color ,bg)))))
   `(error ((t (:foreground ,error :weight bold))))
   `(link ((t (:foreground ,link :underline t))))))

;;;###autoload
(when (and load-file-name (boundp 'custom-theme-load-path))
 (add-to-list
      'custom-theme-load-path
      (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'siena-dusk)
;;; siena-dusk-theme.el ends here
