test -r /sw/bin/init.sh && . /sw/bin/init.sh
alias ls='ls -FG'
alias ll='ls -alh'
PS1="\[\033[1;30m\][\[\033[1;31m\]\u\[\033[1;30m\]@\[\033[1;32m\]\D{%T %Z %a %D}\[\033[1;30m\]]\[\033[1;34m\]\W\[\033[1;30m\]\$\[\033[0m\]"

alias python2='python2.7'
alias python3='python3.5'
alias ipython2='ipython-2.7'
alias ipython3='ipython-3.5'
alias gfortran='gfortran-mp-5'
alias subl='sublime'
alias tocori='ssh chunshen@cori.nersc.gov'
alias toguillimin='ssh chunshen@guillimin.hpc.mcgill.ca'
alias towsugrid='ssh gf8206@grid.wayne.edu'
alias tosdcc='ssh cshen@ssh.sdcc.bnl.gov'
alias toquark='ssh cshen@quark.phy.bnl.gov'
guillimin='chunshen@guillimin.hpc.mcgill.ca'
cori='chunshen@cori.nersc.gov'
source ~/bin/git-completion.bash
export CC=/opt/local/bin/gcc-7
export CXX=/opt/local/bin/g++-7

# add a clock in the terminal
#while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-25));date;tput rc;done &

##
# Your previous /Users/chunshen/.bash_profile file was backed up as /Users/chunshen/.bash_profile.macports-saved_2015-11-03_at_11:02:57
##

# MacPorts Installer addition on 2015-11-03_at_11:02:57: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH="/Developer/NVIDIA/CUDA-7.5/bin:$PATH"

##
# Your previous /Users/chunshen/.bash_profile file was backed up as /Users/chunshen/.bash_profile.macports-saved_2016-10-11_at_13:06:51
##

# MacPorts Installer addition on 2016-10-11_at_13:06:51: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


PGI=/opt/pgi; export PGI
LM_LICENSE_FILE=$PGI/license.dat; export LM_LICENSE_FILE
PATH=$PGI/osx86-64/16.10/bin/:$PATH; export PATH

export PATH="~/bin:$PATH"

# pythia
export PYTHIA8DIR=/Users/chunshen/Softwares/pythia/pythia8235
