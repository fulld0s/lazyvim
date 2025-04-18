-- trim trailing whitespace and lines
require("trim").setup({
  -- if you want to disable trim on write by default
  trim_on_write = false,

  -- disable trimming last line
  trim_last_line = false,

  -- highlight trailing spaces
  highlight = true,
})
