#!/usr/bin/bash
cat fish_settings/omf.fish >> ~/.config/fish/conf.d/omf.fish
cp fish_settings/peco_change_directory.fish ~/.config/fish/functions/
echo "aliases at omf.fish Added Succesfully"
