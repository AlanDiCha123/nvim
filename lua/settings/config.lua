local o = vim.o
local wo = vim.wo
local bo = vim.bo
local set = vim.opt

--global options
o.scrolloff = 2
o.encoding="utf-8"
o.wrap = true

--window-local options

wo.number = true
wo.relativenumber = true



--global options
set.tabstop = 2
set.shiftwidth = 3
set.expandtab = true
set.softtabstop = 3
set.autoindent = true
set.cursorline = true
set.autowrite = true
set.splitbelow = true
set.splitright = true