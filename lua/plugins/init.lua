-- vim.cmd [[packadd packer.nvim]]

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(
    function(use)
        use 'wbthomason/packer.nvim'
        use 'neovim/nvim-lspconfig'
        use 'nvim-lua/plenary.nvim'
        use 'hrsh7th/nvim-cmp'
        use 'hrsh7th/cmp-nvim-lsp'
        use 'saadparwaiz1/cmp_luasnip'
        use 'L3MON4D3/LuaSnip'
        use "rafamadriz/friendly-snippets"
        use 'simrat39/rust-tools.nvim'
        use 'jose-elias-alvarez/null-ls.nvim'
        use "b0o/schemastore.nvim"
        use {
            'nvim-treesitter/nvim-treesitter',
            run = function()
                local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
                ts_update()
            end,
        }
        use {
            "mrjones2014/nvim-ts-rainbow",
            config = function() require ('plugins.nvim-ts-rainbow') end
        }
        use {
            "windwp/nvim-ts-autotag",
            config = function() require ('plugins.nvim-ts-autotag') end
        }
        use {
            'lewis6991/gitsigns.nvim',
            config = function() require('gitsigns').setup() end
        }
        use 'sindrets/diffview.nvim'
        use 'onsails/lspkind-nvim'
        use 'nvim-tree/nvim-web-devicons' 
        use {
            'nvim-tree/nvim-tree.lua',
            requires = 'nvim-tree/nvim-web-devicons',
            config = function() require('plugins.nvim-tree') end
        }
        use {
            'windwp/nvim-autopairs',
            config = function() require('nvim-autopairs').setup() end
        }
        use {
            'Pocco81/auto-save.nvim',
            config = function() require('auto-save').setup() end
        }
        use { 
            'numToStr/Comment.nvim',
            config = function() require('Comment').setup() end
        }
        use{
            "iamcco/markdown-preview.nvim",
            run = function() vim.fn["mkdp#util#install"]() end,
            config = function() require('plugins.markdown-preview') end
        }
        use {
            'segeljakt/vim-silicon',
            config = function() require('plugins.silicon') end
        }
        use {
            "kylechui/nvim-surround",
            tag = "*", -- Use for stability; omit to use `main` branch for the latest features
            config = function() require("nvim-surround").setup() end
        }
        use {
            "lukas-reineke/indent-blankline.nvim",
            config = function() require('plugins.indent-blankline') end
        }
        use 'voldikss/vim-floaterm'
        use 'ray-x/lsp_signature.nvim'
        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.0',
            requires = { {'nvim-lua/plenary.nvim'} },
            config = function() require('plugins.telescope') end
        }
        use {
            'nvim-telescope/telescope-fzf-native.nvim',
            run = 'make',
            config = function() require('telescope').load_extension('fzf') end      
        }
        
        use "ellisonleao/gruvbox.nvim"
        use 'mhartington/oceanic-next'  
        use 'marko-cerovac/material.nvim'
        use 'ayu-theme/ayu-vim'
        use 'shaunsingh/nord.nvim'
        use 'sainnhe/sonokai' 
        use "rebelot/kanagawa.nvim"
        use 'sainnhe/gruvbox-material'
        use "EdenEast/nightfox.nvim"
        use { "catppuccin/nvim", as = "catppuccin" }
        use {
            'nvim-lualine/lualine.nvim',
            config = function() require('lualine').setup() end
    }
        use 'xiyaowong/nvim-transparent'


        if packer_bootstrap then
            require('packer').sync()
        end
    end
)
