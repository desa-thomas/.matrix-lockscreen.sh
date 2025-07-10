#!/bin/bash
#Script for when my screen idles. What it should do:
# 	- Lock my screen with i3lock-color (just i3lock command)
# 	- Change my VT (virtual termianl) to tty2
# 	- Run `cmatrix` on tty2
# 	- Listen for keyboard interupt `ctrl C`
# 	- On interupt switch back to tty1 and log in with i3lock 


LOCK_TTY=1
MATRIX_TTY=8

sudo chvt $LOCK_TTY

#Configure i3lock-color how you would like
i3lock -c 000000 --insidever-color=000000 --lockfailed-text="" --insidewrong-color=000000 --show-failed-attempts
sleep 0.2

sudo chvt $MATRIX_TTY

#run matrix falling code in separate VT
sudo openvt -f -c $MATRIX_TTY -- sudo -u $USER bash /home/$USER/.matrix-lockscreen/matrix-lockscreen.sh $LOCK_TTY

