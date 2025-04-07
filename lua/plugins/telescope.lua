return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-treesitter/nvim-treesitter',
		'nvim-tree/nvim-web-devicons',
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	},
	config = function()
		-- key mappings
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
		vim.keymap.set('n', '<leader>fs', builtin.lsp_workspace_symbols, { desc = 'Telescope find symbol in workspace' })
		vim.keymap.set('n', '<leader>fds', builtin.lsp_document_symbols, { desc = 'Telescope find symbol in document' })

		-- fzf sorting extension
		require('telescope').setup {
			extensions = {
				fzf = {
					fuzz = true,
					override_generic_sorter = true,
					override_file_sorter = true,
					case_mode = 'smart_case'
				}
			}
		}
		require('telescope').load_extension('fzf')
	end
}
