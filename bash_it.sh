#!/bin/bash
# Initialize Bash It

# Reload Library
alias reload='source ~/.bash_profile'

PREVIEW="less"
[ -s /usr/bin/gloobus-preview ] && PREVIEW="gloobus-preview"
[ -s /Applications/Preview.app ] && PREVIEW="/Applications/Preview.app"

case $OSTYPE in
  linux*)
    open_app ()
    {
      nohup $1 >/dev/null 2>/dev/null &
    }
    ;;
  darwin*)
    open_app ()
    {
      open -a $1
    }
    ;;
  *)
    open_app ()
    {
      $1
    }
esac

# Load all files

# Themes
THEMES="${BASH}/themes/*.bash"
for config_file in $THEMES
do
  source $config_file
done

# Library
LIB="${BASH}/lib/*.bash"
for config_file in $LIB
do
  source $config_file
done

# Tab Completion
COMPLETION="${BASH}/completion/*.bash"
for config_file in $COMPLETION
do
  source $config_file
done

unset config_file
# Plugins
PLUGINS="${BASH}/plugins/*.bash"
for config_file in $PLUGINS
do
  source $config_file
done

# Functions
FUNCTIONS="${BASH}/functions/*.bash"
for config_file in $FUNCTIONS
do
  source $config_file
done

# Custom
CUSTOM="${BASH}/custom/*.bash"
for config_file in $CUSTOM
do
  source $config_file
done

export PS1=$PROMPT

#
# Custom Help

function bash-it() {
  echo "Welcome to Bash It!"
  echo
  echo "Here is a list of commands you can use to get help screens for specific pieces of Bash it:"
  echo
  echo "  rails-help                  This will list out all the aliases you can use with rails."
  echo "  git-help                    This will list out all the aliases you can use with git."
  echo "  aliases-help                Generic list of aliases."
  
  echo
}
