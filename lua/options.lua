-- Options
vim.opt.number = true
vim.opt.showtabline = 2
vim.opt.fillchars = { eob = ' ' } 
vim.opt.clipboard = 'unnamedplus'
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.cursorline = true
vim.opt.showmode = false
vim.opt.showmatch = true
vim.opt.list = true
vim.opt.listchars:append({
    tab = '| ',
    trail = ' ',
    leadmultispace = '|   '
})
