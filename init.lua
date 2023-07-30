require("gabriellira")

-- Define the function to run the bash command
_G.run_bash_command = function(filename)
    local command = string.format("djlint %s --reformat", filename)
    os.execute(command)
    vim.cmd("edit!") -- Reload the buffer after running the bash command
end

-- Define the autocmd to trigger the function when an HTML file is saved
vim.cmd([[
augroup FormatHTML
    autocmd!
    autocmd BufWritePost *.html lua run_bash_command(vim.fn.expand("%"))
augroup END
]])

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

