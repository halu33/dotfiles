# neovim設定

---

## 導入プラグイン

| 機能 | プラグイン名 |
|------|--------------|
| プラグイン管理 | [lazy.nvim](https://github.com/folke/lazy.nvim) |
| 補完エンジン | [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) |
| スニペット | [LuaSnip](https://github.com/L3MON4D3/LuaSnip) + [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) |
| LSP クライアント | [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) |
| 構文強調 | [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) |
| Git 連携| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim), [vim-fugitive](https://github.com/tpope/vim-fugitive), [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) |
| UI：ステータスライン | [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) |
| UI：バッファライン | [barbar.nvim](https://github.com/romgrk/barbar.nvim) |
| ファイルツリー | [fern.vim](https://github.com/lambdalisue/fern.vim) |
| カラーコード表示 | [nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua) |
| ファジーファイル検索 | [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) |
| 統合ターミナル | [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) |
| Markdownプレビュー | [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) |
| CSV整形表示 | [csv.vim](https://github.com/chrisbra/csv.vim) |

---

## leaderキー

`<leader> = spaceキー`

---

## ショートカット

### ファイル検索・検索

| キー操作 | 説明 |
|----------|------|
| `<leader>ff` | ファイル検索（Telescope） |
| `<leader>fg` | 単語/内容検索（live_grep） |

### ファイルツリー・バッファ操作

| キー操作 | 説明 |
|----------|------|
| `<leader>e` | Fern によるファイルツリー表示 |
| `<A-,>` / `<A-.>` | 前/次のバッファ移動（barbar） |
| `<A-c>` | 現在のバッファを閉じる |

### Git関連

| キー操作 | 説明 |
|----------|------|
| `<leader>gs` | `:Git` コマンド起動（vim-fugitive） |
| `<leader>gg` | lazygit 起動（要 lazygit） |
| `<leader>hs` | hunk をステージ（gitsigns） |
| `<leader>hr` | hunk をリセット |
| `<leader>hb` | 現在行のblame情報表示 |
| `[c` / `]c` | 前/次のhunkに移動 |

### Markdown・CSV関連

| キー操作 | 説明 |
|----------|------|
| `<leader>mp` | Markdownプレビュー開始（ブラウザ起動） |
| `:Mdp` | Markdownプレビュー起動コマンド（`:MarkdownPreview` の短縮） |
| `:ArrangeColumn` | CSVファイル整形表示（csv.vim） |

### その他便利操作

| キー操作 | 説明 |
|----------|------|
| `<C-h/j/k/l>` | 分割ウィンドウ間移動 |
| `<C-\>` | ToggleTerm 起動（統合ターミナル） |

---

## UI・表示設定

- カラースキーム：自動（lualine に依存）
- ステータスライン：常時表示 (`laststatus = 2`)
- バッファライン：barbar.nvim により上部表示
- カーソル行ハイライト：有効
- カラーコード可視化：`colorizer.lua` により自動有効化
- `statuscolumn` を用いて SignColumn（Git差分）、絶対行番号、相対行番号を同一列に表示：

```lua
vim.o.statuscolumn = "%s %l %r"
```

---


## 注意事項

- `markdown-preview.nvim` の初回起動時は、Node.js / npm が必要
  ```bash
  sudo pacman -S nodejs npm
  ```

- Markdownプレビューはデフォルトブラウザで開く

---

