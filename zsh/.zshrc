#
# General
#

#ZSH_THEME="brandor"
ZSH_THEME="brandor"
export ZSH=$HOME/oh-my-zsh
source $ZSH/oh-my-zsh.sh



#
# History
#

export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE



#
# Aliases
#

# reload .zshrc file
alias zshconfig="source ~/.zshrc"
# edit zsh theme
alias zshtheme="vim ~/repos/dotfiles/zsh/brandor.zsh-theme"
# edit .zshrc
alias vimrc="vim ~/repos/dotfiles/vim/.vimrc"
# edit .vimrc
alias zshrc="vim ~/repos/dotfiles/zsh/.zshrc"
# edit zsh custom theme
alias zshtheme="vim ~/repos/dotfiles/zsh/brandor.zsh-theme"
alias c="clear"
alias ll="ls -l"
alias lal="ls -al"
alias chrome="open -a \"Google Chrome\""
alias notes="vim ~/.notes"

#
# SFDO Specific
#
alias metaci="c; cd ~/repos/metaci"
alias metacic="c; cd ~/repos/metaci; code ."
alias cumulusci="c; cd ~/repos/cumulusci"
alias ccic="c; cd ~/repos/cumulusci; code ."
alias metadeploy="c; cd ~/repos/metadeploy"
alias metadeployc="c; cd ~/repos/metadeploy; code ."
alias edb="c; cd ~/repos/errors_db"
alias edbc="c; cd ~/repos/errors_db; code ."
alias metashare="c; cd ~/repos/metashare"
alias metasharec="c; cd ~/repos/metashare; code ."
alias npsp="c; cd ~/repos/npsp"
alias npspc="c; cd ~/repos/npsp; code ."
alias statusite="c; cd ~/repos/statusite"
alias statusitec="c; cd ~/repos/statusite; code ."


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

