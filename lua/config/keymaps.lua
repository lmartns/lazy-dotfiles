-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local discipline = require("lmartns/discipline")
discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Enter normal mode
keymap.set("i", "jk", "<ESC>")

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x")

---Delete a word backwards
keymap.set("n", "dw", "vb_d")

-- Select all
keymap.set("n", "<C-a", "gg<S-v>G")

--Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- new tab
keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab", ":tabprev<Return", opts)

-- split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
keymap.set("n", "sx", "<cmd>close<CR>")

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-W>j")
keymap.set("n", "sl", "<C-w>l")

--Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><rigth>", "C-w>>")
keymap.set("n", "<C-w><up>", "C-w>+")
keymap.set("n", "<C-w><down>", "C-w>-")

-- Diagnostics

keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- IncRename
vim.keymap.set("n", "<leader>rn", ":IncRename ")
