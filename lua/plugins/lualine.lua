return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	opts = function(_, opts)
		require'lualine'.setup {}
	end
}
