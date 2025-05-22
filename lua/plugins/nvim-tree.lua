local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
    return
end

-- Disable netrw as we will use nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

nvim_tree.setup({
    -- Renderer configuration: No icons shown
    renderer = {
        icons = {
            show = {
                file = false,          -- Don't show file icons
                folder = false,        -- Don't show folder icons
                folder_arrow = false,  -- Don't show folder arrows
                git = false             -- Don't show git status icons
            },
        },
    },

    -- View configuration: Position and width of the tree
    view = {
        width = 30,        -- Width of the tree window
        side = "left",     -- Position of the tree (left or right)
    },

    -- Git integration: Disable git integration
    git = {
        enable = false,     -- Disable git status icons
    },
})

-- Keymap: Space + e to toggle NvimTree
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { noremap = true, silent = true })

