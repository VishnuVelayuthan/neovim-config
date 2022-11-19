local opt = vim.opt -- using for conciseness

-- line number options
opt.relativenumber = true
opt.number = true

-- tab and indentation options
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping options
opt.wrap = false 

-- search options
opt.ignorecase = true
opt.smartcase = true 

-- cursor line 
opt.cursorline = true

-- appearance options 
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"


-- backspace options
opt.backspace = "indent,eol,start"

-- clipboard options
opt.clipboard:append("unnamedplus")

-- split windows 
opt.splitright = true
opt.splitbelow = true

-- keyword additions
opt.iskeyword:append("-")




