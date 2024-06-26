-- set leader key as space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- line numbers
vim.o.number = true
vim.o.relativenumber = true

-- default tab and space indents
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.autoindent = true

-- disabling highlight on search
vim.o.hlsearch = false

-- line wrapping
vim.o.wrap = false

-- enable mouse mode
vim.o.mouse = "a"

-- config search
vim.o.ignorecase = true
vim.o.smartcase = true

-- appearance specific settings
vim.o.termguicolors = true
vim.o.signcolumn = "yes" -- for lsp and github signs

-- make backspace work normally
vim.o.backspace = "indent,eol,start"

-- sync clipboard between OS and Neovim.
vim.o.clipboard = "unnamedplus"

-- save undo history
vim.o.undofile = true

-- decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- set completeopt to have a better completion experinoremap = trueence
vim.o.completeopt = "menuone,noselect"

-- enable break indenting
vim.o.breakindent = true

-- highlight on yank
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = "*",
})
