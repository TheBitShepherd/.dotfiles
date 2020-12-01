#
# General
#

#ZSH_THEME="brandor"
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

#
# SFDO Specific
#
alias metaci="c; cd ~/repos/metaci; source env; bin/unpack-node"
alias cumulusci="c; cd ~/repos/cumulusci"
alias metadeploy="c; cd ~/repos/metadeploy"
alias metashare="c; cd ~/repos/metashare"
alias npsp="c; cd ~/repos/npsp"
alias statusite="c; cd ~/repos/statusite"


#
# CumulusCI
#
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
alias ccupg='pip install --upgrade cumulusci'
function ccicmd() {
        cci task run command eval($1)
}

#
# git
#
alias clean_branches='git branch --merged | egrep -v "(^\*|master)" | xargs git branch -d'

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

