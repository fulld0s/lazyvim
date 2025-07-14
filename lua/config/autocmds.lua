-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("FileType", {
  pattern = "gitcommit",
  callback = function()
    vim.opt_local.colorcolumn = "73" -- vertical line at 73 to indicate 72-char limit
  end,
})

-- Enable relative line numbers only in Normal and Visual modes
vim.api.nvim_create_autocmd({ "InsertEnter" }, {
  callback = function()
    vim.opt.relativenumber = false
  end,
})
vim.api.nvim_create_autocmd({ "InsertLeave" }, {
  callback = function()
    vim.opt.relativenumber = true
  end,
})
vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained", "WinEnter" }, {
  callback = function()
    if vim.fn.mode() ~= "i" then
      vim.opt.relativenumber = true
    end
  end,
})
vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost", "WinLeave" }, {
  callback = function()
    vim.opt.relativenumber = false
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "text", "gitcommit" },
  callback = function()
    vim.opt_local.formatoptions:append("t")
    vim.opt_local.textwidth = 80
    vim.opt_local.formatexpr = ""
    vim.opt_local.formatprg = ""  -- fallback to internal gq formatter
  end,
})

-- ASCII Box for Visual Selection
function _G.ascii_box()
  local s_row = vim.fn.line("'<")
  local e_row = vim.fn.line("'>")
  local lines = vim.api.nvim_buf_get_lines(0, s_row - 1, e_row, false)
  -- Determine the longest line
  local max_len = 0
  for _, l in ipairs(lines) do
    if #l > max_len then max_len = #l end
  end
  -- Build boxed lines
  local top = "+" .. string.rep("-", max_len + 2) .. "+"
  local bottom = top
  local boxed = {}

  table.insert(boxed, top)
  for _, line in ipairs(lines) do
    local pad = string.rep(" ", max_len - #line)
    table.insert(boxed, "| " .. line .. pad .. " |")
  end
  table.insert(boxed, bottom)
  -- Replace lines in buffer
  vim.api.nvim_buf_set_lines(0, s_row - 1, e_row, false, boxed)
end
-- Optional keymap
vim.keymap.set("v", "<leader>ab", ":<C-u>lua ascii_box()<CR>", { desc = "ASCII Box" })
