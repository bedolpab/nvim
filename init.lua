require("plugins-setup")

-- Core settings
require("core.options")
require("core.keymaps")
require("core.colorscheme")

-- Plugin configs
require("plugins.lsp-config")
require("plugins.none-ls-config")
require("plugins.nvim-cmp")

require("plugins.nvim-tree")
require("plugins.render-markdown")

require("nvim-treesitter.configs").setup {
    ensure_installed = {"markdown", "markdown_inline", "latex"},
    highlight = {enable = true}
}

vim.g.python3_host_prog = vim.fn.expand("~/.venvs/markdown/bin/python")

vim.g.mkdp_preview_options = {
    katex = {
        enable = 1,
        macros = {}
    }
}
