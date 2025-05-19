local M = {}

function M.setup()
    require("render-markdown").setup(
        {
            completions = {
                lsp = {enabled = true}
            },
            file_types = {"markdown", "vimwiki"},
            latex = {
                enabled = true 
            }
        }
    )

    vim.treesitter.language.register("markdown", "vimwiki")

    local ts = vim.treesitter

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
