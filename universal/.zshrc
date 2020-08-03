
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

export EDITOR="/usr/bin/nvim"
export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/bin:$PATH"

plugins=(
  git
  git-extras
  archlinux
  systemd
  zsh-autosuggestions
)
ZSH_THEME="powerlevel10k/powerlevel10k"
source $ZSH/oh-my-zsh.sh

alias vim=nvim
alias vi=nvim

export PATH="$HOME/codes/commands/:$PATH"
export PATH="$HOME/.local/bin:$PATH"

PATH="/home/filip/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/filip/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/filip/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/filip/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/filip/perl5"; export PERL_MM_OPT;

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
