autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git*' formats "(%{$fg[white]%}%b%{$reset_color%})"

precmd () {
	vcs_info
}

setopt prompt_subst

PROMPT='%{$fg[magenta]%}%m:%~ %{$reset_color%}'
RPROMPT='${vcs_info_msg_0_}'
