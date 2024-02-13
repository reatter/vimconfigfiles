-- options
--
vim.o.breakindent = true
vim.o.clipboard = 'unnamedplus' 
vim.o.completeopt = 'menuone,noselect'
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.mouse = 'a'
vim.o.smartcase = true
vim.o.termguicolors = true
vim.o.timeout = true
vim.o.timeoutlen = 300
vim.o.undofile = true
vim.o.updatetime = 250
vim.opt.inccommand = "split" -- search buffer when substituting
vim.opt.swapfile = false
vim.wo.number = true
vim.wo.signcolumn = 'yes'

-- Virtual editing means that the cursor can be positioned where there is	no actual character.  
-- This can be halfway into a tab or beyond the end	of the line.  Useful for selecting a 
-- rectangle in Visual mode and	editing a table.
vim.opt.virtualedit = "block"
--centering always around the current line
vim.opt.scrolloff = 999