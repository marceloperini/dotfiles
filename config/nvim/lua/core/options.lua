local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & identation
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.autoindent = true

-- spelling
opt.spell = true
opt.spelllang = "en_us"

opt.wildignore = {'*/cache/*', '*/tmp/*'}

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true
opt.colorcolumn = "81"

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- turn backup off
opt.swapfile = false
opt.backup = false
opt.writebackup = false
opt.wb = false

opt.iskeyword:append("-")
