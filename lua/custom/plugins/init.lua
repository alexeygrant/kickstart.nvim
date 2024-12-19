-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

local prefix = 'custom.plugins.'
return {
  -- Setup
  require(prefix .. 'setup.options'),
  require(prefix .. 'setup.keymaps'),

  -- Optional plugins
  require(prefix .. 'optional.copilot'),
  -- require (prefix..'optional.supermaven'),
}
