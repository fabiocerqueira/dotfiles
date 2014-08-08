#!/bin/bash
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;34m\]"
LIGHT_RED="\[\033[1;31m\]"
LIGHT_GREEN="\[\033[1;32m\]"
WHITE="\[\033[1;37m\]"
LIGHT_GRAY="\[\033[0;37m\]"
COLOR_NONE="\[\e[0m\]"

function parse_git_branch {
    git_status="$(git status 2> /dev/null)"
    branch_pattern="^On branch ([^${IFS}]*)"
    remote_pattern="Your branch is (behind|ahead)"
    diverge_pattern="Your branch and (.*) have diverged"
    if [[ ! ${git_status}} =~ "working directory clean" ]]; then
        state=" 🔥  "
    fi
    # add an else if or two here if you want to get more specific
    if [[ ${git_status} =~ ${remote_pattern} ]]; then
        term_time=${BASH_REMATCH[1]}
        if [[ ${term_time} == "ahead" ]]; then
            remote="🔺 "
        elif [[ ${term_time} == "behind" ]]; then
            remote="🔻 "
        fi
    fi
    if [[ ${git_status} =~ ${diverge_pattern} ]]; then
        remote="♦️ "
    fi
    if [[ ${git_status} =~ ${branch_pattern} ]]; then
        branch=${BASH_REMATCH[1]}
        echo "[${branch}]${remote}${state}"
    fi
}

function prompt_func() {
    previous_return_value=$?;
    prompt="\u@\h:\W${GREEN}$(parse_git_branch)"
    venv=""
    if [[ -n "$VIRTUAL_ENV" ]]; then
        venv="$(basename $VIRTUAL_ENV)"
    fi
    if [[ $venv != "" ]]; then
        venv="(${venv})"
    fi
    if test $previous_return_value -eq 0
    then
        PS1=" 🍺  ${venv}${prompt}${COLOR_NONE}$ "
    else
        PS1=" 🍺  ${venv}${prompt}${RED}${COLOR_NONE}$ "
    fi
}

export PROMPT_COMMAND="prompt_func"
