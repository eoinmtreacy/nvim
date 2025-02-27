print("Hi Eoin!")
require("config.lazy")

vim.opt.shiftwidth 	= 4
vim.opt.number 		= true
vim.opt.relativenumber 	= true
vim.opt.clipboard 	= "unnamedplus"
vim.opt.termguicolors	= true


vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking text',
	group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})


