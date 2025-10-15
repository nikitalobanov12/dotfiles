-- Navigation and file management
return {
	-- File finder
	{
		"dmtrKovalenko/fff.nvim",
		build = "cargo build --release",
		lazy = true,
		cmd = { "FFFFind", "FFFScan", "FFFRefreshGit" },
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			filter = function(entry)
				return not entry.path:match("/node_modules/")
			end,
			base_path = vim.fn.getcwd(),
			prompt = "> ",
			title = "",
			max_results = 150,
			layout = {
				height = 0.85,
				width = 0.85,
				prompt_position = "bottom",
				preview_position = "right",
				preview_size = 0.6,
			},
			preview = {
				enabled = true,
				max_size = 10 * 1024 * 1024,
				chunk_size = 8192,
				binary_file_threshold = 1024,
				line_numbers = false,
				wrap_lines = false,
				show_file_info = true,
				filetypes = {
					markdown = { wrap_lines = true },
					text = { wrap_lines = true },
				},
			},
			keymaps = {
				close = "<Esc>",
				select = "<CR>",
				select_split = "<C-s>",
				select_vsplit = "<C-v>",
				select_tab = "<C-t>",
				move_up = { "<Up>", "<C-p>" },
				move_down = { "<Down>", "<C-n>" },
				preview_scroll_up = "<C-u>",
				preview_scroll_down = "<C-d>",
				toggle_debug = "<F2>", -- Shows file scores and additional info
			},
			frecency = {
				enabled = true,
				db_path = vim.fn.stdpath("cache") .. "/fff_nvim",
			},
			debug = {
				enabled = false,
				show_scores = true, -- Shows frecency scores and git status
			},
			logging = {
				enabled = true,
				log_file = vim.fn.stdpath("log") .. "/fff.log",
				log_level = "info",
			},
		},
		keys = {
			{
				"<C-p>",
				function()
					local ok, fff = pcall(require, "fff")
					if ok then
						fff.find_files()
					else
						vim.notify("fff.nvim not ready. Try running :Lazy build fff.nvim", vim.log.levels.WARN)
					end
				end,
				desc = "Find Files with fff",
				mode = { "n", "i" },
			},
			{
				"ff",
				function()
					local ok, fff = pcall(require, "fff")
					if ok then
						fff.find_files()
					else
						vim.notify("fff.nvim not ready. Try running :Lazy build fff.nvim", vim.log.levels.WARN)
					end
				end,
				desc = "Find Files with fff",
				mode = "n",
			},
		},
	},
}
