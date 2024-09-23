-- autocommands

-- shortcut autogroup
local group = vim.api.nvim_create_augroup

-- shortcut autcommand
local cmd = vim.api.nvim_create_autocmd


group("AutoSpell", {
  clear = true,
})

group("AnotherGroup", {
  clear = true,
})

cmd({"BufEnter", "BufWinEnter", }, {
  group = "AutoSpell",
  pattern = {"*.txt"},
  command = "set spell! spelllang=de,en" -- ex-command: toggles Spell Checker off and on for English+german
})
