-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself

    -- plugin manager

	use('wbthomason/packer.nvim')

    -- navigation

    use('christoomey/vim-tmux-navigator')

	use('ThePrimeagen/harpoon')

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- utilities

    use('akinsho/toggleterm.nvim')

	use('mbbill/undotree')

	use('tpope/vim-commentary')

    use('alvan/vim-closetag')

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- colors

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('norcalli/nvim-colorizer.lua')

    -- -- autocompletion

    use("hrsh7th/nvim-cmp") 

    use("hrsh7th/cmp-buffer") 

    use("hrsh7th/cmp-path") 

     -- -- snippets

     use("L3MON4D3/LuaSnip") 

     use("saadparwaiz1/cmp_luasnip") 
     
     use("rafamadriz/friendly-snippets") 

     -- managing & installing lsp servers, linters & formatters

     use("williamboman/mason.nvim") 
     use("williamboman/mason-lspconfig.nvim") 

     -- configuring lsp servers
     
     use("neovim/nvim-lspconfig") 
     use("hrsh7th/cmp-nvim-lsp") 
     use("onsails/lspkind.nvim")

     -- theme
     
     use({ 'rose-pine/neovim', as = 'rose-pine' })
     
     -- live-server

     use('manzeloth/live-server')

     -- debugger

     use('mfussenegger/nvim-dap')
     use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
     use('nvim-telescope/telescope-dap.nvim')
     use('theHamsta/nvim-dap-virtual-text')

end)
