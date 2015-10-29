# Autoloads
autoload -Uz compinit
autoload -U promptinit
autoload -U colors && colors
# End autoloads

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/matt/.zshrc'

compinit
# End of lines added by compinstall

# ROS stuff
source ~/CWRU/ros_ws/devel/setup.zsh
# End of ROS stuff

promptinit

setopt auto_pushd
setopt pushd_silent
setopt pushd_to_home
setopt rm_star_wait
setopt no_case_glob
setopt numeric_glob_sort

# Command aliases
alias ls='ls -A --color=always'
alias less='less -R'
# End command aliases

# Baxter Stuff
alias baxter_master='export ROS_MASTER_URI="http://baxter01:11311"'
# End Baxter stuff

# Prompt customization
setopt prompt_subst
precmd() {
        psvar[1]=$(expr match $ROS_MASTER_URI 'http://\([A-Za-z0-9]*\):[0-9]*')
}
export PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg_no_bold[yellow]%}%~ %{$reset_color%}%#"
export RPROMPT="[%{$fg_no_bold[yellow]%}%h%{$reset_color%}][%{$fg_no_bold[yellow]%}%1v%{$reset_color%}]"
# End prompt customization
