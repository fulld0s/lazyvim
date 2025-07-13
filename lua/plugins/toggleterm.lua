return {
  {
    "akinsho/toggleterm.nvim",
    cmd = "ToggleTerm",
    keys = {
      {
        "<C-_>",
        function()
          local path = vim.fn.expand("%:p:h")

          local Terminal = require("toggleterm.terminal").Terminal

          -- Create a new tmux session or attach to one using the path name as identifier
          local session_name = vim.fn.fnamemodify(path, ":t") or "nvim_term"

          local term_cmd = string.format('tmux new-session -A -s "%s" -c "%s"', session_name, path)

          Terminal
            :new({
              cmd = term_cmd,
              direction = "float",
              close_on_exit = true,
              hidden = true,
              on_open = function(term)
                vim.cmd("startinsert")
              end,
            })
            :toggle()
        end,
        mode = "n",
        desc = "Toggle floating tmux terminal in file dir",
      },
    },
    opts = {
      direction = "float",
      shade_filetypes = {},
      hide_numbers = true,
      insert_mappings = true,
      terminal_mappings = true,
      start_in_insert = true,
      close_on_exit = true,
    },
  },
}
