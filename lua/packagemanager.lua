-- Lazy package manager configuration

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

require('lazy').setup({
  'tpope/vim-surround',
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
  'tpope/vim-repeat',
  'tpope/vim-sleuth',
  'tpope/vim-abolish',
  'stevearc/oil.nvim',
  'xiyaowong/transparent.nvim',
  { 
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',
      'folke/neodev.nvim',
    },
  },



  {
    'glepnir/nerdicons.nvim',
    cmd = 'NerdIcons',
    config = function() 
      require('nerdicons').setup({}) 
    end
  },
  { 'ron89/thesaurus_query.vim' },
  { 'protex/better-digraphs.nvim' },
  { 
    'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
  },
  { 'folke/which-key.nvim', 
  opts = {
    ["<leader>f"] = { name = "+file" },
  } },
  { 
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },

  -- colorschemes
  { 
    'navarasu/onedark.nvim',
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1001,
    opts = {},
  },
  { "ellisonleao/gruvbox.nvim",
  priority = 1002 ,
  config = true,
  opts = {},
},
{ 
  'nvim-lualine/lualine.nvim',
  opts = {
    options = {
      icons_enabled = false,
      theme = 'retrobox',
      component_separators = '☻',
      section_separators = '♡',
    },
  },
},
-- "gc" to comment visual regions/lines
{ 'numToStr/Comment.nvim', opts = {} },
{ 'nvim-telescope/telescope.nvim', version = '*', dependencies = { 'nvim-lua/plenary.nvim' } },
-- Fuzzy Finder Algorithm which requires local dependencies to be built.
-- Only load if `make` is available. Make sure you have the system
-- requirements installed.
{
  'nvim-telescope/telescope-fzf-native.nvim',
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
    cond = function()
      return vim.fn.executable 'make' == 1
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  },
  { 
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ":TSUpdate",
  },
}})
