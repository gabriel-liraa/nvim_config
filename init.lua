require("gabriellira")

require('lualine').setup()

require('lualine').setup {
  options = {
    theme = 'dracula',
  },
}

vim.fn.setenv('PYTHON3_HOST_PROG', '~/anaconda3/bin/python')

vim.wo.number = true
vim.wo.relativenumber = true

-- Define the RunQtConsole command
vim.cmd([[command! -nargs=0 RunQtConsole call jobstart("jupyter qtconsole --JupyterWidget.include_other_output=True")]])

-- Set the ipy_celldef variable
vim.g.ipy_celldef = '^##'

-- Define key mappings
vim.api.nvim_set_keymap('n', '<leader>jqt', ':RunQtConsole<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>jk', ':IPython --existing --no-window<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>jc', '<Plug>(IPy-RunCell)', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>ja', '<Plug>(IPy-RunAll)', { silent = true })


