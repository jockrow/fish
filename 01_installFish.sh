#!/usr/bin/bash

sudo apt-get update
sudo apt install fish
curl -L https://get.oh-my.fish | fish
curl -L https://get.oh-my.fish > install

if ! command -v peco &> /dev/null; then
	sudo apt-get install peco
fi

if ! command -v git &> /dev/null; then
	sudo apt-get install git
fi

fish install --path=~/.local/share/omf --config=~/.config/omf
rm install
#chsh -s /usr/bin/fish
