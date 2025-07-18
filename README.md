# HALU_33 dotFiles 管理リポジトリ

Arch Linux+Hyprland環境上の設定ファイルをGitで管理するリポジトリ

## 管理対象の設定ファイル

- `~/.bashrc` / `~/.bash_profile`
- `~/.xinitrc` / `~/.xprofile`
- `~/.vimrc`
- `~/.gitconfig`
- `~/.config/hypr/`
- `~/.config/waybar/`
- `~/.config/nvim/`
- `~/.config/rofi/`
- `~/.config/alacritty/`
- `~/.config/geany/`
- `~/.config/neofetch/`

---

## 管理対象外

- `~/.ssh/`：SSH秘密鍵など機密性の高いファイル
- `~/.gnupg/`：GPG鍵
- `~/.cache/`：アプリケーションキャッシュ
- `~/.local/`：ユーザーローカルなバイナリ・キャッシュ等
- `~/.bash_history`：履歴情報
- `~/.mozilla/`, `~/.npm/` など

---

## 管理方式

**bareリポジトリ**を`$HOME/.dotfiles`に作成し、作業ツリーを`$HOME`に設定することで、ホームディレクトリ直下をGitで管理している。

---

## セットアップ手順

1. dotfilesをbareでclone

2. 作業用エイリアスの定義

3. gitの出力を見やすく設定

4. dotfilesの内容をチェックアウト

---

### `.bashrc`にエイリアスを恒久登録する

```bash
echo "alias dotfiles='/usr/bin/git --git-dir=\$HOME/.dotfiles --work-tree=\$HOME'" >> ~/.bashrc
source ~/.bashrc
```

---

## dotfiles 管理Tips

- `dotfiles status`：現在の差分を確認
- `dotfiles add ~/.bashrc`：個別ファイルを追加
- `dotfiles commit -m "Update bashrc"`：コミット
- `dotfiles push`：GitHubへプッシュ
- `dotfiles log`：履歴確認

---

## セキュリティ注意

個人情報・秘密鍵・履歴・認証情報は `.gitignore` が使えないため`add`しない**ように注意

---

- GitHub: [halu33](https://github.com/halu33)
- OS: ArchLinux + Hyprland

