/// @description Draw Main Menu

draw_set_halign(fa_center);
draw_set_font(fnt_main);

draw_text_color(room_width / 2, 50, title, c_white, c_white, c_white, c_white, 1);

draw_set_halign(fa_right);
draw_set_font(fnt_main_small);
draw_text_color(room_width - 30, room_height - 30, version, c_white, c_white, c_white, c_white, 1);