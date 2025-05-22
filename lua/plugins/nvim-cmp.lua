-- Load nvim-cmp safely
local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
    return
end

-- Load LuaSnip safely
local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
    return
end

-- Load VSCode-style snippets
require("luasnip.loaders.from_vscode").lazy_load()

-- Completion options
vim.opt.completeopt = "menu,menuone,noselect"

-- nvim-cmp setup
cmp.setup({
    -- Snippet expansion
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end
    },

    -- Key mappings for completion
    mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({ select = true }),     -- Confirm selection
        ["<Tab>"] = cmp.mapping.select_next_item(),            -- Next item
        ["<S-Tab>"] = cmp.mapping.select_prev_item()           -- Previous item
    }),

    -- Completion sources
    sources = cmp.config.sources({
        { name = "nvim_lsp" },      -- LSP completions
        { name = "luasnip" },       -- Snippet completions
        { name = "buffer" },        -- Buffer words
        { name = "path" },          -- File paths
        { name = "render-markdown" } -- Markdown rendering plugin (custom source)
    })
})

