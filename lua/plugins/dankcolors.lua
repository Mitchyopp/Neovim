return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function()
			require('base16-colorscheme').setup({
				base00 = '#121413',
				base01 = '#121413',
				base02 = '#7b8583',
				base03 = '#7b8583',
				base04 = '#cad7d5',
				base05 = '#f8fffe',
				base06 = '#f8fffe',
				base07 = '#f8fffe',
				base08 = '#ffc09f',
				base09 = '#ffc09f',
				base0A = '#c2e1dc',
				base0B = '#9ff6a5',
				base0C = '#ecfffc',
				base0D = '#c2e1dc',
				base0E = '#e2fffa',
				base0F = '#e2fffa',
			})

			vim.api.nvim_set_hl(0, 'Visual', {
				bg = '#7b8583',
				fg = '#f8fffe',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Statusline', {
				bg = '#c2e1dc',
				fg = '#121413',
			})
			vim.api.nvim_set_hl(0, 'LineNr', { fg = '#7b8583' })
			vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#ecfffc', bold = true })

			vim.api.nvim_set_hl(0, 'Statement', {
				fg = '#e2fffa',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Keyword', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Repeat', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Conditional', { link = 'Statement' })

			vim.api.nvim_set_hl(0, 'Function', {
				fg = '#c2e1dc',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Macro', {
				fg = '#c2e1dc',
				italic = true
			})
			vim.api.nvim_set_hl(0, '@function.macro', { link = 'Macro' })

			vim.api.nvim_set_hl(0, 'Type', {
				fg = '#ecfffc',
				bold = true,
				italic = true
			})
			vim.api.nvim_set_hl(0, 'Structure', { link = 'Type' })

			vim.api.nvim_set_hl(0, 'String', {
				fg = '#9ff6a5',
				italic = true
			})

			vim.api.nvim_set_hl(0, 'Operator', { fg = '#cad7d5' })
			vim.api.nvim_set_hl(0, 'Delimiter', { fg = '#cad7d5' })
			vim.api.nvim_set_hl(0, '@punctuation.bracket', { link = 'Delimiter' })
			vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = 'Delimiter' })

			vim.api.nvim_set_hl(0, 'Comment', {
				fg = '#7b8583',
				italic = true
			})

			local current_file_path = vim.fn.stdpath("config") .. "/lua/plugins/dankcolors.lua"
			if not _G._matugen_theme_watcher then
				local uv = vim.uv or vim.loop
				_G._matugen_theme_watcher = uv.new_fs_event()
				_G._matugen_theme_watcher:start(current_file_path, {}, vim.schedule_wrap(function()
					local new_spec = dofile(current_file_path)
					if new_spec and new_spec[1] and new_spec[1].config then
						new_spec[1].config()
						print("Theme reload")
					end
				end))
			end
		end
	}
}
