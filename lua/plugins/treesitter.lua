return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	config = function()
		require'nvim-treesitter.configs'.setup {
			ensure_installed = { 'lua', 'markdown', 'javascript', 'typescript', 'go', 'bash', 'css', 'csv', 'dockerfile', 'git_config', 'git_rebase', 'gitcommit', 'gitignore', 'gitattributes', 'gomod', 'gosum', 'gotmpl', 'gowork', 'graphql', 'html', 'jq', 'jsdoc', 'json', 'jsonc', 'make', 'nginx', 'python', 'rust', 'scss', 'sql', 'ssh_config', 'terraform', 'tmux', 'xml', 'yaml' },
			sync_install = false,
			auto_install = false,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false
			},
			incremental_selection = {
				enable = false,
			},
			indent = {
				enable = true
			}
		}
	end
}
