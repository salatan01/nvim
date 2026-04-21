-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Limit the width of the text to prevent horizontal scrolling in Niri
-- lua/config/options.lua
vim.opt.laststatus = 3 -- Global statusline (looks cleaner in tiled layouts)
vim.opt.pumheight = 10 -- Max height of pop-up menu (keeps it from hitting Niri edges)
vim.opt.winbar = "%f" -- Shows file path at the top of the window instead of tabs
