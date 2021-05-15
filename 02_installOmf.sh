#!/usr/bin/fish

omf install https://github.com/zephraph/zephish
omf install bobthefish
omf theme bobthefish

omf remove zephish

omf install peco
printf "\nfunction fish_user_key_bindings \n  bind \\\cr 'peco_select_history (commandline -b)' \nend\n" >> ~/.config/fish/conf.d/omf.fish
