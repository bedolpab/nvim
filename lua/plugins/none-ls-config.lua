local null_ls_status, null_ls = pcall(require, "null-ls")
if not null_ls_status then
    vim.notify("null-ls not found", vim.log.levels.WARN)
    return
end

null_ls.setup(
    {
        sources = {
            null_ls.builtins.formatting.black.with(
                {
                    extra_args = {"--fast"}
                }
            )
            -- null_ls.builtins.diagnostics.flake8,
            -- null_ls.builtins.diagnostics.ruff,
        },
        on_attach = function(client, bufnr)
            if client.supports_method("textDocument/formatting") then
                vim.api.nvim_create_autocmd(
                    "BufWritePre",
                    {
                        buffer = bufnr,
                        group = vim.api.nvim_create_augroup("NullLsFormatOnSave", {clear = true}),
                        callback = function()
                            vim.lsp.buf.format({bufnr = bufnr, async = false, timeout_ms = 5000})
                        end
                    }
                )
            end
        end
    }
)
