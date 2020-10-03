#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias panik='rm -rf .ClassifiedInformation'
alias distract='chromium https://ieeexplore.ieee.org/document/8576929 & disown; code & disown; vim .config/bspwm/bspwmrc & disown; zathura Desktop/Norman\ S.\ Nise\ -\ Control\ Systems\ Engineering-Wiley\ \(2015\).pdf'
