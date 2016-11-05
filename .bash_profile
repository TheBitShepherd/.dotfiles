# -----------------------------------
#  1. Environment Configuration
# -----------------------------------

# Change Prompt to ParrotOS Like (Idea From ParrotSec OS)
# https://github.com/ParrotSec/parrot-core/blob/8906f0eb27220133abe010f8e8c323d3e4f98439/parrot-core/parrot-core/root/.bashrc
export PS1="\n\[\033[1;32m\]┌──\[\033[0;37m\][\[\033[31m\]\u\[\033[0;33m\]@\[\033[1;36m\]\h\[\033[37m\]]\[\033[31m\]─\[\033[37m\][\[\033[32m\]\w\[\033[37m\]]\[\033[1;32m\]\n|\n└──> \[\033[35m\]༼ つ ◕_◕ ༽つ\[\033[0;33m\]#\[\033[32m\] "


#Set Default Editor
#------------------------------
export EDITOR=/usr/bin/vim

#Adding Some Color
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# ---------------------------------
# 2. Making the Terminal Better
# --------------------------------

# Place Alias Commands Here
alias c="clear"
alias ll="ls -al"
