# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.


# ⚙️ Custom changes

## Colorscheme
Change the default colorscheme to tokyonight-storm
('[lua/plugins/tokyonight.lua](lua/plugins/tokyonight.lua)').

## Vertical line
- Default colorcolumn to 100 chars
('[lua/config/options.lua](https://github.com/fulld0s/lazyvim/blob/cf1be585c94d1950da3bf15b8275f63e84e65937/lua/config/options.lua#L5)': vertical line);
- Default colorcolumn color ('[after/plugin/color.lua](after/plugin/color.lua)').

## Keymap for autocompletion
Change the default keymap for the '[saghen/blink.cmp](https://github.com/Saghen/blink.cmp)' plugin's select/accept suggestions
('[lua/plugins/completion.lua](lua/plugins/completion.lua)').

## Trailing spaces
Highlight and trim trailing spaces by using the '[cappyzawa/trim.nvim](https://github.com/cappyzawa/trim.nvim)' plugin
('[lua/plugins/trim.lua](lua/plugins/trim.lua)', '[after/plugin/trim.lua](after/plugin/trim.lua)').

## Cursor highlight and blinking
'[lua/config/options.lua](https://github.com/fulld0s/lazyvim/blob/cf1be585c94d1950da3bf15b8275f63e84e65937/lua/config/options.lua#L8)': cursor highlight and blinking.

## Winbar
Enable winbar by default
('[lua/config/options.lua](https://github.com/fulld0s/lazyvim/blob/cf1be585c94d1950da3bf15b8275f63e84e65937/lua/config/options.lua#L16)': winbar).

## Row wrapping
Enable row wrapping by default
('[lua/config/options.lua](https://github.com/fulld0s/lazyvim/blob/cf1be585c94d1950da3bf15b8275f63e84e65937/lua/config/options.lua#L19)': row wrapping).

## Check spelling
Enable spelling checker by default
('[lua/config/options.lua](https://github.com/fulld0s/lazyvim/blob/cf1be585c94d1950da3bf15b8275f63e84e65937/lua/config/options.lua#L22)': spelling checker).

## Autoformat
Disable autoformat by default
('[lua/config/options.lua](https://github.com/fulld0s/lazyvim/blob/cf1be585c94d1950da3bf15b8275f63e84e65937/lua/config/options.lua#L25)': Disable autoformat).

## Keymap for new buffer tab
Change the default keymap for creating a new buffer tab
('[lua/config/keymaps.lua](https://github.com/fulld0s/lazyvim/blob/cf1be585c94d1950da3bf15b8275f63e84e65937/lua/config/keymaps.lua#L5C4-L5C19)': new tab(buffer)).

## Keymap for moveline
Change the default keymap for moving lines
('[lua/config/keymaps.lua](https://github.com/fulld0s/lazyvim/blob/cf1be585c94d1950da3bf15b8275f63e84e65937/lua/config/keymaps.lua#L8)': moveline).

## Keymap for (switching between / resizing) windows
Change the default keymap for (switching between / resizing) windows:
- '[lua/config/keymaps.lua](https://github.com/fulld0s/lazyvim/blob/cf1be585c94d1950da3bf15b8275f63e84e65937/lua/config/keymaps.lua#L15)': Move to window using the <ctrl> arrow keys;
- '[lua/config/keymaps.lua](https://github.com/fulld0s/lazyvim/blob/cf1be585c94d1950da3bf15b8275f63e84e65937/lua/config/keymaps.lua#L21)': Resize window using <ctrl> hjkl keys.

## Keymap for switching between buffer tabs
Change the default keymap for switching between buffer tabs
('[lua/config/keymaps.lua](https://github.com/fulld0s/lazyvim/blob/cf1be585c94d1950da3bf15b8275f63e84e65937/lua/config/keymaps.lua#L27)': Switch between buffer tabs).

