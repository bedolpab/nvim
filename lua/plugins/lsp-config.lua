-- Setup Mason to manage installation of language servers
require("mason").setup()

-- Setup Mason-LSPConfig to automatically install LSP servers
require("mason-lspconfig").setup({
    ensure_installed = {
        "pyright",      -- Python
        "clangd",       -- C/C++
        "ts_ls",        -- TypeScript/JavaScript
        "html",         -- HTML
        "cssls",        -- CSS
        "jsonls",       -- JSON
        "bashls",       -- Bash
        "eslint",       -- ESlint
    }
})  

-- Setup LSP configuration for various language servers
local lspconfig = require("lspconfig")
local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
    return
end

-- Default capabilities for LSP servers (including autocompletion)
local capabilities = cmp_nvim_lsp.default_capabilities()

-- List of LSP servers to configure
local servers = {
    "pyright",      -- Python
    "clangd",       -- C/C++
    "ts_ls",     -- TypeScript/JavaScript
    "html",         -- HTML
    "cssls",        -- CSS
    "jsonls",       -- JSON
    "bashls",       -- Bash
    "eslint",       --ESlint
}

-- Set up each LSP server with the default capabilities
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup({
        capabilities = capabilities
    })
end
