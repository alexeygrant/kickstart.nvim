vim.o.foldcolumn = '1'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.foldenable = true

return {
  'kevinhwang91/nvim-ufo',
  -- lazy = false,
  lazy = true,
  dependencies = {
    'kevinhwang91/promise-async',
  },
  keys = {
    {
      'zR',
      function()
        require('ufo').openAllFolds()
      end,
      desc = 'Open all folds (ufo)',
    },
    {
      'zM',
      function()
        require('ufo').closeAllFolds()
      end,
      desc = 'Close all folds (ufo)',
    },
    {
      'zK',
      function()
        require('ufo').closeAllFolds()
        local winid = require('ufo').peekFoldedLinesUnderCursor()
        if not winid then
          vim.lsp.buf.hover()
        end
      end,
      desc = 'Peek Fold',
    },
    {
      '<Backspace>',
      'za',
      desc = 'Toggle folding (same as za)',
    },
  },
  config = function()
    -- require('ufo').setup {
    --   provider_selector = function(bufnr, filetype, buftype)
    --     return { 'lsp', 'indent' }
    --   end,
    -- }
    require('ufo').setup {
      provider_selector = function(bufnr, filetype, buftype)
        return { 'treesitter', 'indent' }
      end,
    }
  end,
}
