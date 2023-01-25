/// @description Pick up item

playerNearby = collision_rectangle(x-5, y-5, x+5, y+5, player_object, true, true);
if (playerNearby){
	for (var i=0; i<array_length(global.inventory); i++){
		item = global.inventory[i];
		if (item[item_name] == "Metal Detector" && item[item_max] == item[item_owned]){
			for (var k=0; k<array_length(global.inventory); k++){
				item = global.inventory[k];
				if (item[0] == "Scrap Iron"){
					audio_play_sound(Pick_up_item, 1, 0);
					global.inventory[k][item_owned] += 1;
					array_push(global.instances_to_delete, id);
					instance_destroy(id);
				}
			}
		}
		else if (item[item_name] == item_id && item_id != "Scrap Iron"){
			audio_play_sound(Pick_up_item, 1, 0, 2);
			global.inventory[i][item_owned] += 1;
			array_push(global.instances_to_delete, id);
			instance_destroy(id);
		}
	}
}





