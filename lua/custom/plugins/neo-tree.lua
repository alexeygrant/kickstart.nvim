vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  "nvim-neo-tree/neo-tree.nvim",
  lazy = false,
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  keys = {
    {
      '<Leader>t',
      ':Neotree toggle<CR>',
      desc = 'Toggle Neotree sidebar',
    }
  },
  config = function ()
    require('neo-tree').setup {
      event_handlers = {
        {
          event = "file_opened",
          handler = function(_)
            require('neo-tree').close_all()
          end
        },
      },
      filesystem = {
        close_on_open = true,
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_by_name = {},
          never_show = { ".git" }
        }
      },
      window = {
        mappings = {
          ['e'] = function() vim.api.nvim_exec('Neotree focus filesystem left', true) end,
          ['b'] = function() vim.api.nvim_exec('Neotree focus buffers left', true) end,
          ['g'] = function() vim.api.nvim_exec('Neotree focus git_status left', true) end,
        },
      },
    }
  end,
}
