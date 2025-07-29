--toggleterm.nvim の設定
require("toggleterm").setup({
    --不動ウィンドウとして表示
    direction = "float",
    --Ctrl+\で開閉
    open_mapping = [[<C-\>]],
    shade_terminals = true,
    start_in_insert = true,
})

