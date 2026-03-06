return {
	-- Syntax highlight
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		opts = {
			ensure_installed = {
				"c",
				"cmake",
				"cpp",
				"fish",
				"gitignore",
				"make",
			},
			ignore_install = { "markdown", "markdown-inline" },
			auto_install = false,
			highlight = {
				disable = {
					"markdown",
					"markdown-inline",
				},
			},
		},
	},
}
