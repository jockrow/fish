function _peco_change_directory
  if [ (count $argv) ]
    peco --layout=bottom-up --query "$argv "|perl -pe 's/([ ()])/\\\\$1/g'|read foo
  else
    peco --layout=bottom-up |perl -pe 's/([ ()])/\\\\$1/g'|read foo
  end
  if [ $foo ]
     commandline "cd $foo"
  else
    commandline ''
  end
end

function peco_change_directory
  begin 
    find . -type d | grep -v "\.git\|\.vnc\|.cache"
  end | sed -e 's/\/$//' | awk '!a[$0]++' | _peco_change_directory $argv
end
