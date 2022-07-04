# /bin/bash

Help()
{
   echo "WhatDo: Change file extension from one extention to another"
   echo "Warning: Don't use dots when specifiying extension!!!"
   echo "Usage: chfilext <from-extension-without-dot> <to-extension-without-dot>"
   echo "Example: chfilext txt md"
}

while getopts ":h" option; do
   case $option in
      h) # display Help
         Help
         exit;;
   esac
done

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
fi

if [ -z "$1" ]
  then
    echo "No Source Extension Provided"
fi

if [ -z "$2" ]
  then
    echo "No Target Extension Provided"
fi

for f in *.$1;
 do      mv -- "$f" "${f%.$1}.$2";
done
