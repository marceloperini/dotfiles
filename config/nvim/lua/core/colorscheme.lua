vim.cmd("colorscheme ayu")
vim.cmd('let ayucolor="light"')

local status, _ = pcall(vim.cmd, "colorscheme ayu")
if not status then
  print("Colorsheme not found!")
  return
end
