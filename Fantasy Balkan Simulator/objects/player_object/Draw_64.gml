/// @description Draw exit prompt
draw_set_font(pixelated_font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);


if (exitNearby){
	draw_sprite_ext(textbox, -1, 683, 600, 0.5, 0.5, 0, c_white , 1);
	draw_text_ext(683, 600, "Press Space to exit the village", 5, 900);
}