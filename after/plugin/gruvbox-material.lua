if vim.fn.has('termguicolors') == 1 then
  vim.o.termguicolors = true
end

-- For dark version.
vim.o.background = "dark"

-- Set contrast.
-- This configuration option should be placed before `colorscheme gruvbox-material`.
-- Available values: 'hard', 'medium'(default), 'soft'
vim.g.gruvbox_material_background = 'hard'

vim.g.gruvbox_material_foreground = 'original'

-- For better performance.
vim.g.gruvbox_material_better_performance = 1

vim.g.gruvbox_material_transparent_background = 2

vim.g.gruvbox_material_enable_bold = 1

vim.g.gruvbox_material_enable_bold = 'high'

vim.cmd("colorscheme gruvbox-material")

