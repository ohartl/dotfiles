#!/bin/bash


# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac


# Envirnoment vars
source ~/.vars


# Allow local customizations in the ~/.bashrc_before.local file
[ -f ~/.bashrc_before.local ] && source ~/.bashrc_before.local


# BASH Settings
#####################################################################

# Ignore case during tab completion.
bind 'set completion-ignore-case on'

# check the window size after each command
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all dotfiles and zero or more directories and subdirectories.
shopt -s globstar

#####################################################################


# Aliases
source ~/.aliases


# Allow local customizations in the ~/.bashrc_after.local file
[ -f ~/.bashrc_after.local ] && source ~/.bashrc_after.local
