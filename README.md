# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.


# ⚙️ Custom changes

## Colorscheme
Set colorscheme as catppuccin macchiato:
- [lua/plugins/catppuccin.lua](lua/plugins/catppuccin.lua)
- [lua/plugins/colorscheme.lua](lua/plugins/colorscheme.lua)

## Vertical line
- Default colorcolumn to 100 chars
([lua/config/options.lua](lua/config/options.lua#L5));
- Default colorcolumn color ([after/plugin/color.lua](after/plugin/color.lua)).

## Keymap for autocompletion
Change the default keymap for the [saghen/blink.cmp](https://github.com/Saghen/blink.cmp) plugin's select/accept suggestions
([lua/plugins/completion.lua](lua/plugins/completion.lua)).

## Trailing spaces
Highlight and trim trailing spaces by using the [cappyzawa/trim.nvim](https://github.com/cappyzawa/trim.nvim) plugin
([lua/plugins/trim.lua](lua/plugins/trim.lua), [after/plugin/trim.lua](after/plugin/trim.lua)).

## Cursor highlight and blinking
[lua/config/options.lua](lua/config/options.lua#L8)

## Winbar
Enable winbar by default
([lua/config/options.lua](lua/config/options.lua#L16)).

## Row wrapping
Disable row wrapping by default
([lua/config/options.lua](lua/config/options.lua#L19)).

## Check spelling
Enable spelling checker by default
([lua/config/options.lua](lua/config/options.lua#L22)).

## Autoformat
Disable autoformat by default
([lua/config/options.lua](lua/config/options.lua#L25)).

## Diagnostics
Disable diagnostics by default
([lua/config/options.lua](lua/config/options.lua#L28)).

## Animations
Disable all animations by default
([lua/config/options.lua](lua/config/options.lua#L31)).

## Mini pairs
Disable mini pairs by default
([lua/config/options.lua](lua/config/options.lua#L34)).

## Keymap for new window (buffer tab)
Change the default keymap for creating a new window (buffer tab)
([lua/config/keymaps.lua](lua/config/keymaps.lua#L5)).

## Keymap for moveline
Change the default keymap for moving lines
([lua/config/keymaps.lua](lua/config/keymaps.lua#L8)).

## Keymap for (switching between) / (resizing) windows
Change the default keymap for (switching between / resizing) windows:
- [lua/config/keymaps.lua](lua/config/keymaps.lua#L15);
- [lua/config/keymaps.lua](lua/config/keymaps.lua#L21);
- Should be comment: /home/\<user\>/.local/share/nvim/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:19
(-- Resize window using \<ctrl\> arrow keys).

## Keymap for switching between buffer tabs
Change the default keymap for switching between buffer tabs
([lua/config/keymaps.lua](lua/config/keymaps.lua#L27)).

## Toggle floating terminal
Run toggle floating terminal in the current file directory by pressing \<F4\>
([lua/plugins/tokyonight.lua](lua/plugins/toggleterm.lua)).

## Copy absolute path of the current file to clipboard
[lua/config/keymaps.lua](lua/config/keymaps.lua#L31)

## Copy name of the current file to clipboard
[lua/config/keymaps.lua](lua/config/keymaps.lua#L34)

## Disable italic for font
[lua/plugins/tokyonight.lua](lua/plugins/tokyonight.lua#L8)

## Change vim-illuminate provider to regex
[lua/plugins/vim-illuminate.lua](lua/plugins/vim-illuminate.lua)

## Mouse scrollbar
[lua/plugins/nvim-scrollview.lua](lua/plugins/nvim-scrollview.lua)

## Org-list
[hamidi-dev/org-list.nvim](https://github.com/hamidi-dev/org-list.nvim)
<br>
[lua/plugins/org-list.lua](lua/plugins/org-list.lua)
