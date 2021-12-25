vim.cmd[[colorscheme tokyonight]]

require('lualine').setup {
   options = {
      theme = 'tokyonight'
   }
}
require("bufferline").setup{}

require('nvim-autopairs').setup{}
