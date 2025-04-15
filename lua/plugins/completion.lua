return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      ["<CR>"] = {},
      ["<Tab>"] = { "accept", "fallback" },
      ["<Up>"] = {},
      ["<Down>"] = {},
      ["<C-Up>"] = { "select_prev", "fallback" },
      ["<C-Down>"] = { "select_next", "fallback" },
    },
  },
}
