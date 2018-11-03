if (!file_exists(working_directory + "config.ini")) {
	scr_writeConfig();
	room_goto(rm_configCreated);
	return -1;
	
	exit;
}

ini_open(working_directory + "config.ini");

var red = ini_read_real("chromaColor", "red", 0);
var green = ini_read_real("chromaColor", "green", 255);
var blue = ini_read_real("chromaColor", "blue", 0);

var redT = ini_read_real("textColor", "red", 0);
var greenT = ini_read_real("textColor", "green", 0);
var blueT = ini_read_real("textColor", "blue", 0);

global.remainingMinutes = ini_read_real("timer", "startMinutes", 10);
global.remainingSeconds = ini_read_real("timer", "startSeconds", 0);

global.resetSecondsOnTimeChange = ini_read_real("config", "resetSecondsOnTimeChange", 1);
global.autoCloseOnTimerFinish = ini_read_real("config", "autoCloseOnTimerFinish", 1);

global.selectedFont = ini_read_real("config", "selectedFont", 0);

ini_close();

global.chromaColor = make_color_rgb(red, green, blue);
global.colText = make_color_rgb(redT, greenT, blueT);

return 0;