return {
	'lewis6991/gitsigns.nvim',
	config = function()
		require'gitsigns'.setup {
			on_attach = function(buf)
				local gitsigns = require'gitsigns'

				local function map(mode, l, r, opts)
					opts = opts or {}
					opts.buffer = buf
					vim.keymap.set(mode, l, r, opts)
				end

				-- navigation
				map('n', ']c', function()
					if vim.wo.diff then
						vim.cmd.normal({']c', bang = true})
					else
						gitsigns.nav_hunk('next')
					end
				end)

				map('n', '[c', function()
					if vim.wo.diff then
						vim.cmd.normal({'[c', bang = true})
					else
						gitsigns.nav_hunk('prev')
					end
				end)

				-- actions
				map('n', '<leader>hs', gitsigns.stage_hunk)
				map('n', '<leader>hr', gitsigns.reset_hunk)

				map('v', '<leader>hs', function()
					gitsigns.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
				end)

				map('v', '<leader>hr', function()
					gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
				end)

				map('n', '<leader>hS', gitsigns.stage_buffer)
				map('n', '<leader>hR', gitsigns.reset_buffer)
				map('n', '<leader>hp', gitsigns.preview_hunk)
				map('n', '<leader>hi', gitsigns.preview_hunk_inline)

				map('n', '<leader>hb', function()
					gitsigns.blame_line({ full = true })
				end)

				map('n', '<leader>hd', gitsigns.diffthis)

				map('n', '<leader>hQ', function() gitsigns.setqflist('all') end)
				map('n', '<leader>hq', gitsigns.setqflist)

				-- toggles
				map('n', '<leader>tb', gitsigns.toggle_current_line_blame)
				map('n', '<leader>td', gitsigns.toggle_deleted)
				map('n', '<leader>tw', gitsigns.toggle_word_diff)

				-- text object
				map({'o', 'x'}, 'ih', gitsigns.select_hunk)
			end
		}
	end
}
