/// @description Create inventory
item_pos = 0;
item_pos_index = 0;
// Create array
global.item_array = [[], [], [], [], []];
global.instance_array = [];
// Fill array with empty items
for(var i = 0; i < 5; i += 1)
{
	global.item_array[i][item_type] = item_none;
	global.item_array[i][item_sprite] = -1;
	global.item_array[i][item_amount] = 0;
}