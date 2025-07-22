--キーマッピング

--Spaceをリーダーキーに設定
vim.g.mapleader = " "
local keymap = vim.keymap.set

--ファイル検索
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>")

--文字列grep検索
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")

--折り返し行で矢印キー移動を自然にする
keymap("n", "j", "gj")
keymap("n", "k", "gk")

