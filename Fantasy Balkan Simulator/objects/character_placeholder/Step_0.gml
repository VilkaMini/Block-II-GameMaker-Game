/// @description Map Movement 

// Stop along your path
if keyboard_check(vk_space){
	path_speed = 0;	
}
else {
	path_speed = 4;
}

// If the path is stopped, then the check for movement can be repeated
if(path_position == 1){
	// Entering objects
	if (global.char_pos == 1 && keyboard_check(vk_enter)){
		room_goto(Village2);
	}
	
	// Movement from v2 castle
	else if (global.char_pos == 0){
		// v2 castle to gates
		if keyboard_check(ord("S")){
			with (other) path_start(v2_castle_to_gates, char_speed, path_action_stop, false);
			global.char_pos = 1;
		}
	}
	// Movement from v2 gates 
	else if (global.char_pos == 1){
		// v2 gates to v2 castle
		if keyboard_check(ord("D")){
			dupped_path = path_duplicate(v2_castle_to_gates);
			path_reverse(dupped_path);
			with (other) path_start(dupped_path, char_speed, path_action_stop, false);
			global.char_pos = 0;
		}
		// v2 gates to windmill
		else if keyboard_check(ord("W")){
			with (other) path_start(v2_gates_to_windmill, char_speed, path_action_stop, false);
			global.char_pos = 2;
		}
		// v2 gates to v1 gates
		else if keyboard_check(ord("A")){
			with (other) path_start(v2_gates_to_v1_gates, char_speed, path_action_stop, false);
			global.char_pos = 4;
		}
	}
	// Movement from windmill
	else if (global.char_pos == 2){
		// windmill to v2 gates
		if keyboard_check(ord("S")){
			dupped_path = path_duplicate(v2_gates_to_windmill);
			path_reverse(dupped_path);
			with (other) path_start(dupped_path, char_speed, path_action_stop, false);
			global.char_pos = 1;
		}
	}
	// Movement from v1 gates
	else if (global.char_pos == 4){
		// v1 gates to v2 gates
		if keyboard_check(ord("D")){
			dupped_path = path_duplicate(v2_gates_to_v1_gates);
			path_reverse(dupped_path);
			with (other) path_start(dupped_path, char_speed, path_action_stop, false);
			global.char_pos = 1;
		}
	}
}
