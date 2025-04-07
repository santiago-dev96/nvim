-- spacing
vim.o.sw = 4
vim.o.tabstop = 4
vim.o.expandtab = false

-- leader key
vim.g.mapleader = ' '

-- alternate file jumping
vim.keymap.set('n', '<leader><leader>', '<cmd>e#<cr>')

-- features
vim.o.cursorline = true
vim.o.number = true
vim.o.relativenumber = true

-- package manager
require'config.lazy'
