-- lazy.nvim の初期化とプラグイン定義

vim.opt.rtp:prepend("~/.config/nvim/lazy/lazy.nvim")

require("lazy").setup({
  --共通ライブラリ
  { "nvim-lua/plenary.nvim" },

  --Telescope
  { "nvim-telescope/telescope.nvim", tag = "0.1.5" },

  --Treesitter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  --LSP
  { "neovim/nvim-lspconfig" },

  --補完エンジン
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },

  --スニペット
  { "L3MON4D3/LuaSnip" },
  { "rafamadriz/friendly-snippets" },

  --Git差分表示
  { "lewis6991/gitsigns.nvim" },
})

