alarm[0] = room_speed;

global.remainingSeconds--;

if (global.remainingSeconds < 0) {
	global.remainingMinutes--;
	global.remainingSeconds = 59;
}

if (global.remainingMinutes < 0) {
	if (global.autoCloseOnTimerFinish) {
		game_end();
	} else {
		global.remainingMinutes = 0;
		global.remainingSeconds = 0;
		alarm[0] = -1;
	}
}