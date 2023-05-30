require("gabriellira")

vim.o.termguicolors = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.wo.number = true
vim.wo.relativenumber = true

-- Mapeamento para formatar o código Python com o Black
vim.api.nvim_set_keymap('n', '<leader>f', ':!black %<CR>', { noremap = true, silent = true })

