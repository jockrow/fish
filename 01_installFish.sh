#!/usr/bin/bash

sudo apt-get update
sudo apt install fish
curl -L https://get.oh-my.fish | fish
curl -L https://get.oh-my.fish > install

if ! command -v bat &> /dev/null; then
	sudo apt-get install bat
fi

if ! command -v ranger &> /dev/null; then
	sudo apt-get install ranger
fi

if ! command -v exa &> /dev/null; then
	sudo apt-get install exa
fi

if ! command -v peco &> /dev/null; then
	sudo apt-get install peco
fi

fish install --path=~/.local/share/omf --config=~/.config/omf
rm install
#chsh -s /usr/bin/fish
