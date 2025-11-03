# Siena Dusk Theme

**Siena Dusk** is a warm, dark Emacs theme inspired by the evening tones of Siena — a city bathed in soft browns, deep reds, and muted blues.
It’s designed for focus and comfort during long coding sessions, balancing warmth with readability.

![Preview](https://github.com/diasbruno/siena-dusk-theme/blob/development/assets/image.png "Siena dusk theme preview.")

---

## Features

- **Dark background** with low contrast edges for eye comfort.
- **Warm browns and clay reds** for syntax highlighting.
- **Soft white foreground** for clear text readability.
- **Hints of dark blue-gray** representing dusk clouds.
- Works well for both **code** and **writing**.

---

## Installation

1. Place `siena-dusk-theme.el` in your Emacs `~/.emacs.d/themes/` directory.
2. Add the following to your Emacs config:

```elisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'siena-dusk t)
```

### Using `use-package`

```elisp
(use-package siena-dusk-theme
  :load-path "~/.emacs.d/themes/"
  :config
  (load-theme 'siena-dusk t))
```

---

## Recommended Pairings

For better syntax experience:
- **Font:** JetBrains Mono, Iosevka, or Fira Code.
- **UI Enhancements:** `rainbow-delimiters`, `hl-line-mode`, and `display-line-numbers-mode`.

---

## License

Unlicense
Feel free to modify and share.
