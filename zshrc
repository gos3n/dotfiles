source $HOME/.profile

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gnzh" # set by `omz`

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

zstyle ':omz:update' frequency 13

DISABLE_LS_COLORS="true"

DISABLE_AUTO_TITLE="true"

ZSH_CUSTOM=$HOME/dotfiles/omz.d

plugins=(git)

source $ZSH/oh-my-zsh.sh

# user config
#
export MANPATH="/usr/local/man:$MANPATH"

# language env
export LANG=en_US.UTF-8

# compilation flags
export ARCHFLAGS="-arch $(uname -m)"

