--キーマッピング

--Spaceをリーダーキーに設定
vim.g.mapleader = " "
local keymap = vim.keymap.set

--Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "ファイル検索" })
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "文字列検索 (Grep)" })

--Fern（ファイルツリー）
keymap("n", "<leader>e", ":Fern . -reveal=% -drawer -toggle -width=30<CR>", { silent = true })

--ウィンドウ移動
keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")

--削除操作でレジスタを汚さないようにする
keymap({ "n", "v" }, "x", '"_x', { desc = "レジスタを汚さず削除" })
keymap({ "n", "v" }, "d", '"_d', { desc = "レジスタを汚さず削除" })

--ヤンクの設定 システムクリップボード
vim.keymap.set("n","+y",'"+yy', {noremap=true, desc="行をクリップボードにコピー"})

