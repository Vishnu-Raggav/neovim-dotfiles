return {
  cmd = { 'typescript-language-server', '--stdio' },
  filetypes = { 'typescript', 'typescriptreact', 'javascript', 'javascriptreact' },
  root_markers = { 'tsconfig.json', 'jsconfig.json', 'package.json', '.git' },
  on_attach = function(client, bufnr)
    vim.lsp.completion.enable(true, client.id, bufnr, { autotrigger = true })
  end,
}
