/// @description Draw item system
draw_set_font(pixelated_font);
draw_set_halign(fa_center);
draw_set_valign(fa_left);
draw_set_color(c_white);

_x = 1280;
_y = 100;
if (room != StartMenu){
	for (var i=0; i<array_length(global.inventory); i++){
		item = global.inventory[i];
		_y_ad = _y + i*35;
		draw_sprite_ext(item[2], -1, _x, _y_ad, 2, 2, 0, c_white, 1);
		draw_text_ext(_x + 55, _y_ad-20, string(item[3]) + " / " + string(item[1]), 0, 100);
	}
}




