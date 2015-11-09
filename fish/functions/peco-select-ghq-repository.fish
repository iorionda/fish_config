function peco-select-ghq-repository
  set -l query (commandline)

  if [ -n $query ]
    ghq list -p | peco --query $query | read line
  else
    ghq list -p | tail -r |  peco | read line
  end

  if [ $line ]
    cd $line
  else
    commandline -f repaint
  end
end
