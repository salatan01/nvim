-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Limit the width of the text to prevent horizontal scrolling in Niri
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
-- Ensure we don't exceed the Niri window width unexpectedly
vim.opt.colorcolumn = "80"
