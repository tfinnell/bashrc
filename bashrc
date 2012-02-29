#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source private
#
. ~/.bash/private

# Generic Aliases
#
alias ls='ls --color=auto'
alias vi='vim'
alias tmux='tmux -2'
alias p='pushd'
alias o='popd'
alias d='dirs -v'

# Wifi Networks
#
alias _net0='sudo netcfg _net0'
alias cascadia='sudo netcfg cascadia'

# Prompts
#
case $TERM in
    screen-256color) PS1='\[\e[0;32m\][\[\e[0m\]\[\e[0:34m\]\u@\h:\[\e[0m\]\[\e[0;35m\]\w\[\e[0m\]\[\e[0;32m\]] $(~/.rvm/bin/rvm-prompt) $(__git_ps1 "\[\e[0;32m\](\[\e[0m\]\[\e[0;31m\]%s\[\e[0m\]\[\e[0;32m\])\[\e[0m\]")\n\[\e[1;30m\]\$\[\e[0m\] ' ;;
rxvt-unicode-256color) PS1='\[\e[0;32m\][\[\e[0m\]\[\e[0:34m\]\u@\h:\[\e[0m\]\[\e[0;35m\]\w\[\e[0m\]\[\e[0;32m\]] $(__git_ps1 "\[\e[0;32m\](\[\e[0m\]\[\e[0;31m\]%s\[\e[0m\]\[\e[0;32m\])\[\e[0m\]")\n\[\e[1;30m\]\$\[\e[0m\] ' ;;
*) PS1='[\u@\h \W]\n\$ ' ;;
esac

PATH=~/bin:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

EDITOR="vim"
VISUAL="vim"

function wdext {
if grep -qs '/media/wdext ' /proc/mounts; then
    echo "wdext already mounted"
else
    echo "mounting..."
    sudo mount //rachael/wdext /media/wdext -o credentials=/etc/samba/cifs
fi
}
