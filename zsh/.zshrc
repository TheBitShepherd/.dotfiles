
#
# General
#

ZSH_THEME="powerlevel10k/powerlevel10k"
export ZSH=$HOME/oh-my-zsh
#source $ZSH/oh-my-zsh.sh

export CDPATH=$HOME:$HOME/repos

# ls -A after cd'ing
function chpwd() {
	ls -A
}


#
# History
#

export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

#
# pyenv
#
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


#
# Aliases
#

# 
# use neovim
alias vim='nvim'
# edit general settings
alias vimrc="vim ~/.config/nvim/general/settings.vim"
# edit init.vim
alias vimi="vim ~/repos/dotfiles/nvim/init.vim"
alias vimplug="vim ~/repos/dotfiles/nvim/vim-plug/plugins.vim"
# reload .zshrc file
alias zshconfig="source ~/.zshrc"
# edit zsh theme
alias zshtheme="vim ~/repos/dotfiles/zsh/brandor.zsh-theme"
# edit .zshrc
alias zshrc="vim ~/repos/dotfiles/zsh/.zshrc"
# edit zsh custom theme
alias zshtheme="vim ~/repos/dotfiles/zsh/brandor.zsh-theme"
alias c="clear"
alias ll="ls -l"
alias lal="ls -al"
alias chrome="open -a \"Google Chrome\""
alias wm="vim ~/.working_memory.txt"

#
# SFDO Specific
#
alias cu="c; cd ~/repos/cumulusci"
alias cumulusci="c; cd ~/repos/cumulusci"
alias metaci="c; cd ~/repos/metaci"
alias mci="c; cd ~/repos/metaci"
alias metadeploy="c; cd ~/repos/metadeploy"
alias mdp="c; cd ~/repos/metadeploy"
alias metecho="c; cd ~/repos/metashare"
alias mph="c; cd ~/repos/MetaPush"
alias npsp="c; cd ~/repos/npsp"
alias statusite="c; cd ~/repos/statusite"
alias tube="c; cd ~/repos/tubular; source .envrc"


#
# CumulusCI
#
alias ccihome='cd ~/.cumulusci'
alias ccilog='vim ~/.cumulusci/logs/cci.log'
alias ccfi='cci flow info'
alias ccfl='cci flow list'
alias ccfr='cci flow run'
alias ccob='cci org browser'
alias ccoc='cci org connect'
alias ccod='cci org default'
alias ccoi='cci org info'
alias ccol='cci org list'
alias ccor='cci org remove'
alias ccos='cci org scratch'
alias ccsd='cci org scratch_delete'
alias ccrm='cci org scratch_delete'
alias ccpc='cci project cd'
alias ccpd='cci project dependencies'
alias ccpi='cci project info'
alias ccpl='cci project list'
alias ccsc='cci service connect'
alias ccsl='cci service list'
alias ccss='cci service show'
alias cctd='cci task doc'
alias ccti='cci task info'
alias cctl='cci task list'
alias cctr='cci task run'

function ccicmd() {
        cci task run command eval($1)
}

function ccidevnew() {
    cci org scratch_delete $1
    cci org default $1
    cci org browser 
}

# grep for task
function gft() {
    cci task list | grep $1
}

# grep for flow
function gff() {
    cci flow list | grep $1
}

# grep in universal cumulusci.yml file
# first param is the string you want to search in the universal cumulusci.yml file
# second param is lines of context _after_ a match is detected.
function ccyml() {
    grep $1 ~/repos/cumulusci/cumulusci/cumulusci.yml -A $2 --line-num    
}

function metacib {
    /usr/bin/open -a "/Applications/Google Chrome.app" https://mrbelvedereci.herokuapp.com/builds/$1 
}

# Search python docs (python doc search)
function pds() {
    /usr/bin/open -a "/Applications/Google Chrome.app" https://docs.python.org/3/search.html?q=$1
}

# JavaScript dependency updates made easy
alias yarn-upgrade="yarn upgrade-interactive --latest"
alias yarn-reset="rm -rf node_modules/ yarn.lock; yarn"

function ccidevnew() {
    cci org scratch_delete $1
    cci org default $1
    cci org browser 
}

# weekly dependency updates
function start_updates() {
    git checkout main
    git pull
    git checkout -b 'feature/week-'"$1"'-updates' 
    make update-deps
}

#
# Python
#

function pip_uninstall {
    pip freeze | xargs pip uninstall -y
}


#
# Django
#
alias=dshell='./manage.py shell_plus --ipython'

#
# git stuff
#
alias g='git'
alias gm='git switch main'
alias gsl='git stash list'
alias gsp='git stash pop'
alias prune_branches='git branch --merged | egrep -v "(^\*|main)" | xargs git branch -d'
alias stash='git stash --include-untracked'

# git stash drop @index
function gsd {
    git stash drop @{$1}
}

# grep history
function ghist {
    history | grep $1 | tail -n 50
}

# add all changes, commit, and push dotfiles
function save_dots() {
    cd dotfiles; git add . ; g commit -m 'savepoint' ; git push ; cd - ;
}

plugins=(
    colored-man-pages
    heroku
    pip
    vundle
)
