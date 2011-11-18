#!/bin/bash

function tab() {
  osascript 2>/dev/null <<EOF
    tell application "System Events"
      tell process "Terminal" to keystroke "t" using command down
    end
    tell application "Terminal"
      activate
      do script with command "cd \"$PWD\"; $*" in window 1
    end tell
EOF
}

# Download a file and open it in Preview

function prevcurl() {
  if [ ! $(uname) = "Darwin" ]
  then
    echo "This function only works with Mac OS X"
    return 1
  fi
  curl "$*" | open -fa "Preview"
}
