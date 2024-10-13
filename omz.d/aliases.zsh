#!/usr/bin/env zsh

### env var
export EDITOR=nvim
export VISUAL=nvim
export SUDO_EDITOR=nvim

export HISTCONTROL=ignoreboth:erasedups
export PROMPT_COMMAND="history -a; history -n"
export HISTIGNORE="ls:ll:cd:pwd:bg:fg:history"
export HISTSIZE=100000
export HISTFILESIZE=10000000
export HISTTIMEFORMAT="%d/%m/%y %T "

### colors
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
	alias xzegrep='xzegrep --color=auto'
	alias xzfgrep='xzfgrep --color=auto'
	alias xzgrep='xzgrep --color=auto'
	alias zegrep='zegrep --color=auto'
	alias zfgrep='zfgrep --color=auto'
	alias zgrep='zgrep --color=auto'
fi

### custom
## me is you
alias vim='nvim'

## apt
alias goupdate='sudo apt update && sudo apt-get update'
alias goupgrade='sudo apt upgrade -y && sudo apt-get upgrade -y'
alias gocleanapt='sudo apt autoremove -y && sudo apt autoclean'

# distribution upgrade
alias goupdist='sudo apt-get dist-upgrade -y'

### info
## ip
alias gomyip='. $HOME/.scripts/query-ip.sh'

### scripts
alias golistscripts='. $HOME/.scripts/listscripts.sh'

### command args
alias ld='ls -ad'
alias la='ls -la'
alias ll='ls -a1'
alias l.='ls -d .*'

### JUST ADDED
alias echormLine='echo -n "Enter Path: ";read echormLine && sed -i "$ d" $echormLine'
alias gogetdate='zsh $HOME/.scripts/godate.sh'
#
## v8.21
alias gosetsocks='. $HOME/.proxy/socks5.sh'
alias gosethttp='. $HOME/.proxy/http-s.sh'
alias goqproxy='. $HOME/.proxy/query-proxy.sh'
alias goclearnet='. $HOME/.proxy/unset-proxy.sh'
alias gosetaptip='export GO_APT_PROXY="1";wait; echo $GO_APT_PROXY'
alias gounsetaptip='unset GO_APT_PROXY'
alias goaptproxy='. $HOME/.proxy/apt-proxy.sh'
alias gofixdisplay='. $HOME/.screenlayout/fix-display.sh'
alias gotimedate='. $HOME/.scripts/clock.sh'
alias goupalias='. $HOME/.bash_aliases'
#
## v8.22
alias sourcegozsh='. $HOME/.zshrc'
alias sourcegoalias='. $HOME/.bash_aliases'
#
## v8.27
alias gonote='. $HOME/.scripts/echonote.sh'
alias gormline='. $HOME/.scripts/rmlastLine.sh'
alias gormfline='. $HOME/.scripts/rmfirstLine.sh'
alias goechots='. $HOME/.scripts/echots.sh'
alias gopaneall='tmux setw synchronize-pane on'
alias gopaneoff='tmux setw synchronize-pane offi'
alias queryip="curl http://ipecho.net/plain; echo"
#
## v9.03
alias cls='clear'
alias gospace='lsblk -o NAME,MOUNTPOINTS,SIZE,FSUSE%'

