#!/bin/bash
#alias
alias ll="ls -l"
alias df="df -kh"
alias du="du -kc"
alias lvim='vim -c "normal '\''0"'
alias catpdf="/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py"
alias md5sum="openssl dgst -md5"
alias qmd5="python -c \"import hashlib;import sys; print hashlib.md5(''.join(sys.argv[1:])).hexdigest()\""
alias zen="python -c \"import this\""
#tar alias
alias targzc='tar -zcvf'
alias targzd='tar -zxvf'
#rmpyc
alias rmpyc='find . -name __pycache__ -delete -or -iname "*.py[co]" -delete'
#pyc
alias pysmtp='sudo echo running... && sudo python -m smtpd -n -c DebuggingServer localhost:25'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias h="honcho run"
# fix came
alias fixcam="sudo killall AppleCameraAssistant;sudo killall VDCAssistant"



unamestr=`uname`
if [[ "$unamestr" == 'Darwin' ]]; then
    alias updatedb="/usr/libexec/locate.updatedb"
    alias p="qlmanage -p"
    alias localip="ipconfig getifaddr en1"
    alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"
    alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
    alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
    alias o="open"
    alias oo="open ."
fi
if [[ "$unamestr" == 'Linux' ]]; then
    function open() {
        if [ -z "$1" ]; then
            xdg-open . &> /dev/null &
        else
            xdg-open $1 &> /dev/null &
        fi
    }
    alias o=open
    alias oo=open
    alias localip="ifconfig eth0 | grep -o 'addr:\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)' | sed -e 's/addr://'"
    alias ips="ifconfig -a | grep -o 'addr:\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)' | sed -e 's/addr://'"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

conda_workon() {
    source ~/anaconda3/envs/$1/bin/activate $1
}
alias conda_workon=conda_workon
alias gnib="curl 'https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/(getAppsNear)?openpage&cat=Study&sbcat=All&typ=Renewal'"
alias gnibw="curl 'https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/(getAppsNear)?openpage&cat=Work&sbcat=All&typ=Renewal'"
alias gnibf="curl 'https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/(getAppsNear)?openpage&cat=Other&sbcat=All&typ=Renewal'"
