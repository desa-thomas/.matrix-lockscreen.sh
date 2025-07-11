#!/bin/bash
# matrix-lockscreen.sh
#to be ran by lockmyscreen.sh in TTY8

clear #clear getty if it was there
trap "sudo chvt $1; exit" EXIT
cmatrix