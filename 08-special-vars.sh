#!/bin/bash

echo "All arguments/variables passed to the script:: $@"
echo "All arguments/variables passed to the script:: $*"
echo "script name:: $0"
echo "Home Directory:: $HOME"
echo "Present/Current directory:: $PWD"
echo "Current running user:: $USER"
echo "PID of this script:: $$"
sleep 10 &
echo "PID of the last commad running in background:: $!"
echo "Last command success/failure::$?" #0 means success, other values failure