
--vim.keymap.set('n', '<C-h>', ':wincmd h <CR>', {})
--vim.keymap.set('n', '<C-j>', ':wincmd j <CR>', {})
--vim.keymap.set('n', '<C-k>', ':wincmd k <CR>', {})
--vim.keymap.set('n', '<C-l>', ':wincmd l <CR>', {})

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set clipboard+=unnamedplus")

vim.cmd("set nu rnu")
vim.g.mapleader = " "

vim.keymap.set('n', '<Tab>', ':bnext <CR>', {})
vim.keymap.set('n', '<S-Tab>', ':bprevious <CR>', {})
vim.keymap.set('n', '<C-w>', ':bd <CR>', {})
