/// @description Pick up item

playerNearby = collision_rectangle(x-5, y-5, x+5, y+5, player_object, true, true);
if (playerNearby){
	for (var i=0; i<array_length(global.inventory); i++){
		item = global.inventory[i];
		if (item[item_name] == item_id){
			global.inventory[i][item_owned] += 1;
			array_push(global.instances_to_delete, id);
			instance_destroy(id);
		}
	}
}





