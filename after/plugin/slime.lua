vim.g.slime_target = "tmux"

vim.api.nvim_set_keymap('n', '<C-s><C-s>', '<Plug>SlimeLineSend', {})
vim.api.nvim_set_keymap('x', '<C-s><C-s>', '<Plug>SlimeRegionSend', {})
