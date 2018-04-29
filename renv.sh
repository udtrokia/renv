#!/bin/bash

OLD_PS1=$PS1
OLD_PATH=$PATH

if [ $1 ]
then
    echo Change the env to $1
    echo 'PS1="\033[36m'$1'\033[0m: "' > ~/.renv
    echo PATH=`which $1` >> ~/.renv
    source ~/.renv
    echo 'alias exit=PATH='$OLD_PATH'\nPS1='$OLD_PS1 >> ~/.renv
    echo $OLD_PS1 >> ~/.env
    source ~/.renv
else
    echo "Usage: renv COMMAND\nExit:  exit"
fi
