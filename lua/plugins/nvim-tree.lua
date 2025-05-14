-- lua/plugins/nvim-tree.lua
local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
  return
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

nvim_tree.setup({
  renderer = {
    icons = {
      show = {
        file = false,
        folder = false,
        folder_arrow = false,
        git = false,
      },
    },
  },
  view = {
    width = 30,
    side = "left",
  },
})

-- Keymap: Space + e
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { noremap = true, silent = true })
