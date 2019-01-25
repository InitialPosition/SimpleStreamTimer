/// @description Setup

// set up strings
title = "StreamTimer";
version = "v 1.1";

// read or create config
if (!file_exists(working_directory + "config.ini")) {
	scr_writeConfig();
}
scr_readConfig();

// create menu entries
instance_create_layer(room_width / 2, 200, "MenuLayer", obj_mainMenu_startTimer);
instance_create_layer(room_width / 2, 250, "MenuLayer", obj_mainMenu_editConfig);