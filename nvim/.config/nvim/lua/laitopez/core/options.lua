local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

opt.scrolloff = 8
opt.wrap = false

-- tabs & indentation
opt.autoindent = true
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- helps with copying out of vim
opt.clipboard:append("unnamedplus")
