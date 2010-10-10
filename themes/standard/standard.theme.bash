# set variable identifying the chroot you work in (used in the prompt below)
debian_chroot=""
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

PROMPT='${debian_chroot:+($debian_chroot)}\[${green}\]\u\[${normal}\]@\[${green}\]\h\[${normal}\]:\[${blue}\]\w\[${normal}\]\[${red}\]$(prompt_char)$(git_prompt_info)\[${normal}\]\$ '

# git themeing
GIT_THEME_PROMPT_DIRTY="×"
GIT_THEME_PROMPT_CLEAN="✓"
GIT_THEME_PROMPT_PREFIX=""
GIT_THEME_PROMPT_SUFFIX=""

#added TITLEBAR for updating the tab and window titles with the pwd
case $TERM in
	xterm*)
	TITLEBAR='\[\033]0;\w\007\]'
	;;
	*)
	TITLEBAR=""
	;;
esac
