#.bashrc

#対話型シェルでない場合は終了
[[ $- != *i* ]] && return

#----------------------------------------
#エイリアス
#----------------------------------------

alias ls='ls --color=auto'
alias ll='ls -lah'
alias la='ls -A'

#cdで自動ls
cd() { builtin cd "$@" && ls --color=auto; }

alias grep='grep --color=auto'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias df='df -h'
alias free='free -h'
alias ..='cd ..'
alias ...='cd ../..'
alias mkdir='mkdir -p'
alias sudo='sudo '

#----------------------------------------
#プロンプト
#----------------------------------------
export PS1="\[\e[1;32m\]\u@\h\[\e[0m\] \[\e[1;34m\]\w\[\e[0m\] \$ "

#----------------------------------------
#履歴設定
#----------------------------------------
export HISTCONTROL=ignoreboth
export HISTSIZE=100000
export HISTFILESIZE=200000

#----------------------------------------
#neofetch
#----------------------------------------
command -v neofetch >/dev/null 2>&1 && neofetch

#----------------------------------------
#pyenv 初期化
#----------------------------------------
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

#----------------------------------------
#dotfiles Git エイリアス
#----------------------------------------
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

