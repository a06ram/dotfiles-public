return {
	{ "catppuccin/nvim", enabled = false },
	{ "folke/tokyonight.nvim", enabled = false },
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = true,
		priority = 1000,
		opts = function()
			return {
				transparent = true,
				on_colors = function(colors)
					colors.bg_float = "none"
					colors.base03 = "none"
					colors.base02 = "#444444"
				end,
				on_highlights = function(highlights, colors)
					highlights.Pmenu = { bg = "none" }
					highlights.BlinkCmpMenu = { link = nil, bg = "NONE" }
					highlights.CursorLine = { bg = "#222222" }
					highlights.DiagnosticVirtualTextWarn = { fg = colors.yellow500 }
					highlights.DiagnosticVirtualTextError = { fg = colors.red500 }
					highlights.DiagnosticVirtualTextHint = { fg = colors.cyan500 }
					highlights.DiagnosticVirtualTextInfo = { fg = colors.blue500 }
					highlights.FloatBorder = { fg = "#444444", bg = "none" }
					highlights.SnacksIndent = { fg = "#444444", nocombine = true }
					highlights.BlinkCmpMenuBorder = { fg = "#444444", bg = "none" }
					highlights.BlinkCmpMenuSelection = { bg = "#222222" }
					highlights.SnacksPickerListCursorLine = { bg = "#222222" }
					highlights.TabLineFill = { bg = "none" }
					highlights.TelescopePromptTitle = { fg = colors.cyan500 }
					highlights.TelescopePreviewTitle = { fg = colors.yellow500 }
					highlights.TelescopeResultsTitle = { fg = colors.orange500 }
					highlights.TelescopeSelection = { bg = "#222222" }
					highlights.TelescopeResultsDiffChange = { link = nil, fg = colors.yellow500, bg = "none" }
				end,
			}
		end,
	},
}
