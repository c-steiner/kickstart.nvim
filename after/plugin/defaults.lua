-- My keymapping adds and overrides
-- Telescope buffer search
vim.keymap.set('n', '<leader>sb', require('telescope.builtin').buffers, { desc = '[S]earch [B]uffers' })

-- toggleterm
vim.keymap.set ('n', '<leader>tt', ":ToggleTerm<cr>", {silent = true, noremap = true})

-- gitui & toggleterm
vim.keymap.set('n', '<leader>gt', require('utils.term').git_client_toggle, { desc = 'Git TUI' })

