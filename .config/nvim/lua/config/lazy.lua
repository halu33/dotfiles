-- lazy.nvim 起動とプラグイン定義
vim.opt.rtp:prepend("~/.config/nvim/lazy/lazy.nvim")

require("lazy").setup({
  -- 必須
  { "nvim-lua/plenary.nvim" },

  -- Telescope（ファジー検索）
  { "nvim-telescope/telescope.nvim", tag = "0.1.5" },

  -- Treesitter（構文ハイライト）
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- LSP系
  { "neovim/nvim-lspconfig" },

  -- 補完
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },

  -- スニペット
  { "L3MON4D3/LuaSnip" },
  { "rafamadriz/friendly-snippets" },
})

