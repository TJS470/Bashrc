# .bashrc
trial 1
echo 33
# Personal aliases
alias bb='ssh -X tjs470@bluebear.bham.ac.uk'
alias hydra='ssh -AXt tspankie@fs3chem.bham.ac.uk ssh -AXt tspankie@che-hydra.bham.ac.uk'
alias fs3='ssh tspankie@fs3chem.bham.ac.uk'
alias thor='ssh -X che-thor.bham.ac.uk'
alias dumbbell='cd ~/runs/Dumbbell'
alias quit='exit'
alias qq='clear'
alias qstat='showq'
alias bashrc='vi ~/.bashrc'
alias sourcebash='source ~/.bashrc'

# PS1
export PS1="\e]0;\h [W]\a\u@\h: \W\\$ \[$(tput sgr0)\]"

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# History
HISTSIZE=10000
HISTFILESIZE=20000
shopt -s histappend

# Window size
shopt -s checkwinsize

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Bash completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#if [ -f ~/.bash_git ]; then
 # source ~/.bash_git
 # . ~/.bash_git
#fi

