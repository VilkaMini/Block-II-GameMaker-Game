/// @description Draw item system
draw_set_font(pixelated_font);
draw_set_halign(fa_center);
draw_set_valign(fa_left);
draw_set_color(c_white);

inst = instance_position(mouse_x, mouse_y, button_pay);

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

if (inst){
	with inst{
		sprite_index = spr_highlighted_game_button;
	}
	if (keyboard_check_pressed(vk_space)){
		with inst{
			sprite_index = spr_highlighted_pressed_game_button;
		}
	}
}

draw_sprite_ext(coin_item, -1, _x, _y+620, 2, 2, 0, c_white, 1);
draw_text_ext(_x + 55, _y+620-20, string(global.pay_coins), 0, 100);

draw_set_font(pixelated_font_small);
draw_set_color(c_white);

draw_sprite_ext(spr_game_button, -1, _x-80, _y+620, 0.5, 0.5, 0, c_white, 1);
draw_text_ext(_x-80, _y+620-13, "Buy Coins", 0, 100);