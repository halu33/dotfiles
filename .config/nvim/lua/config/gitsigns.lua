--gitsigns.nvim の設定

require("gitsigns").setup({
  signs = {
    --追加行
    add          = { text = "+" },
    --変更行
    change       = { text = "~" },
    --削除行
    delete       = { text = "_" },
    --先頭削除
    topdelete    = { text = "‾" },
    --変更+削除
    changedelete = { text = "%" },
  },

  --SignColumnに表示
  signcolumn = true,

  --現在行にblame情報を表示
  current_line_blame = true,

  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns
    local map = function(mode, lhs, rhs, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, lhs, rhs, opts)
    end

    --hunk移動
    map("n", "]c", function()
      if vim.wo.diff then return "]c" end
      vim.schedule(gs.next_hunk)
      return "<Ignore>"
    end, { expr = true })

    map("n", "[c", function()
      if vim.wo.diff then return "[c" end
      vim.schedule(gs.prev_hunk)
      return "<Ignore>"
    end, { expr = true })

    --hunk操作
    map("n", "<leader>hs", gs.stage_hunk)
    map("n", "<leader>hr", gs.reset_hunk)
    map("n", "<leader>hb", gs.blame_line)
  end,
})

