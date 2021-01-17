# NOTE to self:
#
# Order of zsh loading scripts:
# 1. zshenv (unused)
# 2. zprofile
# 3. zshrc
# 4. zlogin (unused)
# 5. zlogout (unused)

# Path to your oh-my-zsh installation.	
export ZSH="$HOME/.oh-my-zsh"	

# A function called handle_completion_insecurities, seems to take up a lot of
# time between commands, and this disables it.
export ZSH_DISABLE_COMPFIX=true

plugins=(
    colored-man-pages
    fancy-ctrl-z
    osx
    safe-paste
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Fix slowdown caused by compinit	
autoload -Uz compinit	
for dump in $HOME/.zcompdump(N.mh+24); do	
  compinit	
done	
compinit -C
# end fix

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

export LSCOLORS='exfxcxdxbxGxDxabagacad'
export CLICOLOR=1

alias ls="ls -F"

# Define colors for the completion system if they're not already defined
if [[ -z "$LS_COLORS" ]]; then
    export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'
fi

# Load powerlevel10k theme preferences
# To customize prompt, run `p10k configure` or edit $HOME/.p10k.zsh.
[[ -f $HOME/.p10k.zsh ]] && source $HOME/powerlevel10k/powerlevel10k.zsh-theme
[[ -f $HOME/.p10k.zsh ]] && source $HOME/.p10k.zsh

# Load the shell dotfiles, and then some:
for file in $HOME/.{aliases,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

# Disable the virtual-env prompt prefix
# this should automatically be added by powerlevel10k shell
typeset -g VIRTUAL_ENV_DISABLE_PROMPT=1

# Load NVM
export NVM_DIR="$HOME/.nvm"
# [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
# [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# NVM is slow to load, so just defer it until needed.
nvm() {
  echo "🚨 NVM not loaded! Loading now..."
  unset -f nvm
  export NVM_PREFIX=$(brew --prefix nvm)
  [ -s "$NVM_PREFIX/nvm.sh" ] && . "$NVM_PREFIX/nvm.sh"
  nvm "$@"
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$($HOME/anaconda3/bin/conda shell.zsh hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/etc/profile.d/conda.sh" ]; then
        . "$HOME/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Enables reverse-i-search with ctrl + r (press ctrl + r multiple times to see more matches)
bindkey '^r' history-incremental-search-backward

# Enables zsh history searching by pressing up or down keys after typing something in
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end
