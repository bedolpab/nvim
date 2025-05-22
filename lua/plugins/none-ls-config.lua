local null_ls_status, null_ls = pcall(require, "null-ls")
if not null_ls_status then
    vim.notify("null-ls not found", vim.log.levels.WARN)
    return
end

null_ls.setup({
    sources = {
        -- Python formatter: black
        null_ls.builtins.formatting.black.with({
            extra_args = { "--fast" }, -- fast mode
        }),

        -- JavaScript/TypeScript formatter: prettier
        null_ls.builtins.formatting.prettier.with({
            extra_args = { "--single-quote" },
        }),

        -- JSON formatter with prettier
        null_ls.builtins.formatting.prettier.with({
            filetypes = { "json" },
        }),

        -- C/C++/Objective-C Formatter: clang-format
        null_ls.builtins.formatting.clang_format,

        -- Shell Parser and formatter
        null_ls.builtins.formatting.shfmt.with({
            extra_args = { "-i", "4" },
        }),
    },

    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_create_autocmd("BufWritePre", {
                buffer = bufnr,
                group = vim.api.nvim_create_augroup("NullLsFormatOnSave", { clear = true }),
                callback = function()
                    vim.lsp.buf.format({ bufnr = bufnr, async = false, timeout_ms = 5000 })
                end,
            })
        end
    end,
})

