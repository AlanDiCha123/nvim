--local capabilities = vim.lsp.protocol.make_client_capabilities()

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local nvim_lsp = require('lspconfig')

local servers = { 'pyright', 'tsserver', 'vuels', 'html', 'cssls'}
for _, lsp in ipairs(servers) do
   nvim_lsp[lsp].setup {
      capabilities = capabilities,
   }
end


--load luasnip
require('luasnip/loaders/from_vscode').lazy_load()

--luasnip setup
local luasnip = require 'luasnip'

--lspkind setup
local lspkind = require('lspkind')

--nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
   snippet = {
      expand = function(args)
         require('luasnip').lsp_expand(args.body)
      end,
   },
   mapping = {
      ['<C-p>'] = cmp.mapping.select_prev_item(),
      ['<C-n>'] = cmp.mapping.select_next_item(),
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm {
         behavior = cmp.ConfirmBehavior.Replace,
         select = true,
      },
      ['<Tab>'] = function(fallback)
         if cmp.visible() then
            cmp.select_next_item()
         elseif luasnip.expand_or_jumpable() then
            --luasnip.expand_or_jump()
            vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true), '')
         else
            fallback()
         end
      end,
      ['<S-Tab>'] = function(fallback)
         if cmp.visible() then
            cmp.select_prev_item()
         elseif luasnip.jumpable(-1) then
            --luasnip.jump(-1)
            vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-jump-prev', true, true, true), '')
         else
            fallback()
         end
      end,
   },
   formatting = {
      format = lspkind.cmp_format({
         with_text = true,
         maxwidth = 50,
      })
   },
   sources = {
      { name = 'nvim_lsp'},
      { name = 'luasnip'},
      { name = 'path' },
   },
}

