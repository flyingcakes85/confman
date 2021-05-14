#!/usr/bin/env bash

if [[ ! -v 1 ]]; then
    echo >&2 "Please provide some arguments."
    exit
fi

if [[ $1 == "-s" ]]; then

    if [[ ! -v 2 ]]
    then
        echo >&2 "Please provide a theme name."
        exit
    fi

    if [[ ! -d "/home/$USER/.config/confman/$2" ]]
    then
        echo >&2 "Specified theme does not exist."
        exit
    fi

    cp -r --backup=t $(ls -1 -d "/home/$USER/.config/confman/$2"/{*,.*} | grep -v ".git") "/home/$USER/"
fi
