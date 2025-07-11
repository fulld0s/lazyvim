return {
  {
    "RRethy/vim-illuminate",
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
    config = function(_, opts)
      require("illuminate").configure(opts)

      -- Optional: fallback highlights if colorscheme doesn't set them
      local bg = "#514c49"
      vim.api.nvim_set_hl(0, "IlluminatedWord", { bg = bg })
      vim.api.nvim_set_hl(0, "IlluminatedCurWord", { bg = bg })
      vim.api.nvim_set_hl(0, "IlluminatedWordText", { bg = bg })
      vim.api.nvim_set_hl(0, "IlluminatedWordRead", { bg = bg })
      vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { bg = bg })

      -- Reapply on colorscheme change
      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = function()
          vim.api.nvim_set_hl(0, "IlluminatedWord", { bg = bg })
          vim.api.nvim_set_hl(0, "IlluminatedCurWord", { bg = bg })
          vim.api.nvim_set_hl(0, "IlluminatedWordText", { bg = bg })
          vim.api.nvim_set_hl(0, "IlluminatedWordRead", { bg = bg })
          vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { bg = bg })
        end,
      })
    end,
  },
}
