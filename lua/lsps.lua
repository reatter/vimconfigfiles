--attach Lsp for Tex

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'tex',
  callback = function(ev)
    vim.lsp.start({
      name = 'vale-ls for latex',
      cmd = {'vale-ls', '--option', 'arg1', 'arg2'},
      root_dir = vim.fs.root(ev.buf, {'*.tex'}),
    })
  end
})

-- vim.api.nvim_create_autocmd("LspAttach", {
--   callback = function(args)
--     local bufnr = args.buf
--     local client = vim.lsp.get_client_by_id(args.data.client_id)
--     if client.server_capabilities.completionProvider then
--       vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
--     end
--     if client.server_capabilities.definitionProvider then
--       vim.bo[bufnr].tagfunc = "v:lua.vim.lsp.tagfunc"
--     end
--   end,
-- })
--
--
