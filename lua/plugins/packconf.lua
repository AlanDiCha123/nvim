packer = require 'packer'
vim.cmd [[packadd packer.nvim]]
--Plugins

local use = packer.use
packer.reset()

packer.startup(function()

use 'neovim/nvim-lspconfig'
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-nvim-lsp'
use 'saadparwaiz1/cmp_luasnip'
use 'L3MON4D3/LuaSnip'
use {
   'kyazdani42/nvim-tree.lua',
   requires = {
      'kyazdani42/nvim-web-devicons',
   }--,
   --config = function() require'nvim-tree'.setup {} end

}
use {
   'nvim-lualine/lualine.nvim',
   requires = {'kyazdani42/nvim-web-devicons', opt = true}
}
use {
   'akinsho/bufferline.nvim',
   requires = 'kyazdani42/nvim-web-devicons'
}
use 'nvim-treesitter/nvim-treesitter'
use 'folke/tokyonight.nvim'
use 'rebelot/kanagawa.nvim'
use 'windwp/nvim-autopairs'
use 'onsails/lspkind-nvim'
use 'b3nj5m1n/kommentary'
use {
   'nvim-telescope/telescope.nvim',
   requires = { {'nvim-lua/plenary.nvim'}}
}
use {
  'lewis6991/gitsigns.nvim',
  requires = {
    'nvim-lua/plenary.nvim'
  },
  config = function()
    require('gitsigns').setup()
  end
}
use 'lukas-reineke/indent-blankline.nvim'

use 'rafamadriz/friendly-snippets'

use 'kevinhwang91/rnvimr'

end)


