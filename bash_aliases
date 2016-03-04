# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Technical Services Personal ~/.bash_aliases file
# My Personal aliases to improve work flow
# 

alias myscripts='cd /usr/local/sbin; clear' 
  # This is the location of My Scripts
  # by adding my scripts here, I can excecute
  # from within any folder/location at the command prompt

alias isinstalled='which'
  # This allows you to check if a program is installed,
  # and will show you its location.
  # Run it by tapying isinstalled <NameOfProgram>
  
#  
# Some Usefull aliases from the net - http://goo.gl/VubenI
#

## my favorite ones
alias c='clear'
alias x='exit'
alias b='byobu'
## handy short cuts #
alias h='history'
alias j='jobs -l'
alias top='htop'
alias vi='vim'

## if user is not root, pass all commands via sudo #
if [ $UID -ne 0 ]; then
    alias shutdown='sudo /sbin/shutdown -h now'
    alias poweroff='sudo /sbin/poweroff'
    alias reboot='sudo /sbin/reboot'
    alias halt='sudo /sbin/halt'
    alias update='sudo apt-get update && sudo apt-get -y upgrade && sudo aptitude update && sudo aptitude -y upgrade'
    alias install='sudo aptitude install -y'
fi

## Colorize the ls output ##
alias ls='ls --color=auto'

## Use a long listing format ##
alias ll='ls -la'

## Show hidden files ##
alias l.='ls -dF .* --color=auto'

## List Just Directories ##
alias ld='ls -lF --color=auto'

## get rid of command not found ##
alias cd..='cd ..'
 
## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

## Makes Parent Directories 
alias mkdir='mkdir -pv'

## Stop after sending count ECHO_REQUEST packets #
alias ping3='ping -c 3'
alias ping10='ping -c 10'
## Do not wait interval 1 second, go fast #
alias fastping='ping -c 5 -s.2'

## Show Open Ports
alias ports='netstat -tulanp'


## Add safety nets ##
## do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'

## confirmation
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

## Parenting changing perms on /
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

## Resume wget by default ##
alias wget='wget -c'

## Sublime Text Editor
alias sublime='sudo sublime_text'


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
