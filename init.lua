-- Load plugin manager and plugins
require("plugins-setup")

-- Core editor settings
require("core.options")
require("core.keymaps")
require("core.colorscheme")

-- Plugin configurations
require("plugins.lsp-config")         -- LSP setup
require("plugins.none-ls-config")     -- Formatters and linters
require("plugins.nvim-cmp")           -- Autocompletion

require("plugins.nvim-tree")          -- File explorer
require("plugins.render-markdown")    -- Markdown rendering

-- Treesitter syntax highlighting for selected languages
require("nvim-treesitter.configs").setup {
    ensure_installed = { "markdown", "markdown_inline", "latex" },
    highlight = { enable = true }
}

-- Set Python host for Neovim (used by some plugins)
vim.g.python3_host_prog = vim.fn.expand("~/.venvs/markdown/bin/python")

-- Markdown preview settings with KaTeX support
vim.g.mkdp_preview_options = {
    katex = {
        enable = 1,
        macros = {}
    }
}

