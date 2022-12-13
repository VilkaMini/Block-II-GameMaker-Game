/// @description Create inventory

randomize();
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

item_pos = 0;
item_pos_index = 0;
global.item_array = array_create(5, array_create(1, []));
for(var i = 0; i < 5; i += 1)
{
	global.item_array[i][item_type] = item_none;
	global.item_array[i][item_sprite] = -1;
	global.item_array[i][item_amount] = 0;
}
