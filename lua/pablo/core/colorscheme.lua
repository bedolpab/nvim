vim.cmd("colorscheme modus")

local status, _ = pcall(vim.cmd, "colorscheme modus")
if not status then
  print("Colorscheme not found!")
end
