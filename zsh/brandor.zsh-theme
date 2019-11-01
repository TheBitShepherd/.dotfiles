#
# brandor.zsh-theme
#

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

#
# color vars
#
eval my_gray='$FG[237]'
eval my_orange='$FG[214]'


# Load version control info
autoload -Uz vcs_info
precmd() { vcs_info }
setopt prompt_subst


git_prompt() {
 ref=$(git symbolic-ref HEAD | cut -d'/' -f3-)
 echo $ref
}


#
# BrandoR's prompt
#
PROMPT='
$FG[001]┌──[$FG[032]%~$FG[001]]-[$FG[050]$(git_prompt)$FG[001]]
$FG[001]└──> $FG[002] ༼ つ ◕_◕ ༽つ\$$reset_color '

# right prompt
if type "virtualenv_prompt_info" > /dev/null
then
	RPROMPT='$(virtualenv_prompt_info)$my_gray%n@%m%{$reset_color%}%'
else
	RPROMPT='$my_gray%n@%m%{$reset_color%}%'
fi


#
# Git settings
#
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075]($FG[078]"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075])%{$reset_color%}"


