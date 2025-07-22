--nvim-treesitter 構文強調設定

require("nvim-treesitter.configs").setup({
  ensure_installed = {
    --プログラミング言語とかそういう系
    "bash", "python", "javascript", "typescript", "lua", "c", "cpp", "rust", "go", "c_sharp", "perl", "php",

    --Git系
    "git_config", "git_rebase", "gitattributes", "gitcommit", "gitignore",

    --フロントエンド系
    "html", "css", "tsx",

    --設定/構成系
    "json", "yaml", "toml", "ini", "cmake", "dockerfile", "ssh_config", "hyprlang",

    --ドキュメント系
    "markdown", "vimdoc", "xml",

    --データ形式
    "sql", "csv",
  },
  --自動インストール
  auto_install = true,
  highlight = {
    --ハイライト有効
    enable = true,
    additional_vim_regex_highlighting = false,
  },
})

