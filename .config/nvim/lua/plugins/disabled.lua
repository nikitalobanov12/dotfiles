-- Plugins disabled in LazyVim
return {
	{ "nvimdev/dashboard-nvim", enabled = false },
	{ "folke/snacks.nvim", opts = {
		scroll = {
			enabled = false,
		},
	} },
	{
		"folke/sidekick.nvim",
		opts = {
			-- nes = { enabled = false },
		},
	},
}
