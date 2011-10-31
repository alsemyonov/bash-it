#!/bin/bash

#added TITLEBAR for updating the tab and window titles with the pwd
case $TERM in
	xterm*)
	TITLEBAR='\[\033]0;\w\007\]'
	;;
	*)
	TITLEBAR=""
	;;
esac
PROMPT="${green}\u${normal}@${green}\h${normal}:${blue}\w${normal}${red}\$(scm_char)\$(scm_prompt_info)${reset_color}\$ "

# scm themeing
SCM_THEME_PROMPT_DIRTY="×"
SCM_THEME_PROMPT_CLEAN="✓"
SCM_THEME_PROMPT_PREFIX=""
SCM_THEME_PROMPT_SUFFIX=""
SCM_NONE_CHAR=''
