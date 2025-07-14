return {
  {
    "sitiom/nvim-numbertoggle",
    event = { "BufReadPost", "BufNewFile" }, -- load early, but lazily
  },
}
