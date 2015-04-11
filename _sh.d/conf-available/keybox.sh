#!/bin/sh

function keybox {
  currentDir=$(pwd)
  baseDir=$HOME/.keybox
  action=$1

  if [ "$action" = "start" ]; then
    if [ -f $baseDir/keybox.pid ]; then
      echo "keybox is already running"
      return 1
    fi
    cd $baseDir/jetty
    java -Xms1024m -Xmx1024m -jar start.jar > $baseDir/keybox.log &
    echo $! | tee $baseDir/keybox.pid
    cd $currentDir
    echo "keybox started successfully!"

  elif [ "$1" = "stop" ]; then
    if [ ! -f $baseDir/keybox.pid ]; then
      echo "keybox is not running"
      return 1
    fi
    PID=$(cat $baseDir/keybox.pid)
    kill "$PID"
    rm $baseDir/keybox.pid
    echo "keybox stopped successfully!"
    
  else
    echo "usage: keybox [start|stop]"
		return 1
  fi
}
