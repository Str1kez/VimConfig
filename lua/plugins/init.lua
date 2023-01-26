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
        use 'simrat39/rust-tools.nvim'
        -- use {
        --     'nvim-treesitter/nvim-treesitter',
        --     run = ':TSUpdate',
        -- }
        use {
            'nvim-treesitter/nvim-treesitter',
            run = function()
                local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
                ts_update()
            end,
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
        use {
            "kylechui/nvim-surround",
            tag = "*", -- Use for stability; omit to use `main` branch for the latest features
            config = function() require("nvim-surround").setup() end
        }
        -- use {
        --     'justinmk/vim-sneak',
        --     config = function() require('plugins.sneak') end
        -- }
        use 'voldikss/vim-floaterm'
        use 'ray-x/lsp_signature.nvim'
        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.0',
            requires = { {'nvim-lua/plenary.nvim'} },
            config = function() 
              require("telescope").setup {
                    pickers = {
                        live_grep = {
                            additional_args = function(opts)
                                return {"--hidden", "--no-ignore"}
                            end
                        },
                      find_files = {
                        find_command = {"rg", "--no-ignore", "--hidden", "--files"}
                        -- hidden = true,
                        -- ignore = true
                      }
                }
              }
            end
        }
        use {
            'nvim-telescope/telescope-fzf-native.nvim',
            run = 'make',
            config = function() require('telescope').load_extension('fzf') end      
        }
        
        use 'morhetz/gruvbox'
        use 'mhartington/oceanic-next'  
        use 'kaicataldo/material.vim'
        use 'ayu-theme/ayu-vim'
        use 'arcticicestudio/nord-vim'
        use 'sainnhe/sonokai' 
        use "rebelot/kanagawa.nvim"
        use 'sainnhe/gruvbox-material'
        use "EdenEast/nightfox.nvim"
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
