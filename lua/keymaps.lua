-- convienience
vim.keymap.set({"i", "v" }, "kj",  "<Esc>", { desc = "Escape" }, { silent = true })
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.keymap.set({ "n", "v" }, "<leader>h",  ":set hls!<CR>", { desc = "no highlights" }, { silent = true })
vim.keymap.set({ "n" }, "y%",  "ggyG", { desc = "yank current file" }, { silent = true })
vim.keymap.set({ "n" }, "<leader>Q.",  "<cmd>quit!<CR>", { desc = "(Q.)uit and discard current changes" }, { silent = true })
vim.keymap.set({ "n" }, "<leader>W.",  "<cmd>write!<CR>", { desc = "(W.)rite current changes" }, { silent = true })
vim.keymap.set({ "n" }, "<leader>X.",  "<cmd>write!<CR>", { desc = "E(X.)it afer writing" }, { silent = true })
vim.keymap.set({ "n" }, "<leader>Qa",  "<cmd>qall!<CR>", { desc = "(Qa) Quit all" }, { silent = true })
vim.keymap.set({ "n" }, "<leader>Wa",  "<cmd>wall!<CR>", { desc = "(Wa) Write all" }, { silent = true })
vim.keymap.set({ "n" }, "<leader>Xa",  "<cmd>wqall!<CR>", { desc = "(Xa) Exit all after saving" }, { silent = true })
vim.keymap.set({ "n" }, "H",  "gT", { desc = "(H) previous Tab" }, { silent = true })
vim.keymap.set({ "n" }, "L",  "gt", { desc = "(L) next Tab" }, { silent = true })

-- centering after movements with zz
vim.keymap.set({ "n" }, "j",  "gjzz", { desc = "" }, { silent = true })
vim.keymap.set({ "n" }, "k",  "gkzz", { desc = "" }, { silent = true })
vim.keymap.set({ "n" }, "*",  "*zz", { desc = "" }, { silent = true })
vim.keymap.set({ "n" }, "#",  "#zz", { desc = "" }, { silent = true })
vim.keymap.set({ "n" }, "<C-d>",  "<C-d>zz", { desc = "" }, { silent = true })
vim.keymap.set({ "n" }, "<C-u>",  "<C-u>zz", { desc = "" }, { silent = true })
vim.keymap.set({ "n" }, "n",  "nzz", { desc = "" }, { silent = true })
vim.keymap.set({ "n" }, "N",  "Nzz", { desc = "" }, { silent = true })

-- moving lines
vim.keymap.set({ "n" }, "<A-j>", "<Esc>V:m+1<CR>", { silent = true })
vim.keymap.set({ "n" }, "<A-k>", "<Esc>V:m-2<CR>", { silent = true })
vim.keymap.set({ "v" }, "<A-j>", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set({ "v" }, "<A-k>", ":m '<-2<CR>gv=gv", { silent = true })

-- spell checking
vim.keymap.set({ "n" }, "<leader>R", ":setlocal spell!<CR>", {desc = "Rechtschreibung togglen"})
vim.keymap.set({ "n" }, "<C-s>", "]s", {desc = "Nächster Rechtschreibfehler"})
vim.keymap.set({ "n" }, "<C-S>", "[s", {desc = "Letzter Rechtschreibfehler"})
vim.keymap.set({ "n" }, "<leader>g", "z=1<CR>`", {desc = "Korrigieren"})
vim.keymap.set({ "i" }, "<C-l>", "<c-g>u<Esc>[s1z=`]a<c-g>u", { desc = "Autokorrektur beim Schreiben" })

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })


-- set VIMCONFIG to %USER%/AppData/Local/ in Windows
-- set VIMCONFIG to $HOME/.config/nvim in Linux
vim.keymap.set({ "n" }, "<leader>A", ":tabedit $VIMCONFIG/lua/abolish.lua<CR>", { desc = "edit abolish.lua - Abkürzungen" })
vim.keymap.set({ "n" }, "<leader>I", ":tabedit $VIMCONFIG/init.lua<CR>", { desc = "edit init.lua" })
vim.keymap.set({ "n" }, "<leader>K", ":tabedit $VIMCONFIG/lua/keymaps.lua<CR>", { desc = "edit keymaps.lua - Tastenkürzel" })
vim.keymap.set({ "n" }, "<leader>O", ":tabedit $VIMCONFIG/lua/options.lua<CR>", { desc = "edit options.lua - Optionen" })
vim.keymap.set({ "n" }, "<leader>P", ":tabedit $VIMCONFIG/lua/packagemanager.lua<CR>", { desc = "edit packagemanager.lua - Plugins" })

-- TODO window management and tab management and resizing on n <C-hjkl> and arrows for resize


