function peco-select-history
  set -l query (commandline)

  if [ -n $query ]
    history | tail -r | peco --query $query | read line
  else
    history | tail -r |  peco | read line
  end

  if [ $line ]
    commandline $line
  else
    commandline -f repaint
  end
end

set -g Z_SCRIPT_PATH #path
