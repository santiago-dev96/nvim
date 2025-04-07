return {
	'ThePrimeagen/harpoon',
	branch = 'harpoon2',
	dependencies = {
		'nvim-telescope/telescope.nvim',
	},
	config = function()
		local harpoon = require'harpoon'
		harpoon:setup()
		local conf = require'telescope.config'.values

		vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end)
		vim.keymap.set('n', '<C-e>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
	end
}
