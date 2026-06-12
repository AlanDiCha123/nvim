require('options')

-- Globals
vim.g.mapleader = ' '
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = true

-- Change wait time for leader key
vim.o.timeoutlen = 250
vim.o.winborder = 'rounded'

-- ############################################
-- ############### Keymaps ####################
-- ############################################
vim.keymap.set('i', 'jk', '<Esc>l')
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a')
vim.keymap.set('n', '<leader>q', ':q!<CR>')
vim.keymap.set('n', '<leader>wq', ':wq<CR>')
vim.keymap.set('n', '<C-s>', ':w<CR>')

-- Tabs
vim.keymap.set('n', '<Tab>', ':bnext<CR>')
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>')

vim.lsp.config('pyright', require('lsp.pylsp'))
vim.lsp.enable('pyright')

vim.lsp.config('lua_ls', require('lsp.lua_ls'))
vim.lsp.enable('lua_ls')

-- Global keybindings when any LSP attaches
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", { clear = true }),
    callback = function(ev)
        local bufnr = ev.buf
        local opts = { }
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Shows hover documentation' })
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
        vim.keymap.set('n', '<leader>di', vim.diagnostic.open_float)
        vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action)

    end,
})


-- Packages
vim.pack.add({
    'https://github.com/nvim-tree/nvim-web-devicons',
    'https://github.com/rebelot/kanagawa.nvim',
    'https://github.com/nvim-lualine/lualine.nvim',
    'https://github.com/lewis6991/gitsigns.nvim',
    'https://github.com/nvim-tree/nvim-tree.lua',
    'https://github.com/akinsho/bufferline.nvim'
})

-- ############################################
-- ############# Plugin configs ###############
-- ############################################



-- Kanagawa theme
require('kanagawa').setup({
    theme = 'dragon',
    commentStyle = { italic = true },
    transparent = true,
    colors = {
        theme = {
            all = {
                ui = {
                    bg_gutter = 'none',
                    float = {
                        bg = 'none'
                    }
                }
            }
        }
    },
    overrides = function(colors)
        local theme = colors.theme
        return {
            NormalFloat = { bg = 'none' },
            NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
            FloatBorder = { bg = 'none' },
            FloatTitle = { bg = 'none' }
        }
    end,
})


require('lualine').setup({})


-- Custom mapping to Nvim Tree
require('nvim-tree').setup{
    view = {
        side = 'right',
    },
}
vim.keymap.set('n', '<leader>e', function()
    require('nvim-tree.api').tree.toggle()
end, { desc = 'Toggle nvim-tree', silent = true })
require('gitsigns').setup()
require('bufferline').setup()



-- Commands
vim.cmd('colorscheme kanagawa')


-- API
-- To apply background transparent
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- To apply background transparent in floating windows
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })



-- Diagnostics popups
vim.diagnostic.config({
  float = { border = "rounded" }
})

