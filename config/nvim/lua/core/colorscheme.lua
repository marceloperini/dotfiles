vim.cmd("colorscheme gruvbox")

local status, _ = pcall(vim.cmd, "colorscheme gruvbox")
if not status then
  print("Colorsheme not found!")
  return
end
