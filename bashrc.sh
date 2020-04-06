#bashrc edits alias
alias ebrc='vim ~/.bashrc'
alias sbrc='source ~/.bashrc'

#log operations
function openlogs(){
  code ~/logs
}
function clearlogs(){
  rm -rf ~/logs
}

#runs any program from terminal and logs in ~/logs/run.log
complete -F _command run
function run(){
  mkdir -p ~/logs && touch ~/logs/run.log && echo "$(date +"[%T][%d-%m-%y]")--------------Starting $1------------" >>  ~/logs/run.log && nohup "$1" >> ~/logs/run.log 2>&1 &
}

#opens any file from terminal
function open(){
  mkdir -p ~/logs && touch ~/logs/open.log && echo "$(date +"[%T][%d-%m-%y]")-------------Opening file=$1------------" >>  ~/logs/open.log && nohup xdg-open "$1" >> ~/logs/open.log 2>&1 &
}

