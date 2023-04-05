-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself

	use 'wbthomason/packer.nvim'

	use 'Mofiqul/dracula.nvim'

	use('ThePrimeagen/harpoon')

	use('mbbill/undotree')

	use('tpope/vim-commentary')

	use('jpalardy/vim-slime')

	use('bfredl/nvim-ipy')

	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

end)
