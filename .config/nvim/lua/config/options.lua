--Vim/NeoVim全体の動作・表示設定

--基本表示と言語設定
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.fileencodings = { "utf-8", "sjis", "euc-jp", "iso-2022-jp" }
vim.opt.fileformats = { "unix", "dos", "mac" }

--絶対行番号
vim.opt.number = true
--相対行番号
vim.opt.relativenumber = true

--カーソル行ハイライト
vim.opt.cursorline = true

--ステータスラインを常に表示
vim.opt.laststatus = 2

--インデント設定
vim.opt.autoindent = true
vim.opt.smartindent = true

--タブとスペース
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

--スペースや改行の表示
vim.opt.list = true
vim.opt.listchars = { tab = "▸ ", trail = "･" }

--日本語表示のズレ対策
vim.opt.ambiwidth = "double"

--検索関連
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true

--カラースキーム
vim.opt.termguicolors = true
vim.cmd.colorscheme("desert")

