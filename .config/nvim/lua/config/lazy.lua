--lazy.nvim の初期化とプラグイン定義

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

  --UI系
  { "nvim-lualine/lualine.nvim" },
  { "lewis6991/gitsigns.nvim" },
  { "norcalli/nvim-colorizer.lua" },
  { "nvim-tree/nvim-web-devicons", lazy = true },
  { "romgrk/barbar.nvim" },
  { "akinsho/toggleterm.nvim", version = "*" },

  --ファイルツリー
  { "lambdalisue/fern.vim" },

  --Git操作
  { "tpope/vim-fugitive" },
  { "kdheepak/lazygit.nvim" },

  --Markdownプレビュー
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    ft = { "markdown" },
    config = function()
      vim.g.mkdp_auto_start = 0
      vim.g.mkdp_auto_close = 1
      vim.g.mkdp_refresh_slow = 0
      vim.g.mkdp_command_for_global = 0
      vim.g.mkdp_open_to_the_world = 0
      vim.g.mkdp_open_ip = ''
      vim.g.mkdp_browser = ''
      vim.g.mkdp_echo_preview_url = 1
    end,
  },

  --csv表示プラグイン
  {
    "chrisbra/csv.vim",
    ft = { "csv" },
  },
})

