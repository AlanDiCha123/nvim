vim.cmd[[colorscheme tokyonight]]

require('lualine').setup {
   options = {
      theme = 'tokyonight'
   }
}
--vim.api.nvim_command([[

--]])

vim.api.nvim_command('autocmd SourcePost * highlight Normal ctermbg=NONE guibg=NONE')
vim.api.nvim_command('autocmd SourcePost * highlight LineNr ctermbg=NONE guibg=NONE')
vim.api.nvim_command('autocmd SourcePost * highlight SignColumn ctermbg=NONE guibg=NONE')
vim.cmd('set background=dark')

require("bufferline").setup{}

require('nvim-autopairs').setup{}
