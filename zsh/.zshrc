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
alias zshconfig="~/.zshrc"
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


# ls -A after cd'ing
function chpwd() {
	ls -A
}

#
# Plugins
#	

plugins=(git)

