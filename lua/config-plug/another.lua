vim.cmd[[colorscheme kanagawa]]

require('lualine').setup {
   options = {
      theme = 'tokyonight'
   }
}
vim.api.nvim_command('autocmd SourcePost * highlight Normal ctermbg=NONE guibg=NONE')
vim.api.nvim_command('autocmd SourcePost * highlight LineNr ctermbg=NONE guibg=NONE')
vim.api.nvim_command('autocmd SourcePost * highlight SignColumn ctermbg=NONE guibg=NONE')
vim.cmd('set background=dark')
vim.cmd('set colorcolumn=110')
vim.cmd('highlight ColorColumn  guibg=#3E4156') 

require("bufferline").setup{}

require('nvim-autopairs').setup{}

require("colorizer").setup()

-- Telescope
-- Find files using Telescope command-line sugar.
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', {noremap = true})

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

vim.opt.list = false
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    space_char_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
}


