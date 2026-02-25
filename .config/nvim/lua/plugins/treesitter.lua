return {
	-- Syntax highlight
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"c",
				"cmake",
				"cpp",
				"fish",
				"gitignore",
				"make",
			},
		},
	},
}
