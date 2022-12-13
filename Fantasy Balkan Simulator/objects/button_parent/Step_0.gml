/// @description Define functionality
inst = instance_position(mouse_x, mouse_y, button_parent);

if (inst != noone){
	if mouse_check_button_pressed(mb_left){
		switch inst.buttonNumber {
			case 0: {room_goto(Village2);}; break;
			case 2: {game_end();}; break;
		}
	}
}

