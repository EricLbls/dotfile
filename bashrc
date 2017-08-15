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
alias go='cd /data5/wjzang'
alias cd..='cd ..'

alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'


alias l='ls -lah'
alias l.='ls -d .* --color=auto'
alias la='ls -lAh'
alias ll='ls -lh'
alias ls='ls --color=tty'
alias lsa='ls -lah'

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# prompt
export PS1="\[\e[36m\]\u\[\e[m\]@\h:\[\e[31m\]\W\[\e[m\]\\$ "

# path
export PATH=$PATH:/data5/wjzang/bin/

# include profile

if [ -f $HOME/.profile ]; then
    source $HOME/.profile
fi
