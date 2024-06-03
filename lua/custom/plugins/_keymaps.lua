-- q will emulate Esc in Insert, Normal and Visual modes
vim.keymap.set({'i', 'v'}, 'q', '<Esc>', {desc = 'Emulate Esc key'})
vim.keymap.set('n', 'q', ':noh<CR>', {desc = 'No search highlight'})
-- Type zz to enter q
vim.keymap.set('i', 'zz', 'q')
-- Replace ':' with ';' to enter the command mode for convenience
vim.keymap.set('n', ';', ':', { desc = 'Enter the Command mode' })
vim.keymap.set('n', ':', ';', { desc = 'Swapped : with ;' })
vim.keymap.set('n', '^', '<Nop>')
vim.keymap.set('n', 'B', '^', { desc = 'Move to the start of the line (replaced ^)' })
vim.keymap.set('n', '$', '<Nop>')
vim.keymap.set('n', 'E', '$', { desc = 'Move to the end of the line (replaced $)'})
vim.keymap.set('n', 'J', 'mjJ`j', { desc = 'Join lines without losing the current postion' })

-- Workaround for not able to search in hidden files in Telescope
vim.keymap.set('n', 'sF', '<cmd>Telescope find_files hidden=true<cr>', { desc = 'Search all files including hidden ones' })

return {}
