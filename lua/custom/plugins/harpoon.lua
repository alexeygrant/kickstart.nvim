return {
  'ThePrimeagen/harpoon',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-lua/popup.nvim',
  },
  lazy = false,
  keys = {
    {
      '<Leader>\\',
      function() require("harpoon.mark").add_file() end,
      desc = 'Add the file to Harpoon list',
    },
    {
     '<Leader>l',
     function() require("harpoon.ui").toggle_quick_menu() end,
     desc = 'Toggle Harpoon file list',
    },
    {
     '<Leader>n',
     function() require("harpoon.ui").nav_next() end,
     desc = 'Move to Harpoon next',
    },
    {
     '<Leader>N',
     function() require("harpoon.ui").nav_prev() end,
     desc = 'Move to Harpoon previous',
    },
    {
     '<Leader>1',
     function() require("harpoon.ui").nav_file(1) end,
     desc = 'Jump to Harpoon file #1',
    },
    {
     '<Leader>2',
     function() require("harpoon.ui").nav_file(2) end,
     desc = 'Jump to Harpoon file #2',
    },
    {
     '<Leader>3',
     function() require("harpoon.ui").nav_file(3) end,
     desc = 'Jump to Harpoon file #3',
    },
  },
}
