-- options
--
vim.o.hlsearch = true
vim.wo.number = true
vim.o.mouse = 'a'
vim.o.clipboard = 'unnamedplus' 
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.wo.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300
vim.o.completeopt = 'menuone,noselect'
vim.o.termguicolors = true
vim.opt.inccommand = "split"

-- Virtual editing means that the cursor can be positioned where there is	no actual character.  
-- This can be halfway into a tab or beyond the end	of the line.  Useful for selecting a 
-- rectangle in Visual mode and	editing a table.
vim.opt.virtualedit = "block"
--centering always around the current line
vim.opt.scrolloff = 999
