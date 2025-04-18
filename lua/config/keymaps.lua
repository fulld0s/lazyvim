-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- new tab(buffer)
vim.keymap.set("n", "<C-t>", "<cmd>tabnew<cr>")

-- moveline
local moveline = require("moveline")
vim.keymap.set("n", "<M-Up>", moveline.up)
vim.keymap.set("n", "<M-Down>", moveline.down)
vim.keymap.set("v", "<M-Up>", moveline.block_up)
vim.keymap.set("v", "<M-Down>", moveline.block_down)

-- Move to window using the <ctrl> arrow keys
vim.keymap.set("n", "<C-Left>", "<C-w>h", { desc = "Go to Left Window", remap = true })
vim.keymap.set("n", "<C-Down>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
vim.keymap.set("n", "<C-Up>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
vim.keymap.set("n", "<C-Right>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- Resize window using <ctrl> hjkl keys
vim.keymap.set("n", "<C-h>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-j>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-k>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-l>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Switch between buffer tabs
vim.keymap.set("n", "<M-Left>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "<M-Right>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
