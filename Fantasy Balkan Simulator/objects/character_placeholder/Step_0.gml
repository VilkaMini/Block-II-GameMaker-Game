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
	if (global.char_pos == 0 && keyboard_check_pressed(vk_space)){
		room_goto(Villages);
	}
	else if (global.char_pos == 2 && keyboard_check_pressed(vk_space)){
		room_goto(Villages);
	}
	
	// Movement from v2 gates 
	else if (global.char_pos == 0){
		// v2 gates to windmill
		if keyboard_check(ord("W")){
			with (other) path_start(path_v2_to_windmill, char_speed, path_action_stop, false);
			global.char_pos = 1;
		}
		// v2 gates to v1 gates
		else if keyboard_check(ord("A")){
			with (other) path_start(path_v2_to_v1, char_speed, path_action_stop, false);
			global.char_pos = 2;
		}
	}
	// Movement from windmill
	else if (global.char_pos == 1){
		// windmill to v2 gates
		if (keyboard_check(ord("S")) || keyboard_check(ord("A"))){
			dupped_path = path_duplicate(path_v2_to_windmill);
			path_reverse(dupped_path);
			with (other) path_start(dupped_path, char_speed, path_action_stop, false);
			global.char_pos = 0;
		}
	}
	// Movement from v1 gates
	else if (global.char_pos == 2){
		// v1 gates to v2 gates
		if keyboard_check(ord("D")){
			dupped_path = path_duplicate(path_v2_to_v1);
			path_reverse(dupped_path);
			with (other) path_start(dupped_path, char_speed, path_action_stop, false);
			global.char_pos = 0;
		}
		if keyboard_check(ord("S")){
			with (other) path_start(path_v1_to_mine, char_speed, path_action_stop, false);
			global.char_pos = 3;
		}
	}
	else if (global.char_pos == 3){
		if (keyboard_check(ord("D")) || keyboard_check(ord("S"))){
			dupped_path = path_duplicate(path_v1_to_mine);
			path_reverse(dupped_path);
			with (other) path_start(dupped_path, char_speed, path_action_stop, false);
			global.char_pos = 2;
		}
	}
}
