/// @description Button controller

// Get instance mouse position
inst = instance_position(mouse_x, mouse_y, button_parent);

// If there is no instance and no highlight 
if (inst == noone && temp_inst != noone){
	with (temp_inst){
		sprite_index = spr_game_button;
		text_pos = y - 20;
	}
	temp_inst = noone;
}

// If there is an instance colliding
if (inst != noone && alarm_done){
	// Change sprite
	with (inst){
		sprite_index = spr_highlighted_game_button;
		text_pos = y - 20;
	}
	temp_inst = inst;
	// If clicked play sound and switch room
	if (mouse_check_button_pressed(mb_left)){
		with (inst){
			sprite_index = spr_highlighted_pressed_game_button;
			text_pos = y - 13;
		}
		
		audio_play_sound(button_exit_game, 1,0);
		switch inst.buttonNumber {
			case 0: {room_goto(Map);} break;
			case 2: {global.exit_clicked = true;} break;
			case 3: {show_debug_message("Fake exit button");} break;
			case 4: {minigame_controller._round2 = true;} break;
			case 5: {game_end();} break;
		}
		alarm_done = false;
		alarm[0] = 30;
	}
}




