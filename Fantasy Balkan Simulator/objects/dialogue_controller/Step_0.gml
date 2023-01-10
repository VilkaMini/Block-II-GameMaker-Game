/// @description Control clicking of dialogues
var mousex = device_mouse_x_to_gui(0);
var mousey = device_mouse_y_to_gui(0);


if (global.interacting && mouse_check_button_pressed(mb_left)){
	// Check all three boxes to pick whichever was picked
	if (point_in_rectangle(mousex, mousey, answer_box_pos[0]-160, _y+150-60, answer_box_pos[0]+160, _y+150+60) && array_length(text) >= 1){
		answer_picked[quest_track] = 0;
		show_debug_message("Clicked the 1 fucing box.")
	}
	if (point_in_rectangle(mousex, mousey, answer_box_pos[1]-160, _y+150-60, answer_box_pos[1]+160, _y+150+60) && array_length(text) >= 2){
		answer_picked[quest_track] = 1;
		show_debug_message("Clicked the 2 fucing box.")
	}
	if (point_in_rectangle(mousex, mousey, answer_box_pos[2]-160, _y+150-60, answer_box_pos[2]+160, _y+150+60) && array_length(text) >= 3){
		answer_picked[quest_track] = 2;
		show_debug_message("Clicked the 3 fucing box.")
	}
	
}



