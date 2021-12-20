local g = vim.g
local map = vim.api.nvim_set_keymap

g.mapleader = ' '

map('n', '<Leader>w', ':w<CR>', {noremap = true})
map('n', '<Leader>wq', ':wq<CR>', {noremap = true})
map('n', '<C-s>', ':w<CR>', {noremap = true})
map('n', '<C-q>', ':bdelete<CR>', {noremap = true})
map('n', '<C-Q>', ':bdelete!<CR>', {noremap = true})
map('n', '<Leader>q', ':q!<CR>', {noremap = true})
map('n', '<Tab>', ':bnext<CR>', {noremap = true})
map('n', '<S-Tab>', ':bprevious<CR>', {noremap = true})
map('n', '<Tab>', ':bprevious<CR>', {noremap = true})
map('n', '<leader>ic', ':set ignorecase<CR>', {noremap = true})
map('n', '<leader>nh', ':nohlsearch<CR>', {noremap = true})


--inoremap

map('i', 'jk', '<Esc>', {noremap = true})
map('i', 'JK', '<Esc>', {noremap = true})
map('i', ';;', '<Esc><Esc>la', {noremap = true})
map('i', 'hh', '<Esc><Esc>i', {noremap = true})

--visual & visual-line

map('x', 'K', ':move <-2<CR>gv-gv', {noremap = true})
map('x', 'J', ':move <+1<CR>gv-gv', {noremap = true})
map('v', '>', '>gv', {noremap = true})
map('v', '<', '<gv', {noremap = true})
map('v', '<Leader>;', '<Esc>', {noremap = true})

