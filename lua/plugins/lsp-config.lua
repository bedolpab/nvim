require("mason").setup()
require("mason-lspconfig").setup(
    {
        ensure_installed = {"pyright"}
    }
)

local lspconfig = require("lspconfig")
local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
    return
end

local capabilities = cmp_nvim_lsp.default_capabilities()

local servers = {"pyright"}
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup(
        {
            capabilities = capabilities
        }
    )
end
