return {
  {
    "RRethy/vim-illuminate",
    enable = true,
    event = "CursorHold",
    opts = {
      delay = 100,
      providers = { "regex" },
      under_cursor = true,
      large_file_cutoff = 2000,
      large_file_overrides = {
        providers = { "regex" },
      },
    },
  },
}
