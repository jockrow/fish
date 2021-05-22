
function fish_user_key_bindings 
  bind \cr 'peco_select_history (commandline -b)' 
  bind \cf peco_change_directory
end

alias bat='batcat'
alias tree='exa --header --git --icons --tree'
alias ll='exa --long --header --git --icons'
alias la='exa --all --long --header --git --icons'
alias ranger='ranger --choosedir="$HOME/.rangerdir"; cd (cat $HOME/.rangerdir)'
