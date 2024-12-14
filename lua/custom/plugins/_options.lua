local o = vim.opt

o.guifont = { "JetBrainsMono\\ Nerd\\ Font", ":h10" }

o.relativenumber = true

o.clipboard = ""

-- Change configuration for plugins included with kickstart.nvim
local status, telescope = pcall(require, "telescope")
if not status then
  return {}
end

telescope.setup({
  defaults = {
    -- Override the default file_ignore_patterns
    file_ignore_patterns = {},
  },
})

return {}
