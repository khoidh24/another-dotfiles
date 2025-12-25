-- ==========================================
-- Basic Neovim Configuration
-- ==========================================

local opt = vim.opt
local cmd = vim.cmd
local fn = vim.fn

-- Encoding
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- Tabs & Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- Line Numbers
opt.number = true
opt.relativenumber = true

-- Cursor
opt.cursorline = true

-- Searching
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true

-- History & Undo
opt.history = 1000
opt.undofile = true

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Backspace behavior
opt.backspace = { "indent", "eol", "start" }

-- UI
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Window Splitting
opt.splitright = true
opt.splitbelow = true

-- Window Border
opt.winborder = "single"

-- Fold
opt.foldcolumn = "1"
opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldenable = true
