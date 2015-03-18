# ~/.bash_profile

# colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# aliases
alias app="open -a"
alias freespace="df -h"
alias lh="ls -lah"

# make less use colors
alias less='less -R'

# functions
phplines() {
    # recursively count all lines in files within current dir, filtered by extension given as first param
	( find ./ -name '*.php' -print0 | xargs -0 cat ) | wc -l;
}
