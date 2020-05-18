# Unset all configuration options. This allows you to apply configiguration changes without
# restarting zsh. Edit ~/.p10k.zsh and type `source ~/.p10k.zsh`.
unset -m 'POWERLEVEL9K_*'

typeset -g POWERLEVEL9K_MODE='nerdfont-complete'
typeset -g POWERLEVEL9K_VCS_GIT_ICON=''  # '\uF408 '
typeset -g POWERLEVEL9K_VCS_GIT_GITHUB_ICON='' # '\uF408 '

# Enable "transition prompt" - will only output the first line of the prompt
# to the history above if you change directories, so otherwise you just see
# a clear line of commands.
# typeset -g POWERLEVEL9K_TRANSIENT_PROMPT='same-dir'
# typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIINS_CONTENT_EXPANSION='$'
# # Green prompt symbol if the last command succeeded.
# typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND='white'
# # Red prompt symbol if the last command failed.
# typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND='white'

# these two lines fix an issue so the > separators correctly appear
typeset -g POWERLEVEL9K_BACKGROUND='black'
typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_GAP_BACKGROUND=

typeset -g POWERLEVEL9K_PROMPT_ON_NEWLINE=true
typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon user anaconda virtualenv dir_writable dir vcs)
typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator background_jobs battery time)
typeset -g POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="$ "
typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
typeset -g POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S}"
typeset -g POWERLEVEL9K_USER_ICON="\uF415" # 
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
typeset -g POWERLEVEL9K_ANACONDA_FOREGROUND='cyan'
typeset -g POWERLEVEL9K_ANACONDA_BACKGROUND='black'
typeset -g POWERLEVEL9K_VIRTUALENV_FOREGROUND='cyan'
typeset -g POWERLEVEL9K_VIRTUALENV_BACKGROUND='black'
typeset -g POWERLEVEL9K_BATTERY_STAGES=('\uf244 ' '\uf243 ' '\uf242 ' '\uf241 ' '\uf240 ')
