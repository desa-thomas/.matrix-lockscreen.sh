## Requirements
- [i3lock-color](https://github.com/Raymo111/i3lock-color) or another lock screen
- [cmatrix](https://github.com/abishekvashok/cmatrix)

## Setup and Usage
1. Clone the repo as `.matrix-lockscreen` to your home directory (or edit the `openvt` command appropriately)
2. You need to give your user permission to run `chvt` and `openvt` with no password, or it will require a password to run the script.
3. Make `lockmyscreen.sh` and `matrix-lockscreen.sh` executable
4. Optional: Use [xss-lock](https://github.com/wavexx/xss-lock) to run `.matrix-lockscreen/lockmyscreen.sh` when your computer suspends. Include: `xss-lock \path\to\script\lockmyscreen.sh &` to your window manager's run commands file. 
5. Lock your screen with `./.matrix-lockscreen/lockmyscreen.sh` (or when you computer suspends)
6. Exit the falling code animation with `ctrl C`
7. Enter your password and log back in