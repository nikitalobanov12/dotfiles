return {
	{
		"saghen/blink.cmp",
		opts = {
			enabled = function()
				return vim.bo.filetype ~= "markdown"
			end,
			-- completion = {
			-- ghost_text = { enabled = true },
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
