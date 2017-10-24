#Path to your oh-my-zsh installation.
export ZSH=/Users/loperenr/.oh-my-zsh
export EDITOR=nvim

ZSH_THEME="agnoster"
plugins=(git node yarn)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
export PATH="$PATH:/opt/local/bin"
export PATH="$PATH:$HOME/.vimpkg/bin"

autoload -Uz compinit && compinit -i
fpath=(~/.zsh/completion $fpath)

alias vim="nvim"
alias vi="nvim"
alias oldvim="vim"

if [ -f '~/helpers.sh' ]; then
   source ~/helpers.sh
fi
