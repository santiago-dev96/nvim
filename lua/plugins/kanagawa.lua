return {
	'rebelot/kanagawa.nvim',
	config = function()
		require'kanagawa'.setup {
			commentStyle = { italic = true },
			statementStyle = { bold = true },
			terminalColors = true,
			theme = 'dragon',
			background = {
				dark = 'dragon'
			}
		}
		require'kanagawa'.load('dragon')
	end
}
