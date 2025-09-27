local M = {
	-- Colorschemes
	{
		"folke/tokyonight.nvim",
		lazy = true,
		opts = {
			styles = {
				comments = { italic = false },
				keywords = { italic = false },
				functions = { italic = false },
				variables = { italic = false },
			},
		},
	},
	{
		"ellisonleao/gruvbox.nvim",
		lazy = true,
		opts = {
			italic = {
				strings = false,
				emphasis = false,
				comments = false,
				operators = false,
				folds = false,
			},
		},
	},
	{
		"miikanissi/modus-themes.nvim",
		lazy = true,
		opts = {
			italic_comments = false,
		},
	},
	{
		"shaunsingh/nord.nvim",
		lazy = true,
		config = function()
			vim.g.nord_italic = false
		end,
	},
	{
		"nyoom-engineering/oxocarbon.nvim",
		lazy = true,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = true,
		opts = {
			styles = {
				bold = true,
				italic = false,
				transparency = false,
			},
		},
	},

	-- Status line
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = { theme = "auto" },
			sections = { lualine_z = {} },
		},
	},
}

local function load_omarchy_theme()
	local config_dir = vim.fn.stdpath("config")
	local theme_path = vim.fs.normalize(config_dir .. "/../omarchy/current/theme/neovim.lua")
	if vim.fn.filereadable(theme_path) == 0 then
		return nil
	end
	local ok, spec = pcall(dofile, theme_path)
	if not ok then
		vim.schedule(function()
			vim.notify("Omarchy theme load failed: " .. spec, vim.log.levels.WARN, { title = "Neovim" })
		end)
		return nil
	end
	return type(spec) == "table" and spec or nil
end

local theme_spec = load_omarchy_theme()
if theme_spec then
	vim.list_extend(M, theme_spec)
else
	M[#M + 1] = {
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "tokyonight",
		},
	}
end

return M
