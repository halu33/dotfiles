--Fern.vim 起動するマッピング
vim.api.nvim_set_keymap("n", "<leader>e", ":Fern . -reveal=% -drawer -toggle -width=30<CR>",
{ noremap = true, silent = true, desc = "ファイルツリーを開閉（Fern）" })

