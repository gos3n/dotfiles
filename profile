### ~/.profile
#
#
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

if [ -e $HOME/.source ]; then
	. $HOME/.source
fi

# colorize
#export MANPAGER="less -R --use-color -Dd+g -Du+b"
#
# highlight
#export GREP_COLOR="1;32"
#
