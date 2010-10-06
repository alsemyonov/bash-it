#!/bin/bash

# Desktop Programs
alias fireworks="open_app '/Applications/Adobe Fireworks CS3/Adobe Fireworks CS3.app'"
alias photoshop="open_app '/Applications/Adobe Photoshop CS3/Adobe Photoshop.app'"
alias preview="open_app '$PREVIEW'"
alias xcode="open_app '/Developer/Applications/Xcode.app'"
alias filemerge="open_app '/Developer/Applications/Utilities/FileMerge.app'"
alias safari="open_app safari"
alias firefox="open_app firefox"
if [ -s /usr/bin/firefox ] ; then
  unalias firefox
fi
alias dashcode="open_app dashcode"
