local opt = vim.opt

-- General Settings
opt.relativenumber = true  -- Relative line numbers
opt.number = true          -- Absolute line numbers
opt.numberwidth = 2        -- Minimal width for line numbers

-- Tabs & Indentation
opt.tabstop = 4            -- Standard 4 spaces
opt.shiftwidth = 4         -- Consistent indentation
opt.expandtab = true       -- Convert tabs to spaces
opt.autoindent = true      -- Auto indentation

-- Text Wrapping
opt.wrap = false           -- Disable line wrapping

-- Search Settings
opt.ignorecase = true      -- Case-insensitive search
opt.smartcase = true       -- Case-sensitive if uppercase is used

-- Cursor & Appearance
opt.cursorline = true      -- Highlight current line
opt.cursorlineopt = "number" -- Highlight line number of current line
opt.scrolloff = 3          -- Keep cursor within 3 lines
opt.sidescrolloff = 5      -- Prevent excessive side scrolling

-- Clipboard & Backspace
opt.clipboard:append("unnamedplus")  -- Use system clipboard
opt.backspace = "indent,eol,start"   -- Basic backspace behavior

-- Window Splits
opt.splitright = true      -- Split windows to the right
opt.splitbelow = true      -- Split windows below

-- Status Line
opt.laststatus = 2         -- Always show status line
opt.showmode = true        -- Display current mode in the status line

