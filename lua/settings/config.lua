local options = {

   backup = false,                          --create a backup file
   clipboard = "unnamedplus",               --allows neovim to acces the system clipboard
--   cmdheight = 2,                           --more space in the neovim line for displaying messages
--   completeopt = { "menuone", "noselect" }, --mostly just for cmp
--   conceallevel = 1,                        --so that `` is visible in markdown files
   fileencoding = "utf-8",                  --the encoding written to a file
--   hidden = true,                           --required to keep multiple buffers
   ignorecase = false,
   mouse = "a",                             --allow the mouse to be used in neovim
--   pumheight = 10,                          --pop up menu height
   showmode = false,                         --insert, visual etc.
   showtabline = 3,                         --always show tabs
   smartcase = true,
   smartindent = true,
   splitbelow = true,
   splitright = true,
--   swapfile = false,
   termguicolors = true,
--   colorcolumn = 80,
--   timeoutlen = 100,
--   undofile = true,
   updatetime = 300,
--   writebackup = false,
   expandtab = true,
   shiftwidth = 3,
   tabstop = 3,
   softtabstop = 3,
   cursorline = true,
   number = true, 
   relativenumber = true,
   numberwidth = 3,
   -- signcolumn = "yes",
   wrap = false,
   scrolloff = 8,
--   sidescrolloff = 8,
}

vim.opt.shortmess:append "c"
vim.o.completeopt = "menuone,noselect"

for k, v in pairs(options) do
   vim.opt[k] = v
end
