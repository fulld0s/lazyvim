-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- new file (Buffer)
vim.keymap.set("n", "<C-t>", "<cmd>enew<cr>")

-- moveline
local moveline = require("moveline")
vim.keymap.set("n", "<M-Up>", moveline.up)
vim.keymap.set("n", "<M-Down>", moveline.down)
vim.keymap.set("v", "<M-Up>", moveline.block_up)
vim.keymap.set("v", "<M-Down>", moveline.block_down)

-- Move to window using the <ctrl> arrow keys
vim.keymap.set("n", "<C-M-Left>", "<C-w>h", { desc = "Go to Left Window", remap = true })
vim.keymap.set("n", "<C-M-Down>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
vim.keymap.set("n", "<C-M-Up>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
vim.keymap.set("n", "<C-M-Right>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- Resize window using <ctrl> hjkl keys
vim.keymap.set("n", "<C-h>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-j>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-k>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-l>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Switch between buffer tabs
vim.keymap.set("n", "<M-Left>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "<M-Right>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })

-- Copy absolute path of the current file to clipboard
vim.keymap.set("n", "<F3>", "<cmd>let @+ = expand(\"%:p:h\")<cr>")

-- Copy name of the current file to clipboard
vim.keymap.set("n", "<F2>", "<cmd>let @+ = expand(\"%:t\")<cr>")

-- Row wrapping
vim.keymap.set("n", "<M-z>", "<cmd>set wrap!<cr>")

-- The selected text is deleted silently (doesn't touch the clipboard)
vim.keymap.set("x", "p", [["_dP]], { desc = "Paste without overwriting register" })

-- nvim-spectre
vim.keymap.set('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', {
    desc = "Toggle Spectre"
})
vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
    desc = "Search current word"
})
vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
    desc = "Search current word"
})
vim.keymap.set('n', '<leader>sf', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
    desc = "Search on current file"
})
