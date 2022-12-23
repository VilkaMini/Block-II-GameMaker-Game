/// @description Draw textbox
draw_set_font(dialogue_box_font);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_set_color(c_black);

_x = 683;
_y = 550;

// If the room is village
if (room == Village2 && global.interacting){
	// Goes through quest array
	for (var i=0; i<array_length(global.array_quests); i++){
		// If quest is not complete
		if (global.array_quests[i][0] == "NotCompleted"){
			show_debug_message("First");
			
			global._selected = global.array_quests[i][1];
			// For every dialogue choice in quest
			for (var j=0; j<array_length(global._selected); j++){
				show_debug_message(global._selected);
				if (global._selected[j][0] == "Selected"){
					show_debug_message("Second");
					show_debug_message(global._selected);
					global._selected = global._selected[j][3];
					// For every dialogue choice in chosen dialogue
					for (var k=0; k<array_length(global._selected); k++){
						if (global._selected[k][0] == "SubSelected"){
							show_debug_message("Third");
							global._selected = global._selected[k][3];
							// For every dialogue choice in chosen dialogue from chosen dialogue
							for (var z=0; z<array_length(global._selected); z++){
								if (global._selected[z][0] == "SubSubSelected"){
									show_debug_message("Forth");
								} break;
							}
						} break;
					}
				} break;
			}
			
			
		} break;;
		if (array_quests[i][0] == "Completed"){
			continue;
		}
	}
	
	answer_box_pos = [341, 683, 1024];
	
	// Draw dialogue opener aka textbox and text
	draw_sprite(textbox, -1, _x, _y);
	draw_text_ext(_x, _y, "Question", 5, 900);
	
	// Draw answers
	text = global._selected;
	for (var d=0; d<array_length(text); d++){
		draw_sprite_ext(textbox, -1, answer_box_pos[d], _y, 0.3, 0.3, 0, c_white, 1);
		draw_text_ext(answer_box_pos[d], _y, text[d][1], 5, 300);
		show_debug_message(text[d][1]);
	}

}


