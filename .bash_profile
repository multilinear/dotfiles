# ~/.bash_profile: executed by bash(1) for login shells.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

umask 022

sudo loadkeys /usr/share/keymaps/caps2ctrl.map

# the rest of this file is commented out.

# include .bashrc if it exists

export PATH=$HOME/bin:$HOME/system_bin_hg:$PATH:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin
setterm -blength 0
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
if [[ -n "$SSH_CLIENT" ]]; then
    screen -xRRA -S base -p=
fi

# set PATH so it includes user's private bin if it exists
#if [ -d ~/bin ] ; then
#    PATH=~/bin:"${PATH}"
#fi

# do the same with MANPATH
#if [ -d ~/man ]; then
#    MANPATH=~/man:"${MANPATH}"
#fi
