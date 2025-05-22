local M = {}

function M.setup()
    -- Configure render-markdown plugin
    require("render-markdown").setup({
        completions = {
            lsp = { enabled = true }  -- Enable LSP-based markdown completions
        },
        file_types = { "markdown", "vimwiki" },  -- Supported filetypes
        latex = {
            enabled = true  -- Enable LaTeX support in markdown
        }
    })

    -- Treat vimwiki files as markdown for Treesitter
    vim.treesitter.language.register("markdown", "vimwiki")

    local ts = vim.treesitter

    -- Custom Treesitter injection query for fenced code blocks
    if ts.query and ts.query.set then
        ts.query.set(
            "markdown",
            "injections",
            [[
        (fenced_code_block
          (info_string) @injection.language
          (code_fence_content) @injection.content)
        ]]
        )
    end
end

return M

