/// @description Define functionality
inst = instance_position(mouse_x, mouse_y, button);

if (inst != noone){
	if mouse_check_button_pressed(mb_left){
		if (inst.buttonNumber == 0){
			room_goto(Village2);
		}
		else if (inst.buttonNumber == 2){
			game_end();
		}
		/*
		switch buttonNumber {
			case 2: {room_goto(Village2);}; break;
			case 1: {}; break;
			case 0: {game_end();}; break;
		
		}
		*/
	}
}

