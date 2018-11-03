if (scr_readConfig() == -1) {
	exit;
}

minStr = "";
secStr = "";

alarm[0] = room_speed;

var bg = layer_background_get_id("Background");
layer_background_blend(bg, global.chromaColor);

fonts[0] = fnt_main;
fonts[1] = fnt_pixel;
fonts[2] = fnt_thin;