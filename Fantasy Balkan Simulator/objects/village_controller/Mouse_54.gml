/// @description Drop items
if (room == Village2){
	// If there is an item in the slot
	if !(global.item_array[item_pos][item_type] == item_none){
	    var _type = global.item_array[item_pos][item_type];
	    var _sprite = global.item_array[item_pos][item_sprite];
		var _old_inst_id = global.item_array[item_pos][item_instId];
	    global.item_array[item_pos][item_amount] += -1;
		// Create and instance of an item int the world
	    var _inst = instance_create_layer(mouse_x, mouse_y, "Instances", obj_item);
	    // Change items sprite and type
		with(_inst){
	        item = _type;
	        sprite_index = _sprite;
	        }
	   // Check if that was the last item and change type if true
	   if (global.item_array[item_pos][item_amount] < 1){
	        global.item_array[item_pos][item_type] = item_none;
	        }
		show_debug_message("Before")
		show_debug_message(global.instance_array);
		// Delete item from instance list since it does not need to be deleted next time
		if (len == 0){
			array_delete(global.instance_array, 0, 1);
		}
		for (var i=0; i < len; i++){
			if (_old_inst_id == global.instance_array[i]){
				for (var k=i; k < len-1; i++){
					global.instance_array[i] = global.instance_array[i+1];
				}
			}
		}
		show_debug_message("After")
		show_debug_message(global.instance_array);
	}
}

