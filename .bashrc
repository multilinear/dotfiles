# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If running interactively, then:
if [ "$PS1" ]; then
    # ****************** changes daily *****************
    export TERM=rxvt
    export PYTHONSTARTUP=.pythonrc.py
    export CVS_RSH=/usr/bin/ssh
    export RSYNC_RSH=/usr/bin/ssh
    export SMLNJ_HOME=/usr/lib/smlnj
    #just path stuff

    # ************ stuff that's ALWAYS true **************
    #so I don't have to specify it everytime I use rsync
    eval `dircolors -b`
    export EDITOR="/usr/bin/vim"
    alias ls='ls --color=auto'
    alias emacs='emacs -nw'
    alias startx='exec startx'
    alias sshhome='ssh -p2223 boomer-box.hopto.org'
    alias sshunix='ssh unix39.andrew.cmu.edu'
    alias sml='rlwrap sml'
    alias ocaml='rlwrap ocaml'
    alias mutt='clear && mutt'
    alias scr="screen -xRRA -S base -p="
    #alias irssi='torify irssi'
    
    # no crash dumps
		ulimit -c0

    #### paranoia
    # set a fancy prompt
    COLOR="36"
    if test "$SSH_CLIENT"; then
      COLOR="37"
    fi
    if [ $USER != root ]; then
      PS1="\[\e[${COLOR}m\]\j,"'$? me@\h:\W\$ \[\e[0m\]'
    else
      PS1="\[\e[31m\]\j,"'$? root@\h:\W\$ \[\e[0m\]'
    fi
    xset b off

#cat $HOME/tmp/fortune
#(fortune -a > $HOME/tmp/fortune &) >/dev/null
fi
