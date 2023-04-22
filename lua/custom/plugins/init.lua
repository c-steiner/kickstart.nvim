-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--
-- Some generic settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.cursorline = true
vim.opt.shell = '/bin/zsh'
vim.g.nightflyWinSeparator = 2
vim.opt.cp = false

return {
	-- Additional theme
	{
		"bluz71/vim-nightfly-colors",
		name = "nightfly",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme 'nightfly'
		end,
	},

	-- Additional syntax files
	'ron-rs/ron.vim'
}
