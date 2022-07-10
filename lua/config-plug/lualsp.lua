local sumneko_binary_path = '/home/didier/tools/lua-language-server/bin/lua-language-server'
local sumneko_root_path = '/home/didier/tools/lua-language-server/'

local runtime_path = vim.split(package.path, ';')

require'lspconfig'.sumneko_lua.setup {
   cmd = {sumneko_binary_path, "-E", sumneko_root_path .. "/main.lua"};
   settings = {
      Lua = {
         runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT',
            -- Setup your lua PATH
            path = runtime_path,
         },
         diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = {'vim'},
         },
         workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
         },
         -- Do not send telemetry data containing a randomized but unique identifier
         telemetry = {
            enable = false,
         },
      },
   },
}
