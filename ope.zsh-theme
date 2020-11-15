#if [ $UID -eq 0 ]; then NCOLOR="green"; else NCOLOR="white"; fi

# Color shortcuts
R=$fg_no_bold[red]
G=$fg_no_bold[green]
M=$fg_no_bold[magenta]
Y=$fg_no_bold[yellow]
B=$fg_no_bold[blue]
C=$fg_no_bold[cyan]
CC=$fg_bold[cyan]
RR=$fg_bold[red]
GG=$fg_bold[green]
MM=$fg_bold[magenta]
YY=$fg_bold[yellow]
BB=$fg_bold[blue]

RESET=$reset_color

# PROMPT troceado
post_prompt() {
  echo -n  "%F{196}>%F{226}>%F{196}>%{$RESET%} "
}

git_Prompt() {
 ref=$(git symbolic-ref HEAD | cut -d'/' -f3)
 echo $ref
}

# Unicode
RELOJ_ARENA=$'\u23F3'
RELOJ=$'⌚'
BRANCH="\ue0a0"  #  necesario fuente Cascadia Code PL
RAYO=$'\u26A1' # ⚡
ADDED=$'\u2795' # ✚
UNMERGED=$'\u2700' # ✂
UNTRACKED=$'\u2708' # ✈
START=$'\u2B50' # ⭐
NAMEHAGE=$'👹' # 👹
PI=$'\u3c0' 
SEPARATOR=$'\ue0b0'

# PROMPT="
# %(?:%{$GG%}➜ :%{$RR%}➜ )"
PROMPT="%{$NAMEHAGE%} %(?:%{$GG%}➜ :%{$RR%}➜ )"
PROMPT+="%{$RESET%}%K{255}📁%{$C%}%c%{$RESET%}%K{17}%F{255}%{$SEPARATOR%}"
PROMPT+="%K{17} %D{%H:%M} %{$RELOJ%}%{$RESET%}%F{17}%{$SEPARATOR%} $(post_prompt)"
#RPROMPT='%{$B%} %D{%H:%M} %{$RELOJ%} $(git_prompt_info)$(git_prompt_status)'
# %{$RR%}›%{$YY%}›%{$RR%}›%{$RESET%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$B%}%{$BRANCH%} en %F{255}" # %{$R%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$RESET%} "
# ZSH_THEME_GIT_PROMPT_DIRTY="%{$B%}) %{$YY%}%{$RAYO%}"
# ZSH_THEME_GIT_PROMPT_DIRTY="%{$RESET%} %{$YY%}🔥"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$YY%}🔥"

# RPROMPT='$(git_prompt_status)%{$reset_color%}'
ZSH_THEME_GIT_PROMPT_CLEAN="%{$B%}✔)"
ZSH_THEME_GIT_PROMPT_ADDED="%{$C%}%{$ADDED%}"
# ZSH_THEME_GIT_PROMPT_MODIFIED="%{$Y%}✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$R%}✗"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$B%}➦"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$M%}%{$UNMERGED%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$B%}%{$UNTRACKED%}"
# ZSH_THEME_GIT_PROMPT_SHA_BEFORE=" %{$fg[blue]%}"
# ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$reset_color%}"