-- convienience
vim.keymap.set({"i", "v" }, "kj",  "<Esc>`.", { desc = "Escape" }, { silent = true })
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.keymap.set({"n", "v" }, "<leader>h",  ":noh<CR>", { desc = "no highlights" }, { silent = true })

-- moving lines
vim.keymap.set({ "n" }, "<A-j>", "<Esc>V:m+1<CR>", { silent = true })
vim.keymap.set({ "n" }, "<A-k>", "<Esc>V:m-2<CR>", { silent = true })
vim.keymap.set({ "v" }, "<A-j>", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set({ "v" }, "<A-k>", ":m '<-2<CR>gv=gv", { silent = true })

-- spell checking
vim.keymap.set({ "n" }, "<leader>s", "]s", {desc = "Nächster Rechtschreibfehler"})
vim.keymap.set({ "n" }, "<leader>S", "[s", {desc = "Letzter Rechtschreibfehler"})
vim.keymap.set({ "n" }, "<leader>g", "z=1<CR>`", {desc = "Korrigieren"})
vim.keymap.set({ "i" }, "<C-l>", "<c-g>u<Esc>[s1z=`]a<c-g>u", { desc = "Autokorrektur beim Schreiben" })

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })


-- set XDG_HOME_CONFIG to %USER%/AppData/Local/ in Windows
vim.keymap.set({ "n" }, "<leader>I", ":tabedit $XDG_CONFIG_HOME/nvim/init.lua<CR>", { desc = "edit init.lua" })
vim.keymap.set({ "n" }, "<leader>O", ":tabedit $XDG_CONFIG_HOME/nvim/lua/options.lua<CR>", { desc = "edit options.lua" })
vim.keymap.set({ "n" }, "<leader>K", ":tabedit $XDG_CONFIG_HOME/nvim/lua/keymaps.lua<CR>", { desc = "edit keymaps.lua" })
vim.keymap.set({ "n" }, "<leader>P", ":tabedit $XDG_CONFIG_HOME/nvim/lua/packagemanager.lua<CR>", { desc = "edit packagemanager.lua" })


-- häufige Fehler beim Tippen automatisch korrigieren

vim.cmd("inoreabbrev dsa das")
vim.cmd("inoreabbrev dei die")
vim.cmd("inoreabbrev dre der")
vim.cmd("inoreabbrev teh the")
vim.cmd("inoreabbrev onject object")
vim.cmd("inoreabbrev Onject Object")

-- command line abbreviations
vim.cmd("cnoreabbrev Wq wq")
vim.cmd("cnoreabbrev wQ wq")
vim.cmd("cnoreabbrev WQ wq")
vim.cmd("cnoreabbrev Q! q1")
