-- auto install packer if not installed
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
        vim.cmd([[packadd packer.nvim]])
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer()

-- autocommand that reloads neovim and installs/updates/removes plugins when file is saved
vim.cmd(
    [[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]]
)

local status, packer = pcall(require, "packer")
if not status then
    vim.notify("Packer not found", vim.log.levels.ERROR)
    return
end

-- Install Plugins
return packer.startup(
    function(use)
        -- installer
        use("wbthomason/packer.nvim")

        -- scheme
        use("linusng/green-shades.vim")

        -- autocompletion
        use("hrsh7th/nvim-cmp")
        use("hrsh7th/cmp-buffer")
        use("hrsh7th/cmp-path")
        use("hrsh7th/cmp-nvim-lsp")

        -- snippets
        use("L3MON4D3/LuaSnip")
        use("saadparwaiz1/cmp_luasnip")
        use("rafamadriz/friendly-snippets")

        -- LSP support
        use("neovim/nvim-lspconfig")
        use("williamboman/mason.nvim")
        use("williamboman/mason-lspconfig.nvim")

        -- formatting & linting
        use("nvimtools/none-ls.nvim")
        use("nvim-lua/plenary.nvim")

        -- additional features
        use("nvim-tree/nvim-tree.lua")

        -- makrdown features
        use(
            {
                "MeanderingProgrammer/render-markdown.nvim",
                requires = {
                    "nvim-treesitter/nvim-treesitter",
                    "echasnovski/mini.nvim"
                },
                config = function()
                    require("plugins.render-markdown")
                end
            }
        )

        use(
            {
                "iamcco/markdown-preview.nvim",
                run = "cd app && npm install",
                setup = function()
                    vim.g.mkdp_filetypes = {"markdown"}
                end,
                ft = {"markdown"}
            }
        )

        use(
            {
                "ellisonleao/glow.nvim",
                cmd = "Glow",
                config = function()
                    require("glow").setup({})
                end
            }
        )

        if packer_bootstrap then
            require("packer").sync()
        end
    end
)
