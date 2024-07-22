vim.g.mapleader = " "

-- NeoTree
vim.keymap.set('n', '<leader>e', ':Neotree float reveal<CR>')
vim.keymap.set('n', '<leader>E', ':Neotree left reveal<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree float git_status<CR>')

-- Other
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')
vim.keymap.set('n', '<leader>X', ':BufferLineCloseRight<CR>')
vim.keymap.set('n', '<leader>s', ':BufferLineSortByTabs<CR>')
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Tabs
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')

-- Copilot
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- LSP mappings
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { noremap = true, silent = true })

-- System Buffer
vim.api.nvim_set_keymap('v', '<leader>y', 'CopyToSystemBuffer', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>y', 'CopyToSystemBuffer', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>Y', 'CopyLineToSystemBuffer', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>p', 'PasteFromSystemBufferAfter', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>P', 'PasteFromSystemBufferBefore', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>p', 'PasteFromSystemBuffer', { noremap = true, silent = true })

-- Terminal
vim.keymap.set('n', '<leader>tf', ':ToggleTerm direction=float<CR>')
vim.keymap.set('n', '<leader>th', ':ToggleTerm direction=horizontal<CR>')
vim.keymap.set('n', '<leader>tv', ':ToggleTerm direction=vertical size=40<CR>')
