test -r /sw/bin/init.sh && . /sw/bin/init.sh
alias ls='ls -FG'
alias ll='ls -alh'
PS1="\[\033[1;30m\][\[\033[1;31m\]\u\[\033[1;30m\]@\[\033[1;32m\]\D{%T %Z %a %D}\[\033[1;30m\]]\[\033[1;34m\]\W\[\033[1;30m\]\$\[\033[0m\]"

alias tmux="TERM=screen-256color-bce tmux"

alias tocori='ssh chunshen@cori.nersc.gov'
alias toguillimin='ssh chunshen@guillimin.hpc.mcgill.ca'
alias towsugrid='ssh gf8206@grid.wayne.edu'
alias tosdcc='ssh cshen@ssh.sdcc.bnl.gov'
alias toquark='ssh cshen@quark.phy.bnl.gov'
guillimin='chunshen@guillimin.hpc.mcgill.ca'
cori='chunshen@cori.nersc.gov'
wsugrid='gf8206@grid.wayne.edu'
source ~/bin/git-completion.bash
export CC=/usr/local/bin/gcc-7
export CXX=/usr/local/bin/g++-7

# add a clock in the terminal
#while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-25));date;tput rc;done &

export PATH="~/bin:$PATH"

# pythia
export PYTHIA8DIR=/Users/chunshen/Softwares/pythia/
export LD_LIBRARY_PATH="/Users/chunshen/Softwares/pythia/lib:$LD_LIBRARY_PATH"
export DYLD_LIBRARY_PATH="/Users/chunshen/Softwares/pythia/lib:$DYLD_LIBRARY_PATH"

# boost
export BOOST_ROOT=/Users/chunshen/Softwares/boost
export LD_LIBRARY_PATH="/Users/chunshen/Softwares/boost/lib:$LD_LIBRARY_PATH"
export DYLD_LIBRARY_PATH="/Users/chunshen/Softwares/boost/lib:$DYLD_LIBRARY_PATH"

# added by Anaconda3 5.2.0 installer
export PATH="/Users/chunshen/anaconda3/bin:$PATH"
