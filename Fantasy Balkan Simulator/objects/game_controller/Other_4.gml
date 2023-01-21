/// @description Delete instances already picked up

if (room == Villages){
	for (var p=0; p<array_length(global.instances_to_delete); p++){
		instance_destroy(global.instances_to_delete[p]);
	}
}

