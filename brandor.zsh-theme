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


git_branch_name() {
if [ -d .git ]; then
    ref=$(git symbolic-ref HEAD | cut -d'/' -f3-);
    echo $ref;
fi;
}

git_prompt() {
    if [ -z $(git_branch_name) ]
    then
        echo '-['$FG[050]$(git_branch_name)$FG[001]']'
    fi
}


#
# BrandoR's prompt
#
PROMPT='
$FG[001]┌──[$FG[032]%~$FG[001]]-[$FG[050]$(git_branch_name)$FG[001]]
$FG[001]└──> $FG[002] ༼ つ ◕_◕ ༽つ\$$reset_color '


#
# Git settings
#
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075]($FG[078]"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075])%{$reset_color%}"


