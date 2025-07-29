--ui設定

--ステータスラインの設定（lualine）
require("lualine").setup({
    options = {
        --自動テーマ選択
        theme = "auto",
        --セパレータ無効化（空文字列）
        section_separators = "",
        component_separators = "",
        icons_enabled = true,
    },
})

--バッファラインのキーマッピング（barbar.nvim）
--Alt + カンマで前のバッファへ
vim.keymap.set("n", "<A-,>", "<Cmd>BufferPrevious<CR>", { desc = "前のバッファ" })
--Alt + ピリオドで次のバッファへ
vim.keymap.set("n", "<A-.>", "<Cmd>BufferNext<CR>", { desc = "次のバッファ" })
--Alt + c で現在のバッファを閉じる
vim.keymap.set("n", "<A-c>", "<Cmd>BufferClose<CR>", { desc = "バッファを閉じる" })

--カラーコードの可視化（nvim-colorizer.lua）
require("colorizer").setup()

