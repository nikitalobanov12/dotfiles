-- Add local bin to PATH for fd symlink
vim.env.PATH = vim.fn.stdpath("config") .. "/bin:" .. vim.env.PATH

-- UI Settings
vim.opt.listchars = {
  tab = "  ",
  extends = "❯",
  precedes = "❮", 
  nbsp = "␣",
}

-- LSP Settings
vim.lsp.inlay_hint.enable(false)

-- Line ending settings to prevent ^M characters
vim.opt.fileformats = { "unix", "dos" }
vim.opt.fileformat = "unix"

-- Clipboard integration for Omarchy (Wayland)
vim.opt.clipboard = "unnamedplus"
if vim.fn.executable("wl-copy") == 1 and vim.fn.executable("wl-paste") == 1 then
  vim.g.clipboard = {
    name = "wl-clipboard",
    copy = {
      ["+"] = { "wl-copy", "--foreground", "--type", "text/plain" },
      ["*"] = { "wl-copy", "--foreground", "--primary", "--type", "text/plain" },
    },
    paste = {
      ["+"] = { "wl-paste", "--no-newline" },
      ["*"] = { "wl-paste", "--primary", "--no-newline" },
    },
    cache_enabled = 0,
  }
end
