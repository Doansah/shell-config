-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- vim.keymap.set()
--
-- -- lua/config/keymaps.lua
vim.keymap.set("n", "<leader>fn", function()
  vim.cmd("enew") -- Example: Create a new file
end, { desc = "New File" })

-- Keymaps to center cursor during movement
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
