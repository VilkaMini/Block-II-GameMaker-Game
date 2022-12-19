/// @description Define functionality

// Get instance mouse position
inst = instance_position(mouse_x, mouse_y, button_parent);

// If there is no instance snd no highlight 
if (inst == noone && temp_inst != noone){
	with (temp_inst){
		sprite_index = Button_placeholder;
	}
	temp_inst = noone;
}

// If there is an instance colliding
if (inst != noone){
	// Change sprite
	with (inst){
		sprite_index = highlighted_button_sprite;
		temp_inst = inst;
	}
	// If clicked play sound and switch room
	if mouse_check_button_pressed(mb_left){
		audio_play_sound(button_exit_game, 1,0);
		switch inst.buttonNumber {
			case 0: {room_goto(Map);}; break;
			case 2: {game_end();}; break;
		}
	}
}

