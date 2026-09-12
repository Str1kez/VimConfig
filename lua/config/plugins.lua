vim.pack.add({
  -- LSP
  { src = 'https://github.com/neovim/nvim-lspconfig' },

  -- Автодополнение
  { src = 'https://github.com/Saghen/blink.cmp', version = vim.version.range('1') },

  -- Подсветка синтаксиса
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'main' },

  -- Поиск
  { src = 'https://github.com/ibhagwan/fzf-lua' },

  -- Дерево файлов
  { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
  { src = 'https://github.com/nvim-tree/nvim-tree.lua' },

  -- Статуслайн
  { src = 'https://github.com/nvim-lualine/lualine.nvim' },

  -- Git
  { src = 'https://github.com/lewis6991/gitsigns.nvim' },

  -- Редактирование
  { src = 'https://github.com/windwp/nvim-autopairs' },
  { src = 'https://github.com/kylechui/nvim-surround' },
  { src = 'https://github.com/lukas-reineke/indent-blankline.nvim' },

  -- JSON-схемы
  { src = 'https://github.com/b0o/schemastore.nvim' },

  -- Тема
  { src = 'https://github.com/ellisonleao/gruvbox.nvim' },
  { src = 'https://github.com/xiyaowong/nvim-transparent' },
})

require('nvim-tree').setup({
  sort_by = 'case_sensitive',
  view = {
    width = { max = 40 },
    adaptive_size = true,
  },
  renderer = {
    group_empty = true,
  },
  actions = {
    open_file = { resize_window = true },
  },
  filters = {
    dotfiles = true,
  },
})

require('lualine').setup({
  sections = {
    lualine_c = { { 'filename', path = 1 } },
  },
  inactive_sections = {
    lualine_c = { { 'filename', path = 1 } },
  },
})

require('gitsigns').setup()
require('nvim-autopairs').setup()
require('nvim-surround').setup()
require('ibl').setup()

require('fzf-lua').setup({
  files = {
    cmd = 'rg --hidden --files',
  },
  grep = {
    rg_opts = '--hidden --column --line-number --no-heading --color=always --smart-case --max-columns=4096',
  },
})

require('blink.cmp').setup({
  keymap = { preset = 'default' },
  appearance = { nerd_font_variant = 'mono' },
  completion = { documentation = { auto_show = true } },
  sources = { default = { 'lsp', 'path', 'buffer' } },
  signature = { enabled = true },
})
