# 0xsd-tmux-theme

Powerline-styled tmux theme

<p align="center"><img src="./screenshots/0xsd-tmux-screenshot.png"/></p>

Based on [tmux-cryptomilk-theme](https://github.com/cryptomilk/tmux-cryptomilk-theme) (which is based on [tmux-dark-plus-theme](https://github.com/khanghh/tmux-dark-plus-theme))

I like the Dark+ theme. I really like the minor but significant changes @cryptomilk made. I added truecolor palette and my personal QOL updates.

The truecolor-palette change is in a separate fork and will be submitted for PR consideration to cryptomilk. THIS repo contains that code PLUS my personalzation. Yes, I realize I have to refactor and un-f$xk things if they accept and merge my PR.

## Installation

### Install using [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

1. Add plugin to the list of TPM plugins in `.tmux.conf`:
(NOTE - NOT SURE THIS WORKS YET. Need verify, i might need to register with TPM somewhere; I know nothing of how TPM looks up plugins.)

        set -g @plugin '0xSheepdog/0xsd-tmux#main'

2. Hit `prefix + I` to fetch the plugin and source it. The theme should now be working.

### Install manually

1. Clone repo to local machine:

        git clone https://github.com/0xSheepdog/0xsd-tmux \
            ~/.config/tmux/themes/0xsd-tmux

2. Add this line to the bottom of your `~/.tmux.conf`:

        run-shell "~/.config/tmux/themes/0xsd-tmux/0xsd.tmux"

3. Reload your `~/.tmux.conf`:

        tmux source-file ~/.tmux.conf

## License

MIT
