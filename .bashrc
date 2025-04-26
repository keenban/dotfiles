#      __               __             
#     / /_  ____ ______/ /_  __________
#    / __ \/ __ `/ ___/ __ \/ ___/ ___/
#   / /_/ / /_/ (__  ) / / / /  / /__  
#  /_.___/\__,_/____/_/ /_/_/   \___/  
#                                      

[[ $- != *i* ]] && return # If not running interactively, don't do anything
#=====| customization |=====#

stty -ixon # Disable ctrl-s and ctrl-q
shopt -s autocd # Allows cd with only dir name
export PS1='[\u@\H:\w]\$ ' # Custom prompt

#=====| auto sudo |=====#

for command in mount umount pacman ; do
	alias $command="sudo $command"
done; unset command

#=====| alias |=====#
#-----| default |-----#

alias ls='ls -h --group-directories-first --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias cpan='cpan -j $XDG_CONFIG_HOME/cpan/Config.pm'
alias gpg2='gpg2 --homedir "$XDG_DATA_HOME"/gnupg'
alias gpg='gpg --homedir "$XDG_DATA_HOME"/gnupg'
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts'

#-----| abbreviate |-----#

alias v='$EDITOR'
alias p='pacman'
