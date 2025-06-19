-- Use a simple, safe colorscheme compatible with macOS Terminal
vim.cmd("colorscheme default")

-- Do NOT enable truecolor — macOS Terminal does not support it reliably
vim.opt.termguicolors = false

-- Custom Highlight Groups using 256-color-safe values only

-- Normal text (black background, light gray foreground)
vim.api.nvim_set_hl(0, "Normal",    { ctermfg = 7, ctermbg = 0 })
vim.api.nvim_set_hl(0, "NormalNC",  { ctermfg = 7, ctermbg = 0 })

-- Search highlights
vim.api.nvim_set_hl(0, "Search",    { ctermfg = 0, ctermbg = 208, bold = true }) -- bright orange
vim.api.nvim_set_hl(0, "IncSearch", { ctermfg = 0, ctermbg = 202, bold = true }) -- reddish-orange

-- Visual selection
vim.api.nvim_set_hl(0, "Visual",    { ctermfg = 0, ctermbg = 214 }) -- light orange

-- Cursor line
vim.api.nvim_set_hl(0, "CursorLine", { ctermbg = 236 }) -- dark gray line

-- Cursor style
vim.api.nvim_set_hl(0, "Cursor",    { ctermfg = 0, ctermbg = 202 }) -- orange cursor




