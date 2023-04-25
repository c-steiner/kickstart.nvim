-- My keymapping adds and overrides
-- Some generic settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.cursorline = true
vim.opt.shell = '/bin/zsh'
vim.opt.cp = false
vim.cmd.colorscheme('nightfly')
vim.g.nightflyWinSeparator = 2

-- Telescope buffer search
vim.keymap.set('n', '<leader>sb', require('telescope.builtin').buffers, { desc = '[S]earch [B]uffers' })

-- Remap terminal behavior
vim.cmd([[
  tnoremap <Esc> <C-\><C-n>
]])

-- toggleterm
require('toggleterm').setup{
	shell = '/bin/zsh'
}

vim.keymap.set ('n', '<leader>tt', ":ToggleTerm<cr>", {silent = true, noremap = true})

-- gitui & toggleterm
vim.keymap.set('n', '<leader>gt', require('utils.term').git_client_toggle, { desc = 'Git TUI' })

