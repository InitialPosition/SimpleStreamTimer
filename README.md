# SimpleStreamTimer
<p align="center">
  <img src="https://imageog.flaticon.com/icons/png/512/68/68132.png?size=1200x630f&pad=10,10,10,10&ext=png&bg=FFFFFFFF" width=150 height="auto" /> <br>
  A small countdown timer with color customization 
</p>

This is a very simple, untested, possibly bugged version of a small timer I wrote for my stream intro.

## Features:
- Fully customizable background and font color, different fonts
- On the fly time editing
- Other small options

## Usage
1. Download and run the program.
1. The first time you run the program, a config file is generated. You can edit this file to change the timer's behavior.
1. Start the program again after you edited the config.

## Commands
You can use the + and - keys on your numpad to edit the remaining time during the countdown.

## Config Parameters
Parameter|Meaning|Values
---------|-------|------
selectedFont|The font the timer will use|Integer from 0 to 2
autoCloseOnTimerFinish|If the timer should exit on completion|0: No, 1: Yes
resetSecondsOnTimeChange|If changing the remaining minutes should reset the seconds to zero|0: No, 1: Yes
startSeconds|The seconds the timer should start on|Positive integer
startMinutes|The minutes the timer should start on|Positive integer
textColor[blue, green, red]|The color code the countdown text should use|Integer from 0 to 255
chromaColor[blue, green, red]|The color code the background should use|Integer from 0 to 255