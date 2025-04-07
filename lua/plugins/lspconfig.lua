return {
	'neovim/nvim-lspconfig',
	config = function()
		require'config.lsp.ts_ls'
		require'config.lsp.gopls'
		require'config.lsp.lua_ls'
	end
}
