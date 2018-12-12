if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi

local mytime="%{$fg_bold[cyan]%}[%*]"
local user_machine="%{$fg_bold[white]%}%n%{$fg[magenta]%}@%{$fg_bold[white]%}%m"
local mypwd="%{$fg_bold[green]%}%~"
local ret_status="%(?.%{$fg_bold[green]%}.%{$fg_bold[red]%})%% %{$reset_color%}"

PROMPT='$mytime $user_machine $mypwd $(git_prompt_info)
$ret_status '

# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="$fg_bold[yellow]("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_CLEAN="✔"
ZSH_THEME_GIT_PROMPT_DIRTY="✗"

# elaborate exitcode on the right when >0
return_code="%(?..%{$fg[red]%}%?%{$reset_color%})"

PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'
