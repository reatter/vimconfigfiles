-- convienience
vim.keymap.set({"i", "v" }, "kj",  "<Esc>`.", { desc = "Escape" }, { silent = true, }) 
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true, }) 
vim.keymap.set({ "n", "v" }, "<leader>h",  ":set hls!<CR>", { desc = "no highlights" }, { silent = true, }) 
vim.keymap.set({ "n" }, "y%",  "ggyG", { desc = "yank current file" }, { silent = true, }) 
vim.keymap.set({ "n" }, "<leader>qq",  "<cmd>quit!<CR>", { desc = "(qq)uit and discard current changes" }, { silent = true, }) 
vim.keymap.set({ "n" }, "<leader>ww",  "<cmd>write!<CR>", { desc = "(ww)rite current changes" }, { silent = true, }) 
vim.keymap.set({ "n" }, "<leader>xx",  "<cmd>write!<CR>", { desc = "E(xx)it afer writing" }, { silent = true, }) 
vim.keymap.set({ "n" }, "<leader>qa",  "<cmd>qall!<CR>", { desc = "(qa) Quit all" }, { silent = true, }) 
vim.keymap.set({ "n" }, "<leader>wa",  "<cmd>wall!<CR>", { desc = "(wa) Write all" }, { silent = true, }) 
vim.keymap.set({ "n" }, "<leader>xa",  "<cmd>wqall!<CR>", { desc = "(xa) Exit all after saving" }, { silent = true, }) 

---- moving lines
vim.keymap.set({ "n" }, "<A-j>", "<Esc>V:m+1<CR>", { desc = "move line down" }, { silent = true, })
vim.keymap.set({ "n" }, "<A-k>", "<Esc>V:m-2<CR>", { desc = "move line up" }, { silent = true, })
vim.keymap.set({ "v" }, "<A-j>", ":m '>+1<CR>gv=gv", { desc = "move selection down" },  { silent = true, }) 
vim.keymap.set({ "v" }, "<A-k>", ":m '<-2<CR>gv=gv", { desc = "move selection up" },  { silent = true, })

-- spell checking
vim.keymap.set({ "n" }, "<leader>s", "]s", {desc = "Nächster Rechtschreibfehler"}, { silent = true, })
vim.keymap.set({ "n" }, "<leader>S", "[s", {desc = "Letzter Rechtschreibfehler"}, { silent = true, })
vim.keymap.set({ "n" }, "<leader>g", "z=1<CR>`", {desc = "Korrigieren"}, { silent = true, })
vim.keymap.set({ "i" }, "<C-l>", "<c-g>u<Esc>[s1z=`]a<c-g>u", { desc = "Autokorrektur beim Schreiben" }, { silent = true, })

-- Diagnostic keymap, 
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" }, { silent = true, })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" }, { silent = true, })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" }, { silent = true, })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" }, { silent = true, })


-- set VIMCONFIG to %USER%/AppData/Local/ in Window, 
-- set VIMCONFIG to $HOME/.config/nvim in Linux
vim.keymap.set({ "n" }, "<leader>A", ":tab drop $VIMCONFIG/lua/abolish.lua<CR>", { desc = "abolish.lua - Abkürzungen" }, { silent = true, })
vim.keymap.set({ "n" }, "<leader>I", ":tab drop $VIMCONFIG/init.lua<CR>", { desc = "init.lua - Allgemeine Kofiguration" }, { silent = true, })
vim.keymap.set({ "n" }, "<leader>K", ":tab drop $VIMCONFIG/lua/keymaps.lua<CR>", { desc = "keymaps.lua - Tastenkürzel" }, { silent = true, })
vim.keymap.set({ "n" }, "<leader>O", ":tab drop $VIMCONFIG/lua/options.lua<CR>", { desc = "options.lua - VIM Optionen" }, { silent = true, })
vim.keymap.set({ "n" }, "<leader>P", ":tab drop $VIMCONFIG/lua/packagemanager.lua<CR>", { desc = "packagemanager.lua - Lazy Plugin manager" }, { silent = true, })

-- TODO window management and resizing on n <C-hjkl> and arrows for resize


