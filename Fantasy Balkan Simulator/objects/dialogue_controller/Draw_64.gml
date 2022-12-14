/// @description Draw textbox
draw_set_font(pixelated_font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);

_x = 683;
_y = 550;

quest_track = one + two + three;


// If the room is village
if (room == Village2 && global.interacting){
	// Goes through quest array
	for (var i=0; i<array_length(global.array_quests); i++){
		// If quest is not complete
		if (global.array_quests[i][0] == "NotCompleted"){
			show_debug_message("First");
			global._selected = global.array_quests[i][2];
			global._prompt = global.array_quests[i][1];
			if (answer_picked[0] != -1){
				global.array_quests[i][2][answer_picked[0]][0] = "Selected";
				one = 1;
			}
			show_debug_message(array_length(global._selected))
			show_debug_message(answer_picked);
			show_debug_message(global.array_quests);
			// For every dialogue choice in quest
			for (var j=0; j<array_length(global._selected); j++){
				show_debug_message(j)
				show_debug_message(global._selected[j][0]);
				if (global._selected[j][0] == "Selected"){
					show_debug_message("Second");
					global._selected = global._selected[j][3];
					global._prompt = global.array_quests[i][2][j][2];
					if (answer_picked[1] != -1){
						global.array_quests[i][2][j][3][answer_picked[1]][0] = "SubSelected";
						two = 1;
					}
					show_debug_message(answer_picked);
					// For every dialogue choice in chosen dialogue
					for (var k=0; k<array_length(global._selected); k++){
						if (global._selected[k][0] == "SubSelected"){
							show_debug_message("Third");
							global._selected = global._selected[k][3];
							global._prompt = global.array_quests[i][2][j][3][k][2];
							if (answer_picked[2] != -1){
								global.array_quests[i][2][j][3][k][3][answer_picked[2]][0] = "SubSubSelected";
								three = 1;
							}
							// For every dialogue choice in chosen dialogue from chosen dialogue
							for (var z=0; z<array_length(global._selected); z++){
								if (global._selected[z][0] == "SubSubSelected"){
									show_debug_message("Forth");
								}
							}
						}
					}
				}
			}
		}
		if (global.array_quests[i][0] == "Completed"){
			continue;
		}
	}
	
	answer_box_pos = [341, 683, 1024];
	text = global._selected;
	
	// Draw dialogue opener aka textbox and text
	draw_sprite(textbox, -1, _x, _y-45);
	draw_text_ext(_x, _y-45, global._prompt, 5, 900);
	
	// Draw answers
	for (var d=0; d<array_length(text); d++){
		draw_sprite_ext(textbox_button, -1, answer_box_pos[d], _y+150, 1, 1, 0, c_white, 1);
		draw_text_ext(answer_box_pos[d], _y+150, text[d][1], 25, 200);
	}

}
