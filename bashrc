#------------------------------------------////
# Colors:
#------------------------------------------////
black='\033[0;30m'
blue='\033[0;34m'
green='\033[0;32m'
cyan='\033[0;36m'
red='\033[0;31m'
purple='\033[0;35m'
brown='\033[0;33m'
lightgray='\033[0;37m'
darkgray='\033[1;30m'
lightblue='\033[1;34m'
lightgreen='\033[1;32m'
lightcyan='\033[1;36m'
lightred='\033[1;31m'
lightpurple='\033[1;35m'
yellow='\033[1;33m'
white='\033[1;37m'
nc='\033[0m'

#------------------------------------------////

# aliases
alias ls='ls -G'
alias cd..="cd .."
alias l="ls -al"
alias ll="ls -al"
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac


