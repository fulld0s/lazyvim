return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    name = "render-markdown.nvim",
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' },
    ft = { "markdown" },
    config = function()
      require("render-markdown").setup({})
    end,
  },
}
