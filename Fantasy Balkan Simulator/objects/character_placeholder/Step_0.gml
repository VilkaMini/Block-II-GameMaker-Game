/// @description Map Movement 

// If the path is stopped, then the check for movement can be repeated
if(path_position == 1){
	// Movement from v2 castle
	if (char_pos == 0){
		// v2 castle to gates
		if keyboard_check(vk_down){
			with (other) path_start(v2_castle_to_gates, char_speed, path_action_stop, false);
			char_pos = 1;
		}
	}
	// Movement from v2 gates 
	if (char_pos == 1){
		// v2 gates to v2 castle
		if keyboard_check(vk_right){
			with (other) path_start(v2_gates_to_castle, char_speed, path_action_stop, false);
			char_pos = 0;
		}
		// v2 gates to windmill
		if keyboard_check(vk_up){
			with (other) path_start(v2_gates_to_windmill, char_speed, path_action_stop, false);
			char_pos = 2;
		}
	}
	// Movement from windmill
	if (char_pos == 2){
		// windmill to v2 gates
		if keyboard_check(vk_down){
			with (other) path_start(v2_windmill_to_gates, char_speed, path_action_stop, false);
			char_pos = 1;
		}
	}
}

