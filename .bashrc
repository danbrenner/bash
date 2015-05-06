# ~/.bashrc

# colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# history
export HISTFILESIZE=1000000000 # more history
export HISTSIZE=1000000 # more history
export HISTTIMEFORMAT='%F %T ' # timestamps
export HISTCONTROL=ignoredups # ignore duplicates in history

# command aliases
alias app="open -a"
alias finder="open -a Finder $1"
alias bbe="open -a BBEdit $1"
alias freespace="df -h"
alias lh="ls -lah"
alias sx="screen -x"
alias sls="screen -ls"

# ssh aliases
alias s_server="ssh -i ~/.ssh/id_rsa_IDENTITY username@server.com"

# sounds
alias horn="afplay ~/Dropbox/sound\ effects/air_horn.wav >/dev/null 2>&1 </dev/null &"
alias laser="afplay ~/Dropbox/sound\ effects/laser_shots.mp3 >/dev/null 2>&1 </dev/null &"

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
