#!/bin/bash

# Customized for my username... can be abstracted to take any username
# Really only for UCLA students with a seasnet account
# This is just because I'm lazy

# alias lnx='cd ~/path_to_file; ./ssh_linux.sh [server_number]'

# Get argument and strip it of 0s
server=$(echo $1 | sed 's/^0*//')

# Check that only has 1 numerical argument
if [ $# -eq 1 ]; then
	# Needs to be 1 to 9
  if [ $1 -gt 0 ] && [ $1 -lt 10 ]; then
    ssh wijaya@lnxsrv0$server.seas.ucla.edu
  else
    echo "Error: Input a number from 1-9. You inputted $1."
  fi
# By default initiates ssh to lnx server 7
elif [ $# -eq 0 ]; then
  ssh wijaya@lnxsrv07.seas.ucla.edu
# Can only take one argument
else
  echo "Error: Too many arguments! Only one input is allowed, a number from 1-9."
fi
