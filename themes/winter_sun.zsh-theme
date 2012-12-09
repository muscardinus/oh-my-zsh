function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo ຣ; fi
}

PROMPT='%(!.%{$fg[red]%}.%{$fg[cyan]%}%D{[%I:%M]} %{$fg[green]%}%n@)%m %{$fg[blue]%}%~ $(git_prompt_info)%_%{$fg[blue]%}%{$fg[cyan]%}$(prompt_char)%_%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "
#ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[blue]%}✓%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$fg[blue]%}"
