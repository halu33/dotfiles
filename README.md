# HALU_33 dotfiles 管理リポジトリ

Arch Linux+Hyprland環境上の設定ファイルをGitで管理するリポジトリ

## 管理対象の設定ファイル

- `~/.bashrc` / `~/.bash_profile`
- `~/.xinitrc` / `~/.xprofile`
- `~/.vimrc`
- `~/.config/hypr/`
- `~/.config/waybar/`
- `~/.config/nvim/`
- `~/.config/alacritty/`
- `~/.config/neofetch/`

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
```

---

## dotfiles 管理Tips

- `dotfiles status`：現在の差分を確認
- `dotfiles add filename`：ファイルを追加
- `dotfiles commit -m "message"`：コミット
- `dotfiles push`：GitHubへプッシュ
- `dotfiles log`：履歴確認

---

- GitHub: [halu33](https://github.com/halu33)
- OS: ArchLinux + Hyprland

