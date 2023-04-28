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


-- toggleterm
require('toggleterm').setup{
	shell = '/bin/zsh'
}

vim.keymap.set ('n', '<leader>tt', ":ToggleTerm<cr>", {silent = true, noremap = true})

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')


-- gitui & toggleterm
vim.keymap.set('n', '<leader>gt', require('utils.term').git_client_toggle, { desc = 'Git TUI' })


-- nvim-cmp
local cmp = require'cmp'

cmp.setup({
	window = {
		completion = cmp.config.window.bordered()
	}
})
