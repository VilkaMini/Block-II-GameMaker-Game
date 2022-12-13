/// @description Define functionality
inst = instance_position(mouse_x, mouse_y, button_parent);
if (inst == noone && temp_inst != noone){
	with (temp_inst){
		sprite_index = Button_placeholder;
	}
	temp_inst = noone;
}


if (inst != noone){
	with (inst){
		sprite_index = highlighted_button_sprite;
		temp_inst = inst;
	}
	
	if mouse_check_button_pressed(mb_left){
		audio_play_sound(button_exit_game, 1,0);
		switch inst.buttonNumber {
			case 0: {room_goto(Village2);}; break;
			case 2: {game_end();}; break;
		}
	}
}

