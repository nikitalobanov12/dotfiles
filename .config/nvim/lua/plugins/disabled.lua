-- Plugins disabled in LazyVim
return {
	{ "nvimdev/dashboard-nvim", enabled = false },
	{
		"folke/snacks.nvim",

		opts = {
			explorer = { enabled = false },
			picker = {
				enabled = false,
			},
			dashboard = { enabled = false },
			scroll = {
				enabled = false,
			},
		},
	},
	{
		"folke/sidekick.nvim",
		opts = {
			-- nes = { enabled = false },
		},
	},
}
