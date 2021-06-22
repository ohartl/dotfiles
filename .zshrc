#!/usr/bin/zsh


# Envirnoment vars
source ~/.vars


# Path to the oh-my-zsh installation
export ZSH=$HOME/.dotfiles/modules/oh-my-zsh
ZSH_DISABLE_COMPFIX=true

# Allow local customizations in the ~/.zshrc_before.local file
[ -f ~/.zshrc_before.local ] && source ~/.zshrc_before.local


# ZSH Settings
#####################################################################

# Set automatic cd (typing directory name with no 'cd')
setopt autocd

# Use incremental search
bindkey "^R" history-incremental-search-backward

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# _ and - will be interchangeable
HYPHEN_INSENSITIVE="true"

# ohartl: Disabled updatig because we are using the git_client submodule
DISABLE_UPDATE_PROMPT="true"
DISABLE_AUTO_UPDATE="true"

# ohartl: testing this for now, should make it a bit faster while browsing large git_client repos
DISABLE_UNTRACKED_FILES_DIRTY="true"

# this is much better
HIST_STAMPS="yyyy-mm-dd"

# Plugins for oh-my-zsh. Too many plugins slow down shell startup
plugins=(autojump git_client docker docker-compose composer phing)

# Make autojump plugin work on WSL
unsetopt BG_NICE

#####################################################################


# Start oh-my-zsh with settings
source $ZSH/oh-my-zsh.sh


# fix for agnoster theme prompt context
#if [[ "$ZSH_THEME" == "agnoster" ]]; then
#    prompt_context() {
#        if [[ ! ${DEFAULT_USERS[*]} =~ "$USER" ]]; then
#            prompt_segment black default "%(!.%{%F{yellow}%}.)$USER@%m"
#        fi
#    }
#fi

# Aliases
source ~/.aliases


# Allow local customizations in the ~/.zshrc_after.local file
[ -f ~/.zshrc_after.local ] && source ~/.zshrc_after.local
