local function get_shell()
  if vim.fn.has 'win32' == 1 then
    return 'pwsh.exe'
  else
    return vim.o.shell
  end
end

return {
  -- amongst your other plugins
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup {
        direction = 'float',
        shell = get_shell(),
      }
    end,
  },
}
