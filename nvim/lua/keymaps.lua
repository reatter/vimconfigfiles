-- Keymaps
vim.keymap.set({"i", "v" }, "kj",  "<Esc>`.", { desc = "Escape" }, { silent = true })
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.keymap.set({ "n" }, "<A-j>", "<Esc>V:m+1<CR>", { silent = true })
vim.keymap.set({ "n" }, "<A-k>", "<Esc>V:m-2<CR>", { silent = true })
vim.keymap.set({ "v" }, "<A-j>", ":m \">+1<CR>gv=gv", { silent = true })
vim.keymap.set({ "v" }, "<A-k>", ":m \"<-2<CR>gv=gv", { silent = true })

-- spell checking
vim.keymap.set({ "n" }, "<leader>s", "]s", {desc = "Nächster Rechtschreibfehler"})
vim.keymap.set({ "n" }, "<leader>S", "[s", {desc = "Letzter Rechtschreibfehler"})
vim.keymap.set({ "n" }, "<leader>g", "z=1<CR>`", {desc = "Korrigieren"})

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })


-- leader mapping
-- nnoremap <leader>v :tabedit $HOME/.vimrc<CR>
-- nnoremap <leader>V :tabedit $HOME/AppData/local/nvim/init.lua<CR>
-- inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

--
-- häufige Fehler beim Tippen automatisch korrigieren

vim.cmd("inoreabbrev dsa das")
vim.cmd("inoreabbrev dei die")
vim.cmd("inoreabbrev dre der")
vim.cmd("inoreabbrev teh the")
vim.cmd("inoreabbrev onject object")
vim.cmd("inoreabbrev Onject Object")

-- comma"d line abbreviations
vim.cmd("cnoreabbrev Wq wq")
vim.cmd("cnoreabbrev wQ wq")
vim.cmd("cnoreabbrev WQ wq")
vim.cmd("cnoreabbrev Q! q1")
