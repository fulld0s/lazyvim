-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- vertical line
vim.opt.colorcolumn = "100"

-- cursor highlight and blinking
vim.cmd.highlight({ "colCursor", "guibg=#ffaa00" })
vim.o.guicursor = table.concat({
  "n-v-c:block-Cursor/lCursor-colCursor-blinkwait1000-blinkon100-blinkoff100",
  "i-ci:ver25-Cursor/lCursor-colCursor-blinkwait1000-blinkon100-blinkoff100",
  "r:hor50-Cursor/lCursor-colCursor-blinkwait100-blinkon100-blinkoff100",
}, ",")

-- winbar
vim.opt.winbar = "%=%m %f"

-- row wrapping
vim.opt.wrap = true

-- spelling checker
vim.opt.spell = true

-- Disable autoformat
vim.g.autoformat = false
