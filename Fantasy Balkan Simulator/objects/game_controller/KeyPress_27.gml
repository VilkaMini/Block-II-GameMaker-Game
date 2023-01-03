/// @description Control exit

// Save position
if (room == Village2){
	if (global.char_pos == 0){
		global.char_v2_positionX = player_object.x;
		global.char_v2_positionY = player_object.y;
	}
	else if (global.char_pos == 2){
		global.char_v1_positionX = player_object.x;
		global.char_v1_positionY = player_object.y;
	}

	// Go to menu
	room_goto(StartMenu);
}