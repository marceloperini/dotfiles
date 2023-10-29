vim.cmd("colorscheme gruvbox")
vim.cmd('let gruvbox="dark"')

local status, _ = pcall(vim.cmd, "colorscheme gruvbox")
if not status then
  print("Colorsheme not found!")
  return
end
