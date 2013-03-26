#!/usr/bin/env bash

SCM_THEME_PROMPT_DIRTY="×"
SCM_THEME_PROMPT_CLEAN="✓"
SCM_THEME_PROMPT_PREFIX=""
SCM_THEME_PROMPT_SUFFIX=""

case $TERM in
  xterm*)
  TITLEBAR="\[\033]0;\w\007\]"
  ;;
  *)
  TITLEBAR=""
  ;;
esac

prompt() {
    PS1="${green}\u${reset_color}@${green}\h ${blue}\w${cyan}$(ruby_version_prompt) ${red}$(scm_char)$(scm_prompt_info)${reset_color} \$ "
}

PROMPT_COMMAND=prompt
