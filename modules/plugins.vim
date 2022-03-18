lua <<LUA

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  local plugins = require("user-plugins")

  for p = 1, table.getn(plugins) do
    use(plugins[p])
  end

  use 'dhruvasagar/vim-table-mode'
  use 'folke/tokyonight.nvim'
  use 'wbthomason/packer.nvim'
  use 'tpope/vim-commentary'
  use 'machakann/vim-highlightedyank'
  use 'windwp/nvim-autopairs'
  use 'tpope/vim-surround'
  use 'vim-test/vim-test'
  use 'tpope/vim-eunuch'
  use 'alvan/vim-closetag'
  use 'tpope/vim-rails'
  use 'vim-ruby/vim-ruby'
  use 'jeetsukumaran/vim-indentwise'
  use 'akinsho/toggleterm.nvim'
  use 'farmergreg/vim-lastplace'
  use 'ThePrimeagen/harpoon'
  use 'svermeulen/vim-yoink'
  use 'ThePrimeagen/refactoring.nvim'
  use 'psf/black'
  use 'tpope/vim-fugitive'
  use 'AndrewRadev/undoquit.vim'
  use 'rhysd/clever-f.vim'
  use 'pseewald/vim-anyfold'
  use 'michaeljsmith/vim-indent-object'
  use 'norcalli/nvim-terminal.lua'
  use 'camgraff/telescope-tmux.nvim'
  use 'vimlab/split-term.vim'
  use 'nvim-lualine/lualine.nvim'
  use 'mbbill/undotree'
  use { "ahmedkhalf/project.nvim" }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
  }

  -- Editing stuff
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'tmux-plugins/vim-tmux-focus-events'
  use {'neoclide/coc.nvim', branch = 'release'}
  use "rafamadriz/friendly-snippets"
  use 'windwp/nvim-ts-autotag'
  use { 'svermeulen/vim-subversive' }
  use { 'phaazon/hop.nvim' }

  use 'kana/vim-textobj-user'
  use 'beloglazov/vim-textobj-quotes'
  use 'EdenEast/nightfox.nvim'
  use 'cocopon/iceberg.vim'
  use 'kdheepak/lazygit.nvim'
  use 'NLKNguyen/papercolor-theme'
  use 'nicwest/vim-camelsnek'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'AndrewRadev/sideways.vim'
  use 'AndrewRadev/splitjoin.vim'
  use 'AndrewRadev/switch.vim'
  use 'folke/which-key.nvim'
  use 'RRethy/nvim-treesitter-endwise'
  use 'editorconfig/editorconfig-vim'
  use 'preservim/tagbar'
  use 'tpope/vim-abolish'
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
  use 'terryma/vim-multiple-cursors'
  use 'tami5/sqlite.lua'
  use 'ellisonleao/gruvbox.nvim'
  use 'mildred/vim-bufmru'
  use 'fannheyward/telescope-coc.nvim'
  use 'tomasr/molokai'
  use 'skywind3000/asyncrun.vim'
  use 'pechorin/any-jump.vim'
  use 'joshdick/onedark.vim'
  use 'ecomba/vim-ruby-refactoring'

  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },

  }

  use 'tomlion/vim-solidity'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
end)
LUA

lua <<END

require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
require('lualine').setup {
  extensions = { "quickfix", "nvim-tree", "toggleterm" }
}
require('gitsigns').setup()
require("project_nvim").setup {}
require('nvim-tree').setup {}
END

lua require'terminal'.setup()
let g:coc_global_extensions = ['coc-html', 'coc-css', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-solidity', 'coc-diagnostic',
      \ 'coc-solargraph', 'coc-emmet', 'coc-yaml', 'coc-snippets', 'coc-pyright', 'coc-solidity']
