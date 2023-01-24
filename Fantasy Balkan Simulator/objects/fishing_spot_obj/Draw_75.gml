/// @description Tree cut down
draw_set_font(pixelated_font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);

playerNearby = collision_rectangle(x-30, y-30, x+30, y+30, character_placeholder, true, true);
if (playerNearby){
	if (keyboard_check_pressed(vk_space) && fish_bool && !global.fish_done){
		switch global.fish_active{
			case true: {
				path_speed = 0;	
				global.fish_active = false;
				global.fish_done = true;
				for (var o=0; o<array_length(global.inventory); o++){
					item = global.inventory[o];
					if (item[item_name] == "Star"){
						global.inventory[o][item_owned] += 1;
					}
				}
				break;
			}
			case false: {
				global.fish_active = true;
				break;
			}
		}
	}
}

_x = 683;
_y = 550;

for (var i=0; i<array_length(global.inventory); i++){
	item = global.inventory[i];
	if (item[item_name] == "Fishing Rod" && item[item_max] == item[item_owned]){
		fish_bool = true;
	}
}

if (playerNearby && fish_bool && global.fish_active && !global.fish_done){
	draw_sprite(textbox, -1, _x, _y-45);
	draw_text_ext(_x, _y-45, "something caught onto the bait! It's really heavy! It's a Star!", 25, 900);
}