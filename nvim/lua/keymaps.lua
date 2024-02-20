-- convienience
vim.keymap.set({"i", "v" }, "kj",  "<Esc>`.", { desc = "Escape" }, { silent = true })
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.keymap.set({ "n", "v" }, "<leader>h",  ":set hls!<CR>", { desc = "toggle highlights" }, { silent = true })
vim.keymap.set({ "n" }, "y%",  "ggyG", { desc = "yank current file" }, { silent = true })

-- moving lines
vim.keymap.set({ "n" }, "<A-j>", "<Esc>V:m+1<CR>", { silent = true })
vim.keymap.set({ "n" }, "<A-k>", "<Esc>V:m-2<CR>", { silent = true })
vim.keymap.set({ "v" }, "<A-j>", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set({ "v" }, "<A-k>", ":m '<-2<CR>gv=gv", { silent = true })

-- spell checking
vim.keymap.set({ "n" }, "<leader>R", ":setlocal spell!<CR>", {desc = "Rechtschreibung togglen"})
vim.keymap.set({ "n" }, "<leader>s", "]s", {desc = "Nächster Rechtschreibfehler"})
vim.keymap.set({ "n" }, "<leader>S", "[s", {desc = "Letzter Rechtschreibfehler"})
vim.keymap.set({ "n" }, "<leader>g", "z=1<CR>`", {desc = "Korrigieren"})
vim.keymap.set({ "i" }, "<C-l>", "<c-g>u<Esc>[s1z=`]a<c-g>u", { desc = "Autokorrektur beim Schreiben" })

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })


-- set VIMCONFIG to %USER%/AppData/Local/ in Windows
-- set VIMCONFIG to $HOME/.config/nvim in Linux
vim.keymap.set({ "n" }, "<leader>I", ":tabedit $VIMCONFIG/init.lua<CR>", { desc = "edit init.lua" })
vim.keymap.set({ "n" }, "<leader>O", ":tabedit $VIMCONFIG/lua/options.lua<CR>", { desc = "edit options.lua" })
vim.keymap.set({ "n" }, "<leader>K", ":tabedit $VIMCONFIG/lua/keymaps.lua<CR>", { desc = "edit keymaps.lua" })
vim.keymap.set({ "n" }, "<leader>P", ":tabedit $VIMCONFIG/lua/packagemanager.lua<CR>", { desc = "edit packagemanager.lua" })

-- TODO window management and resizing on n <A-hjkl> and arrows for resize

-- häufige Fehler beim Tippen automatisch korrigieren
-- TODO vim-abolish for Coercing into other cases and :Subvert

vim.cmd("inoreabbrev dsa das")
vim.cmd("inoreabbrev Dsa Das")
vim.cmd("inoreabbrev dei die")
vim.cmd("inoreabbrev dre der")
vim.cmd("inoreabbrev teh the")
vim.cmd("inoreabbrev onject object")
vim.cmd("inoreabbrev Onject Object")

-- command line abbreviations
vim.cmd("cnoreabbrev Wq wq")
vim.cmd("cnoreabbrev wQ wq")
vim.cmd("cnoreabbrev WQ wq")
vim.cmd("cnoreabbrev Q! q!")

-- TODO snippets
