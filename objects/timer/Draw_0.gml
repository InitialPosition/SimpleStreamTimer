draw_set_font(fonts[global.selectedFont]);
draw_set_halign(fa_center);

minStr = global.remainingMinutes < 10 ? "0" + string(global.remainingMinutes) : string(global.remainingMinutes);
secStr = global.remainingSeconds < 10 ? "0" + string(global.remainingSeconds) : string(global.remainingSeconds);

draw_text_color(room_width / 2, room_height / 2, minStr + ":" + secStr, global.colText, global.colText, global.colText, global.colText, 1);