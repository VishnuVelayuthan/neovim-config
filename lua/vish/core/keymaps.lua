vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- General Keymaps

keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear search 
keymap.set("n", "x", "_x") -- does not copy x to register

keymap.set("n", "<leader>+", "<C-a>") -- increment decrement
keymap.set("n", "<leader>-", "<C-x>")

-- Keymaps for window splitting 
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vert
keymap.set("n", "<leader>sh", "<C-w>s") -- split window hor
keymap.set("n", "<leader>se", "<C-w>=") -- make split equal
keymap.set("n", "<leader>sx", ":close<CR>") -- close current window

-- Keymaps for changing tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab


-- PLUGIN KEYMAPS --
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")
