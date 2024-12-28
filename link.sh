#!/bin/bash

ln -sf "$HOME/.rix/bin/rixmsg" /usr/local/bin/rixmsg

if [ ! -L "/usr/local/bin/rixmsg" ]; then
    echo "Error: symbolic link not created in /usr/local/bin/"
    exit 1
fi

ln -sf "$HOME/.rix/bin/rixhub" /usr/local/bin/rixhub

if [ ! -L "/usr/local/bin/rixhub" ]; then
    echo "Error: symbolic link not created in /usr/local/bin/"
    exit 1
fi
