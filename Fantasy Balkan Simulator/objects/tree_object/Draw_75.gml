/// @description Tree cut down
draw_set_font(pixelated_font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);

playerNearby = collision_rectangle(x-42, y-42, x+42, y+42, player_object, true, true);
if (playerNearby){
	if (keyboard_check_pressed(vk_space) && axe_bool && !global.tree_done){
		switch global.tree_active{
			case true: {
				global.tree_active = false;
				global.tree_done = true;
				for (var o=0; o<array_length(global.inventory); o++){
					item = global.inventory[o];
					if (item[item_name] == "Star"){
						global.inventory[o][item_owned] += 1;
					}
				}
				break;
			}
			case false: {
				global.tree_active = true;
				break;
			}
		}
	}
}

_x = 683;
_y = 550;

for (var i=0; i<array_length(global.inventory); i++){
	item = global.inventory[i];
	if (item[item_name] == "Axe" && item[item_max] == item[item_owned]){
		axe_bool = true;
	}
}

if (playerNearby && axe_bool && global.tree_active && !global.tree_done){
	draw_sprite(textbox, -1, _x, _y-45);
	audio_play_sound(star, 1, 0);
	draw_text_ext(_x, _y-45, "there's something inside the tree... It's a Star!", 25, 900);
}