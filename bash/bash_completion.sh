unamestr=`uname`
if [[ "$unamestr" == 'Darwin' ]]; then
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
    fi
elif [[ "$unamestr" == 'Linux' ]]; then
    if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
    fi
fi

