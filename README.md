# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.


# ⚙️ Custom changes

## Colorscheme
Change the default colorscheme to tokyonight-storm ('lua/plugins/tokyonight.lua').

## Vertical line
- Default colorcolumn to 100 chars ('lua/config/options.lua': vertical line);
- Default colorcolumn color ('after/plugin/color.lua').

## Keymap for autocompletion
Change the default keymap for the 'saghen/blink.cmp' plugin's select/accept suggestions
('lua/plugins/completion.lua').

## Trailing spaces
Highlight and trim trailing spaces by using the 'cappyzawa/trim.nvim' plugin
('lua/plugins/trim.lua', 'after/plugin/trim.lua').

## Cursor highlight and blinking
('lua/config/options.lua': cursor highlight and blinking).

## Winbar
Enable winbar by default ('lua/config/options.lua': winbar).

## Row wrapping
Enable row wrapping by default ('lua/config/options.lua': row wrapping).

## Check spelling
Enable spelling checker by default ('lua/config/options.lua': spelling checker).

## Autoformat
Disable autoformat by default ('lua/config/options.lua': Disable autoformat).

## Keymap for moveline
Change the default keymap for moving lines ('lua/config/keymaps.lua': moveline).

## Keymap for [switching between / resizing] windows
Change the default keymap for [switching between / resizing] windows:
- ('lua/config/keymaps.lua': Move to window using the <ctrl> arrow keys);
- ('lua/config/keymaps.lua': Resize window using <ctrl> hjkl keys).

## Keymap for switching between buffer tabs
Change the default keymap for switching between buffer tabs
('lua/config/keymaps.lua': Switch between buffer tabs).

