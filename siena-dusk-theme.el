;;; siena-dusk-theme.el --- A warm dark Emacs theme inspired by Siena at dusk -*- lexical-binding: t; -*-

;; Copyright (C) 2025  Bruno Dias

;; Author: Bruno Dias <your.email@example.com>
;; Maintainer: Bruno Dias <your.email@example.com>
;; Created: November 2025
;; Version: 1.1
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
       (green-color "#7a913c")
       (creme-color "#d19a66")
       (brownish-color "#a86c4c")
       (brown-color "#6f4c3a")
       (dark-blue-color "#34495e")
       (light-red-color "#ba6f5d")
       (red-color "#b45a44")
       (light-blue-color "#92a8b6")
       (light-gray-color "#71797f")
       (light-creme-color "#e7b97b")
       (cocoa-color "#9c5938")
       (comment light-gray-color)
       (string light-blue-color)
       (keyword cocoa-color)
       (function light-creme-color)
       (error red-color)
       (success green-color)
       (warning light-red-color)
       (link light-blue-color))
  (custom-theme-set-faces
   'siena-dusk
   `(default ((t (:background ,bg :foreground ,fg))))
   `(cursor ((t (:background ,fg))))
   `(region ((t (:background ,brown-color :foreground ,fg))))
   `(font-lock-comment-face ((t (:foreground ,comment :slant italic))))
   `(font-lock-keyword-face ((t (:foreground ,keyword :weight bold))))
   `(font-lock-string-face ((t (:foreground ,string))))
   `(font-lock-function-name-face ((t (:foreground ,function :weight bold))))
   `(font-lock-type-face ((t (:foreground ,creme-color :weight bold))))
   `(font-lock-constant-face ((t (:foreground ,string :weight bold))))
   `(font-lock-variable-name-face ((t (:foreground ,brownish-color))))
   `(minibuffer-prompt ((t (:foreground ,creme-color :weight bold))))
   `(mode-line ((t (:background ,dark-blue-color :foreground ,fg :box nil))))
   `(mode-line-inactive ((t (:background ,bg :foreground ,comment))))
   `(highlight ((t (:background ,dark-blue-color))))
   `(trailing-whitespace ((t (:background ,red-color))))
   `(fringe ((t (:background ,bg))))
   `(success ((t (:foreground ,success :weight bold))))
   `(warning ((t (:foreground ,warning :weight bold))))
   `(error ((t (:foreground ,error :weight bold))))
   `(link ((t (:foreground ,link :underline t))))))

;;;###autoload
(when (and load-file-name (boundp 'custom-theme-load-path))
 (add-to-list
      'custom-theme-load-path
      (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'siena-dusk)
;;; siena-dusk-theme.el ends here
(hl-line-mode)
