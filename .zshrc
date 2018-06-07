#Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export EDITOR=nvim

ZSH_THEME="agnoster"
plugins=(git node yarn docker-compose)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
export PATH="$PATH:/opt/local/bin"
export PATH="$PATH:$HOME/.vimpkg/bin"
export PATH="$PATH:/usr/local/go/bin"
autoload -Uz compinit && compinit -i
fpath=(~/.zsh/completion $fpath)

alias vim="nvim"
alias vi="nvim"
alias oldvim="vim"

if [ -f '~/helpers.sh' ]; then
   source ~/helpers.sh
fi

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/rene/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/rene/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/rene/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/rene/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/rene/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/rene/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/rene/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/rene/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
