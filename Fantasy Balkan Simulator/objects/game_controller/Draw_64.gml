/// @description Draw item system
draw_set_font(pixelated_font);
draw_set_halign(fa_center);
draw_set_valign(fa_left);
draw_set_color(c_white);
button_to_draw = spr_game_button;

x_mouse = device_mouse_x_to_gui(0); 
y_mouse = device_mouse_y_to_gui(0);

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

if (point_in_rectangle(x_mouse, y_mouse, _x-80-64, _y+620-16, _x-80+64 + 10, _y+620 + 16)) {
	button_to_draw = spr_highlighted_game_button;
    if (mouse_check_button_pressed(mb_left)) {
       button_to_draw = spr_highlighted_pressed_game_button;
	   url_open("https://www.paypal.com/paypalme/willalone");
    }
}

draw_sprite_ext(coin_item, -1, _x, _y+620, 2, 2, 0, c_white, 1);
draw_text_ext(_x + 55, _y+620-20, string(global.pay_coins), 0, 100);

draw_set_font(pixelated_font_small);
draw_set_color(c_white);

draw_sprite_ext(button_to_draw, -1, _x-80, _y+620, 0.5, 0.5, 0, c_white, 1);
draw_text_ext(_x-80, _y+620-13, "Buy Coins", 0, 100);