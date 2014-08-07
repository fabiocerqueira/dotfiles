#!/bin/bash

# 
# Name:          fab_bash_completion
# Description:   Adds tab-completion to fabfile tasks
# Date:          2009-10-28
# 
# Author:        Enrico Batista da Luz
# E-mail:        rico.bl@gmail.com
# Website:       http://ricobl.wordpress.com/
# 
# Installation:  point to this file from your .bash_profile, like so:
# 
#     . ~/path/to/fab_bash_completion
#
# Mostly adapted from:
# 
#	http://www.debian-administration.org/article/An_introduction_to_bash_completion_part_2
# 

_fab_completion()
{
	local cur prev opts

	COMPREPLY=()
	cur="${COMP_WORDS[COMP_CWORD]}"
	prev="${COMP_WORDS[COMP_CWORD-1]}"

	# Get the list of available tasks, ignoring errors (missing or invalid fabfile)
	# Removing the "Available commands" header and any empty line or spaces
	opts="`fab --list 2> /dev/null | grep -v -e 'Available commands' -e "^$" | sed -e 's/ \+\(\w\+\).*/\1/g'`"

	COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
	return 0
}
complete -F _fab_completion -o default fab
