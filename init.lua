require("gabriellira")

-- Htmldjango save-format
_G.run_bash_command = function(filename)
    local command = string.format("djlint %s --reformat", filename)
    os.execute(command)
    vim.cmd("edit!") -- Reload the buffer after running the bash command
end

vim.cmd([[
augroup FormatHTML
    autocmd!
    autocmd BufWritePost *.html lua run_bash_command(vim.fn.expand("%"))
augroup END
]])

-- python-black save-format
vim.cmd([[
augroup black_on_save
  autocmd!
  autocmd BufWritePre *.py Black
augroup end
]])


vim.g.rnvimr_enable_ex = 1

vim.o.termguicolors = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.wo.number = true
vim.wo.relativenumber = true

