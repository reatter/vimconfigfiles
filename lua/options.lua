vim.cmd[[colorscheme retrobox]]
-- options
--
vim.o.gdefault = true -- always global substitute
vim.o.breakindent = true
vim.o.clipboard = 'unnamedplus,unnamed' 
vim.o.completeopt = 'menuone,noselect'
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.mouse = 'a'
vim.o.smartcase = true
vim.o.cursorline = true
vim.o.cursorcolumn = false
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.termguicolors = true
vim.o.timeout = true
vim.o.timeoutlen = 300
vim.o.undofile = true
vim.o.updatetime = 250
vim.opt.inccommand = "split" -- search buffer when substituting
vim.opt.swapfile = false
vim.wo.number = true
vim.wo.signcolumn = 'yes'
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.spelllang = 'de,en'
-- Virtual editing means that the cursor can be positioned where there is	no actual character.  
-- This can be halfway into a tab or beyond the end	of the line.  Useful for selecting a 
-- rectangle in Visual mode and	editing a table.
vim.opt.virtualedit = "block"
