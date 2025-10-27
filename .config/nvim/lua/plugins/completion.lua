return {
	{
		"saghen/blink.cmp",
		opts = {
			enabled = function()
				return vim.bo.filetype ~= "markdown"
			end,
			keymap = {
				preset = "default",
				["<Tab>"] = { "select_next", "fallback" },
				["<S-Tab>"] = { "select_prev", "fallback" },
			},
			-- completion = {
			-- ghost_text = { enabled = false },
			-- },
		},
	},
	{
		"neovim/nvim-lspconfig",
		opts = {
			inlay_hints = { enabled = false },
		},
	},
}
