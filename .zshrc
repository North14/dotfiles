# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export EDITOR="/usr/bin/vim"
export ZSH="/home/username/.oh-my-zsh"

plugins=(
  git
  git-extras
  archlinux
)
ZSH_THEME="clean"
source $ZSH/oh-my-zsh.sh

export PATH="~/scripts/commands/:$PATH"
