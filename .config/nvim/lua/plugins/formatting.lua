return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	require("conform").setup({
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "black" },
		},
		format_on_save = {
			lsp_fallback = true,
			async = false,
			timeout_ms = 1000,
		},
	}),
}
