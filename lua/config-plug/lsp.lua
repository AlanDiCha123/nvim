local nvim_lsp = require('lspconfig')
--local protocol = require('vim.lsp.protocol')

--local on_attach = function(client, bufnr)
--   local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
--   local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

   --Mappings
--   local opts = { noremap = true, silent = true }

--   buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
--   buf_set_keymap('n', '<F3>', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
--end
   
nvim_lsp.pyright.setup{}

--   on_attach = on_attach,
--   filetypes = { "python" }

--}
