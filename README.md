# anti-donuts-game

## Scenario:
Forget to lock computer.
Go AFK.
Purchase dounts next day.

## But there it is:
Script that protects you from buying donuts by set up a trap.

## How:
Instead of locking screen you have to run trap script (e.g. via shortcut).
For disarm the trap use untrap script (recommended via shortcut). 

It simply track mouse position. In situation when mouse has been used by non authorized coworker, screen immediately locks, and camera captures photo. 

**Remember that trap won't set up automatically while you leave your PC**


## Requirements:
Common:
- xdotool (mouse posiotion)
- streamer (photo capture)

**Tested only on Linux Mint 17 & 18**

Scripts uses build-in Mint commands. Replece them for your distribution. Commands to change:
- cinnamon-screensaver-command (locks screen)
- notify-send (notifications)

