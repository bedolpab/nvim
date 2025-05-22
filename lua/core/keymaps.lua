-- Set space as the leader key
vim.g.mapleader = " "

-- Key mappings
local keymap = vim.keymap

-- Toggle Markdown preview in browser
keymap.set("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<CR>", { desc = "Toggle Markdown Preview" })

-- Open Markdown preview using Glow
keymap.set("n", "<leader>gmd", "<cmd>Glow<CR>", { desc = "Preview Markdown (Glow)" })

