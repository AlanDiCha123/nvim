require('kommentary.config').use_extended_mappings()
vim.g.kommentary_create_default_mappings = false
vim.api.nvim_set_keymap("n", "<leader>ci", "<Plug>kommentary_line_default", {})
vim.api.nvim_set_keymap("n", "<leader>cc", "<Plug>kommentary_motion_default", {})
vim.api.nvim_set_keymap("x", "<leader>ci", "<Plug>kommentary_visual_default", {})
