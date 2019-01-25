ini_open(working_directory + "config.ini");

var red = ini_read_real("chromaColor", "red", 0);
var green = ini_read_real("chromaColor", "green", 255);
var blue = ini_read_real("chromaColor", "blue", 0);

var redT = ini_read_real("textColor", "red", 0);
var greenT = ini_read_real("textColor", "green", 0);
var blueT = ini_read_real("textColor", "blue", 0);

var clockMode = ini_read_real("clockmode", "enabled", 0);
var clockMHours = ini_read_real("clockmode", "hour", 0);
var clockMMinutes = ini_read_real("clockmode", "minute", 0);

if (!clockMode) {
	global.remainingMinutes = ini_read_real("timer", "startMinutes", 10);
	global.remainingSeconds = ini_read_real("timer", "startSeconds", 0);
} else {
	global.remainingMinutes = 0;
	global.remainingSeconds = 0;
	
	if (current_hour > clockMHours || (current_hour == clockMHours && current_minute > clockMMinutes)) {
		var secondSpan = round(date_second_span(date_create_datetime(current_year, current_month, current_day + 1, clockMHours, clockMMinutes, 0), date_current_datetime()));
	} else {
		var secondSpan = round(date_second_span(date_create_datetime(current_year, current_month, current_day, clockMHours, clockMMinutes, 0), date_current_datetime()));
	}
	
	while (secondSpan > 59) {
		secondSpan -= 60;
		global.remainingMinutes++;
	}
	global.remainingSeconds = secondSpan;
}

global.resetSecondsOnTimeChange = ini_read_real("config", "resetSecondsOnTimeChange", 1);
global.autoCloseOnTimerFinish = ini_read_real("config", "autoCloseOnTimerFinish", 1);

global.selectedFont = ini_read_real("config", "selectedFont", 0);

ini_close();

global.chromaColor = make_color_rgb(red, green, blue);
global.colText = make_color_rgb(redT, greenT, blueT);