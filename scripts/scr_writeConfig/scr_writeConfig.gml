if (!file_exists(working_directory + "config.ini")) {
	ini_open(working_directory + "config.ini");
	
	ini_write_real("chromaColor", "red", 0);
	ini_write_real("chromaColor", "green", 255);
	ini_write_real("chromaColor", "blue", 0);
	
	ini_write_real("textColor", "red", 0);
	ini_write_real("textColor", "green", 0);
	ini_write_real("textColor", "blue", 0);
	
	ini_write_real("timer", "startMinutes", 10);
	ini_write_real("timer", "startSeconds", 0);
	
	ini_write_real("config", "resetSecondsOnTimeChange", 1);
	ini_write_real("config", "autoCloseOnTimerFinish", 1);
	
	ini_write_real("config", "selectedFont", 0);
	
	ini_close();
}