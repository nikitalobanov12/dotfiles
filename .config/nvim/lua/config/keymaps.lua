-- Navigation & File Management
vim.keymap.set({ "n", "i" }, "<C-e>", "<CMD>Yazi<CR>", { desc = "Open Yazi file manager" })
vim.keymap.set("n", "rr", "<CMD>Yazi<CR>", { desc = "Open Yazi file manager" })

vim.keymap.set({ "i", "n" }, "<C-q>", function()
	Snacks.picker.grep({ cwd = vim.fn.getcwd() })
end, { desc = "Live Grep (cwd)" })
