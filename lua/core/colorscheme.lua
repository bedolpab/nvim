-- Enable true colors for better color rendering
vim.opt.termguicolors = true

-- Set the color scheme
vim.cmd("colorscheme monotone")

-- Custom Highlight Groups for Old-School Style

-- Normal text settings (Black background with default foreground)
vim.api.nvim_set_hl(0, "Normal", { bg = "#000000", fg = nil })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "#000000", fg = nil })  -- Non-current windows

-- Search highlights (Bright orange for search terms, bold for emphasis)
vim.api.nvim_set_hl(0, "Search", { bg = "#ff6600", fg = "#000000", bold = true })
vim.api.nvim_set_hl(0, "IncSearch", { bg = "#ff5500", fg = "#000000", bold = true })  -- Incremental search

-- Visual highlight (Orange highlight for selected text)
vim.api.nvim_set_hl(0, "Visual", { bg = "#ff7700", fg = "#000000" })

-- Optional: Custom highlighting for other elements (Feel free to add more if needed)
-- For example, Cursorline (highlight the line where the cursor is)
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#1e1e1e" }) -- Darker line highlighting

-- Cursor settings (to match old-school terminals)
vim.api.nvim_set_hl(0, "Cursor", { bg = "#ff5500", fg = "#000000" }) -- Orange cursor on black background

