autoload -Uz colors && colors
autoload -Uz promptinit && promptinit
autoload -Uz compinit && compinit

# set prompt theme
export PROMPT='%{%F{yellow}%}%1~%{%F{reset_color}%} $ '
export TERM='xterm-256color'

# executable paths
export PATH="/usr/local/sbin:$PATH"

# aliases
alias ll='ls -la'
alias lll='ls -ld . .. *'
alias env='env | sort'