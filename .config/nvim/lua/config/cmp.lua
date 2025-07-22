--補完エンジン 設定

local cmp = require("cmp")
local luasnip = require("luasnip")

--スニペット読込
require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
  snippet = {
    expand = function(args)
      --スペニット展開処理
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    --次候補
    ['<Tab>'] = cmp.mapping.select_next_item(),
    --前候補
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    --確定
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    --LSP補完
    { name = 'nvim_lsp' },
    --スニペット
    { name = 'luasnip' },
  }),
})

