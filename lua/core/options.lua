local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs and identation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping

opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line

opt.cursorline = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- baskpsce
opt.backspace = "indent,eol,start"

--clipboard
-- opt.clipboard:append("unnamedplus")
vim.g.clipboard = {
  name = 'win32yank-wsl',
  copy = {
    ['+'] = 'win32yank.exe -i --crlf',
    ['*'] = 'win32yank.exe -i --crlf',
  },
  paste = {
    ['+'] = 'win32yank.exe -o --lf',
    ['*'] = 'win32yank.exe -o --lf',
  },
  cache_enabled = 0,
}

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

-- code folding
vim.o.foldmethod = "indent"
-- vim.o.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.foldenable = true
vim.o.foldlevel = 99

