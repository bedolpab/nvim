vim.g.mapleader = " "

local keymap = vim.keymaps

vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<CR>", {desc = "Toggle Markdown Preview"})
vim.keymap.set("n", "<leader>gmd", "<cmd>Glow<CR>", {desc = "Preview Markdown (Glow)"})
