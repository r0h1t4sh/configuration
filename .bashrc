HISTSIZE=100000


# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# rohitash personal

############TERMINAL TWEAKS##############
export PS1="\`if [ \$? != 0 ]; then echo \[\e[33m\]---=== \[\e[31m\]\[\e[33m\]===---;fi\`\n\[\e[0;37m\][\[\e[1;31m\]\@\[\e[0;37m\]]\[\e[0;32m\]\u@\h\[\e[0;37m\] => " #[\[\e[1;34m\]\[\e[0;37m\]] \[\e[0;32m\]\$\[\e[0m\] "
export no_proxy=localhost,127.0.0.1/8,singularity
#export http_proxy='http://192.168.36.1:8080'


#########CUSTOM SCRIPT DIR##############
if [ -d $HOME/rohitash/scripts ]; then
   PATH=$PATH:$HOME/rohitash/scripts
fi

############ALIAS@@######################
alias list='ls -la'
alias p='pwd'
alias drush='drush -v'
alias todo='cd ~/todo'
alias ack='ack-grep'
alias dquilt="quilt --quiltrc=${HOME}/.quiltrc-dpkg"
#alias jslint='jslint --indent --'

#Search awesomely
bind '"\e[A"':history-search-backward
bind '"\e[B"':history-search-forward


#Share history across diff tabs and terminals
export HISTCONTROL=ignoredups:erasedups  
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
