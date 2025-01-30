vim.cmd("colorscheme modus")

local status, _ = pcall(vim.cmd, "colorscheme modus_vivendi")
if not status then
  print("Colorscheme not found!")
end
