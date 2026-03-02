return {
	-- Syntax highlight
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			ensure_installed = {
				"c",
				"cmake",
				"cpp",
				"fish",
				"gitignore",
				"make",
				"markdown",
				"markdown_inline",
			},
			highlight = {
				additional_vim_regex_highlighting = { "markdown" },
			},
		},
	},
}
