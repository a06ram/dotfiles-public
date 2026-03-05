return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	require("conform").setup({
		formatters_by_ft = {
			fish = { "fish_indent" },
			lua = { "stylua" },
			python = { "black" },
			sh = { "shfmt" },
		},
		format_on_save = {
			lsp_fallback = true,
			async = false,
			timeout_ms = 1000,
		},
	}),
}
