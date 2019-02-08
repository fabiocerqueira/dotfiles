#!/bin/bash
function _update_ps1() {
    PS1="┌─ $(~/go/bin/powerline-go $?)\n└─ "
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
