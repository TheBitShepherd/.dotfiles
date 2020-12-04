#
# General
#

ZSH_THEME="powerlevel10k/powerlevel10k"
export ZSH=$HOME/oh-my-zsh
source $ZSH/oh-my-zsh.sh



#
# History
#

export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

#
# Pyenv Virtualenv
#
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

#
# Vim Stuff
#
# Make Vi mode transitions faster (KEYTIMEOUT is in
# hundredths of a second)
export KEYTIMEOUT=1

#
# Aliases
#

# reload .zshrc file
alias zshconfig="source ~/.zshrc"
# edit zsh theme
alias zshtheme="vim ~/repos/dotfiles/zsh/brandor.zsh-theme"
# use neovim
alias vim='nvim'
# edit .vimrc
alias vimrc="vim ~/repos/dotfiles/vim/.vimrc"
# edit ~/.config/nvim/init.vim
alias vinit='vim ~/.config/nvim/init.vim'
# edit .zshrc
alias zshrc="vim ~/repos/dotfiles/zsh/.zshrc"
# edit zsh custom theme
alias zshtheme="vim ~/repos/dotfiles/zsh/brandor.zsh-theme"
alias c="clear"
alias ll="ls -l"
alias lal="ls -al"
alias chrome="open -a /Applications/Google\ Chrome.app"
alias notes="vim ~/.notes"
alias dfs="cd ~/repos/dotfiles"
alias ..="cd .."
alias untar="tar -zxvf"

alias g="git"
alias gsl="git stash list"
alias gsc="git stash clear"


#
# SFDO Specific
#
alias metaci="c; cd ~/repos/metaci; source env; bin/unpack-node"
alias cumulusci="c; cd ~/repos/cumulusci"
alias metadeploy="c; cd ~/repos/metadeploy; source env; bin/unpack-node"
alias metashare="c; cd ~/repos/metashare"
alias npsp="c; cd ~/repos/npsp"
alias statusite="c; cd ~/repos/statusite"


#
# CumulusCI
#
alias ccilog='vim ~/.cumulusci/logs/cci.log'
alias ccfi='c; cci flow info'
alias ccfl='c; cci flow list'
alias ccfr='c; cci flow run'
alias ccob='c; cci org browser'
alias ccoc='c; cci org connect'
alias ccod='c; cci org default'
alias ccoi='c; cci org info'
alias ccol='c; cci org list'
alias ccor='c; cci org remove'
alias ccos='c; cci org scratch'
alias ccsd='c; cci org scratch_delete'
alias ccrm='c; cci org scratch_delete'
alias ccpc='c; cci project cd'
alias ccpd='c; cci project dependencies'
alias ccpi='c; cci project info'
alias ccpl='c; cci project list'
alias ccsc='c; cci service connect'
alias ccsl='c; cci service list'
alias ccss='c; cci service show'
alias cctd='c; cci task doc'
alias ccti='c; cci task info'
alias cctl='c; cci task list'
alias cctr='c; cci task run'
alias ccupg='c; pip install --upgrade cumulusci'

# grep for task
function gft() {
    cci task list | grep $1
}

# grep for flow
function gff() {
    cci flow list | grep $1
}
 
# pytest run failed command
function pt() {
    python -m pytest $1  -l --disable-warnings
}

# run shell command through cci
function ccicmd() {
        cci task run command -o command eval($1)
}

# grep task config
function gtc() {
    cci_scroll="
             ___________________
        ()==(                  (@==()
             '__________________'|
               |                 |
               |  cumulusci.yml  |
             __)_________________|
        ()==(                   (@==()
             '------------------'"
   echo $cci_scroll
   grep \ $1\: /Users/brandon.parker/repos/cumulusci/cumulusci/cumulusci.yml -A 15 -n
}
#
# git
#
alias clean_branches='git branch --merged | egrep -v "(^\*|master)" | xargs git branch -d'

function gc() {
    git commit -m $1
}
#
# python doc search
#
function pds() {
    chrome "https://docs.python.org/3/search.html?q=$1&check_keywords=yes&area=default"
}

#
# django doc search
#
function dds() {
    chrome "https://docs.djangoproject.com/en/3.1/search/?q=$1"
}

function gds() {
    chrome "https://www.git-scm.com/search/results?search=$1"
}


# ls -A after cd'ing
function chpwd() {
	ls -A
}



function metacib {
    /usr/bin/open -a "/Applications/Google Chrome.app" https://mrbelvedereci.herokuapp.com/builds/$1 
}

#
# Plugins
#

plugins=(
    git colored-man-pages
)

