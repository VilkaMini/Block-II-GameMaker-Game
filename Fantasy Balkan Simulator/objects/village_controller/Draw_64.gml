/// @description Draw inventory hotbar and items
draw_set_font(little_item_counter);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

// Define position
var _item_x = item_pos * 22;
var _xx = 683-128;
var _yy = 720;

// If the room is not start menu
if (room != StartMenu){
	// Draw inventory box
	draw_sprite(inventory_greybox, -1, 683, 720);
	// Draw each item
	item_pos_index += 0.2;
	// Go through inventory slots
	for(var i = 0; i < 5; i += 1){
		// If item slot is not empty draw item
	    if !(global.item_array[i, item_type] == item_none){
			// Draw sprite
	        draw_sprite_ext(global.item_array[i, item_sprite], 0, _xx, _yy, 4, 4, 0, c_white, 1);
	        draw_text(_xx + 25, _yy + 28,  + string(global.item_array[i, item_amount]));
	        }
	    _xx += 64;
	}
}