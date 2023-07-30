vim.g.mapleader = " "

vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("x", "<leader>p", [["_dP]])

-- Mapeamento para formatar o código Python com o Black
vim.api.nvim_set_keymap('n', '<leader>f', ':!black %<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
vim.keymap.set('n', '<Leader>dr', function() require('dap').continue() end)
vim.keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>}', function() require('dap').step_over() end)
vim.keymap.set('n', '<Leader>]', function() require('dap').step_into() end)
vim.keymap.set('n', '<Leader>[', function() require('dap').step_out() end)
