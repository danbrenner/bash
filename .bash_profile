# ~/.bash_profile

# colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# aliases
alias app="open -a"
alias freespace="df -h"
alias lh="ls -lah"
alias sx="screen -x"
alias sls="screen -ls"

# make less use colors
alias less='less -R'

# functions
phplines() {
	# recursively count all lines in php files within current dir, filtered by extension given as first param
	( find ./ -name '*.php' -print0 | xargs -0 cat ) | wc -l;
}
sn() {
	# make screen session with specified name, start shell, and attach to it
	echo 'starting screen session...';
	screen -S $1 -d -m -t shell bash;
	screen -x $1;
}
