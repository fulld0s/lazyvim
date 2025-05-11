-- Configure LazyVim to load tokyonight-storm
return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "moon",
      -- Disable italic
      styles = {
        keywords = { italic = false },
        comments = { italic = false },
      },
    },
  },
}
