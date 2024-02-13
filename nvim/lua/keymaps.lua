-- Keymaps
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set({ 'n' }, '<A-j>', '<Esc>V:m+1<CR>', { silent = true })
vim.keymap.set({ 'n' }, '<A-k>', '<Esc>V:m-2<CR>', { silent = true })
vim.keymap.set({ 'v' }, '<A-j>', ':m \'>+1<CR>gv=gv', { silent = true })
vim.keymap.set({ 'v' }, '<A-k>', ':m \'<-2<CR>gv=gv', { silent = true })

-- spell checking
vim.keymap.set({ "n" }, "<leader>s", "]s", { silent = true }, {desc = "Nächster Rechtschreibfehler"})
vim.keymap.set({ "n" }, "<leader>S", "[s", { silent = true }, {desc = "Letzter Rechtschreibfehler"})
vim.keymap.set({ "n" }, "<leader>g", "z=1<CR>`", { silent = true }, {desc = "Korrigieren"})

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

