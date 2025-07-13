return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    priority = 1000,
    dependencies = {
      "LazyVim/LazyVim",
    },
    opts = {
      flavour = "macchiato",
      -- Disable italic
      no_italic = true,
      -- Override default colors
      color_overrides = {
        all = {
          lavender = "#DC8A78",
          base = "#101216",
          mantle = "#101216",
          crust = "#101216",
        },
      },
    },
  },
}
