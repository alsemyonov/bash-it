#!/bin/bash

function ips {
  ifconfig | grep "inet " | awk '{ print $2 }'
}

function myip {
  res=$(curl -s checkip.dyndns.org | grep -Eo '[0-9\.]+')
  echo "Your public IP is: ${LIGHT_GREEN} $res ${NORMAL}"
}


# View man documentation in Preview
pman () {
   man -t "${1}" | open -f -a /Applications/Preview.app/
}


pcurl() {
  curl "${1}" | open -f -a /Applications/Preview.app/
}

pri() {
  ri -T "${1}" | open -f -a /Applications/Preview.app/
}


# disk usage per directory
usage ()
{
  if [ $1 ]
  then
    du -hd $1
  else
    du -hd 1
  fi
}
