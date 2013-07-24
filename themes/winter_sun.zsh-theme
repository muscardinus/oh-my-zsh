function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo "%{ຣ%G%}"; fi
}

PROMPT='%(!.%F{red}.%F{cyan}%D{[%I:%M]} %F{green}%n@)%m %F{blue}%~ $(git_prompt_info)%F{cyan}$(prompt_char)%f '

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "
#ZSH_THEME_GIT_PROMPT_CLEAN=" %F{blue}%{✓%G%}%F{blue}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{red}%{✗%G%}%F{blue}"
