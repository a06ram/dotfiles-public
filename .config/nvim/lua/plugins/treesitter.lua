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
		},
	},
}
