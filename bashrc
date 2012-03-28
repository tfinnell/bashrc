#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source private
if [ -f ~/.bash/private ]
then
    . ~/.bash/private
fi

# Generic Aliases
#
alias ls='ls --color=auto'
alias lsh='ls -lah'
alias vi='vim'
alias tmux='tmux -2'
alias p='pushd'
alias o='popd'
alias d='dirs -v'

# alias and add git-achievements to path if the repo exists
if [ -d ~/git/git-achievements ]
then
    PATH=$PATH:~/git/git-achievements
    alias git="git-achievements"
fi

# Wifi Networks
#
#alias _net0='sudo netcfg _net0'
#alias cascadia='sudo netcfg cascadia'

# Prompts
#
case $TERM in
    rxvt-unicode-256color) PS1='\[\e[1;30m\][\[\e[0;34m\]\h\[\e[1;30m\]:\[\e[0;35m\]\w\[\e[1;30m\]] $(__git_ps1 "\[\e[1;30m\](\[\e[0;31m\]%s\[\e[1;30m\])")\n\[\e[1;30m\]\$\[\e[0m\] ' ;;
    screen-256color) PS1='\[\e[1;30m\][\[\e[0;34m\]\h\[\e[1;30m\]:\[\e[0;35m\]\w\[\e[1;30m\]] $(__git_ps1 "\[\e[1;30m\](\[\e[0;31m\]%s\[\e[1;30m\])")\n\[\e[1;30m\]\$\[\e[0m\] ' ;;
    *) PS1='[\u@\h \W]\n\$ ' ;;
esac

# add to path if hadoop is in /opts
if [ -d ~/bin:/opt/hadoop-1.0.1/bin ]
then
    PATH=$PATH:~/bin:/opt/hadoop-1.0.1/bin
fi

EDITOR="vim"
VISUAL="vim"

# Mounting network share
function wdext {
if grep -qs '/media/wdext ' /proc/mounts; then
    read -p "wdext already mounted... unmount? [N/y]"
    [ "$REPLY" == "y" ] && sudo umount /media/wdext
else
    echo "mounting..."
    sudo mount //rachael/wdext /media/wdext -o credentials=/etc/samba/cifs
fi
}
