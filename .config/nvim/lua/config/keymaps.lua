-- Navigation & File Management
vim.keymap.set({ "n", "i" }, "<C-e>", "<CMD>Yazi<CR>", { desc = "Open Yazi file manager" })
vim.keymap.set("n", "rr", "<CMD>Yazi<CR>", { desc = "Open Yazi file manager" })

vim.keymap.set({ "i", "n" }, "<C-q>", function()
	Snacks.picker.grep({ cwd = vim.fn.getcwd() })
end, { desc = "Live Grep (cwd)" })

-- Buffer Navigation - Switch to buffer by ordinal position (1-9)
for i = 1, 9 do
	vim.keymap.set("n", "<leader>" .. i, function()
		require("bufferline").go_to(i, true)
	end, { desc = "Go to buffer " .. i })
end
