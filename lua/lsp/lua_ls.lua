return {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  root_markers = { ".luarc.json", ".luarc.jsonc", ".git" },
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT", -- Neovim uses LuaJIT
      },
      workspace = {
        checkThirdParty = false,
        -- Tells the server where Neovim runtime files are
        library = vim.api.nvim_get_runtime_file("", true),
      },
      diagnostics = {
        globals = { "vim" }, -- Fixes the "Undefined global 'vim'" warning
      },
    },
  },
}
