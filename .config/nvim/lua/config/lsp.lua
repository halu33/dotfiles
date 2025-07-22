--LSP設定

local lspconfig = require("lspconfig")

--Python:Pyright
lspconfig.pyright.setup({})

--TypeScript:LSP
lspconfig.ts_ls.setup({})

--LSP UI 設定
vim.diagnostic.config({
  --行内表示
  virtual_text = true,
  --sign columnにマーク表示
  signs = true,
  --エラーの下線
  underline = true,
})

