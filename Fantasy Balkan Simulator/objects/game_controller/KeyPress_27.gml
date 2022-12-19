/// @description Control exit

// Save position
if (room == Village2){
	if (global.char_pos == 0){
		global.char_v2_positionX = character_village_placeholder.x;
		global.char_v2_positionY = character_village_placeholder.y;
	}
	else if (global.char_pos == 2){
		global.char_v1_positionX = character_village_placeholder.x;
		global.char_v1_positionY = character_village_placeholder.y;
	}

	// Go to menu
	room_goto(StartMenu);
}