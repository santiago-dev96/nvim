-- spacing
vim.o.sw = 4
vim.o.tabstop = 4
vim.o.expandtab = false

-- leader key
vim.g.mapleader = ' '

-- alternate file jumping
vim.keymap.set('n', '<leader><leader>', '<cmd>e#<cr>')

-- folding
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.o.foldlevel = 3
vim.o.foldminlines = 10

-- features
vim.o.cursorline = true
vim.o.number = true
vim.o.relativenumber = true

-- package manager
require'config.lazy'
