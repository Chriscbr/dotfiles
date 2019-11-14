# Unset all configuration options. This allows you to apply configiguration changes without
# restarting zsh. Edit ~/.p10k.zsh and type `source ~/.p10k.zsh`.
unset -m 'POWERLEVEL9K_*'

# typeset -g POWERLEVEL9K_MODE='nerdfont-complete'
# typeset -g POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\uE0B1' # 

# these two lines fix an issue so the > separators correctly appear
typeset -g POWERLEVEL9K_BACKGROUND='black'
typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_GAP_BACKGROUND=

typeset -g POWERLEVEL9K_PROMPT_ON_NEWLINE=true
typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon user virtualenv dir_writable dir vcs)
typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator background_jobs time)
typeset -g POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="$ "
typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
typeset -g POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S}"
typeset -g POWERLEVEL9K_DIR_HOME_BACKGROUND='black'
typeset -g POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='black'
typeset -g POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='black'
typeset -g POWERLEVEL9K_DIR_ETC_BACKGROUND='black'
typeset -g POWERLEVEL9K_DIR_HOME_FOREGROUND='blue'
typeset -g POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='blue'
typeset -g POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='blue'
typeset -g POWERLEVEL9K_DIR_ETC_FOREGROUND='blue'
typeset -g POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
typeset -g POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
typeset -g POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'
typeset -g POWERLEVEL9K_VCS_CLEAN_FOREGROUND='green'
typeset -g POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='green'
typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='green'
typeset -g POWERLEVEL9K_TIME_BACKGROUND='black'
typeset -g POWERLEVEL9K_TIME_FOREGROUND='white'
