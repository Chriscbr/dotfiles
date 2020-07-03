zmodload zsh/zprof
alias ls="${aliases[ls]:-ls} -G"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Define colors for BSD ls if they're not already defined
if [[ -z "$LSCOLORS" ]]; then
    export LSCOLORS='exfxcxdxbxGxDxabagacad'
fi

# Define colors for the completion system if they're not already defined
if [[ -z "$LS_COLORS" ]]; then
    export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'
fi

export GREP_COLOR='37;45' # BSD.
export GREP_COLORS="mt=$GREP_COLOR" # GNU.

alias grep="${aliases[grep]:-grep} --color=auto"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/powerlevel10k/powerlevel10k.zsh-theme
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# Load the shell dotfiles, and then some:
for file in ~/.{aliases,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

# Disable the virtual-env prompt prefix
# this should automatically be added by powerlevel10k shell
typeset -g VIRTUAL_ENV_DISABLE_PROMPT=1

# Disable zsh autocorrection
unsetopt correct
unsetopt correct_all

# Enable reverse search
bindkey -v
bindkey '^R' history-incremental-search-backward

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/rybickic/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/rybickic/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/rybickic/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/rybickic/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
zprof
