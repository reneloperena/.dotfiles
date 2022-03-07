#Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export EDITOR=nvim

ZSH_THEME="agnoster"
plugins=(git node yarn docker-compose npm docker)

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


export PATH="$PATH:/Library/TeX/texbin"
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

# tabtab source for yarn package
# uninstall by removing these lines or running `tabtab uninstall yarn`
[[ -f /Users/rene/.config/yarn/global/node_modules/tabtab/.completions/yarn.zsh ]] && . /Users/rene/.config/yarn/global/node_modules/tabtab/.completions/yarn.zsh


# export GOOGLE_APPLICATION_CREDENTIALS="/Users/reneloperena/keychain/grupo-ruga-a0bcf9a792a1.json"
export GOOGLE_APPLICATION_CREDENTIALS="/Users/reneloperena/keychain/rlkey.json"
# export GOOGLE_APPLICATION_CREDENTIALS="/Users/reneloperena/keychain/uhomesadecv-88e151ef0246.json"
source /usr/local/opt/nvm/nvm.sh

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/rene/.nvm/versions/node/v10.15.2/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/rene/.nvm/versions/node/v10.15.2/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

alias g3="git log --graph --decorate --oneline"

export DATABASE_USERNAME=postgres
export NODE_ENV=development

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/reneloperena/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/reneloperena/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/reneloperena/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/reneloperena/google-cloud-sdk/completion.zsh.inc'; fi

export NPM_TOKEN=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

alias k=kubectl
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# Stuff for trato-hecho
export DATABASE_PASSWORD=GfJeAMQsCnjPk9
export TWILIO_ACCOUNT_SID=AC40dc5bbf979f66167bf1a31c369f187d
export TWILIO_AUTH_TOKEN=2e5898e0518f9408f3cc8f5996a3b450
export TWILIO_VERIFY_SERVICE_SID=VA86917d1914a3c45c6e2c4b4499a2f300
export PATH=/Users/reneloperena/.meteor:$PATH
 export PATH=$PATH:/Users/reneloperena/flutter/bin

