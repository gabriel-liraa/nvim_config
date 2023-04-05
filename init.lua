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
