local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
opt.softtabstop = -1 -- If negative, shiftwidth value is used
opt.smarttab = true -- inserts blanks according to 'shiftwidth'

-- line wrapping
opt.wrap = false -- disable line wrapping

-- Number of screen lines to keep above and below the cursor
opt.scrolloff = 8

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
opt.incsearch = true -- show search results as you type
opt.hlsearch = false -- don't highlight search results

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift
opt.cmdheight = 1 -- Give more space for displaying messages.

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal wSindow to the bottom

opt.iskeyword:append("-") -- consider string-string as whole word

-- operating settings
opt.hidden = true -- allow buffers to be hidden, not closed for quick switching
opt.errorbells = false -- disable error bellsS

opt.mouse = "a" -- enable mouse in all modes

-- Decrease update time
opt.timeoutlen = 500
opt.updatetime = 200

-- Disable swap files & backups & undo's
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true