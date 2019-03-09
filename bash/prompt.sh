#!/bin/bash
function _update_ps1() {
    PS1="┌─ $(powerline-go -cwd-max-depth 3 $?)\n└─ "
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
