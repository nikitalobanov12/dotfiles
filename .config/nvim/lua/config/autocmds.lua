vim.o.autoread = true
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI", "FocusGained", "BufEnter" }, {
	pattern = "*",
	command = "checktime",
	desc = "Check for file changes",
})
