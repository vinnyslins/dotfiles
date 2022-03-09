# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# zsh theme
ZSH_THEME="risto"

# plugins
plugins=(git autojump)

# oh-my-zsh
source $ZSH/oh-my-zsh.sh

# env vars and aliases by env
if [[ "$(uname -s)" == "Darwin" ]]; then
  export ZPLUG_HOME=$(brew --prefix)/opt/zplug
  alias up="brew update & brew upgrade"
elif [[ "$(uname -s)" == "Linux" ]]; then
  export ZPLUG_HOME=~/.zplug
  alias up="sudo apt update && sudo apt upgrade && sudo apt dist-upgrade && sudo apt autoremove"
fi

# zplug
source $ZPLUG_HOME/init.zsh

# zplug plugins
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug load

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
