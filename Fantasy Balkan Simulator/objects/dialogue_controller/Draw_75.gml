/// @description Draw textbox
draw_set_font(pixelated_font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);

_x = 683;
_y = 550;

quest_track = step_1 + step_2 + step_3 + step_4;

// If the room is village
if (room == Village2 && global.interacting){
	// Goes through quest array
	for (var i=0; i<array_length(global.array_quests); i++){
		// If quest is not complete
		if (global.array_quests[i][0] == "Started"){
			global._selected = global.array_quests[i][2];
			global._prompt = global.array_quests[i][1];
			if (answer_picked[0] != -1){
				global.array_quests[i][2][answer_picked[0]][0] = "Selected";
				step_1 = 1;
			}
			// For every dialogue choice in quest
			for (var j=0; j<array_length(global._selected); j++){
				if (global._selected[j][0] == "Selected"){
					global._selected = global._selected[j][3];
					global._prompt = global.array_quests[i][2][j][2];
					if (answer_picked[1] != -1){
						global.array_quests[i][2][j][3][answer_picked[1]][0] = "SubSelected";
						step_2 = 1;
					}
					if (array_length(global._selected) == 0){
						global.array_quests[i][0] = "Completed";
						global.interacting = false;
						alarm[0] = 5;
					}
					// For every dialogue choice in chosen dialogue
					for (var k=0; k<array_length(global._selected); k++){
						if (global._selected[k][0] == "SubSelected"){
							global._selected = global._selected[k][3];
							global._prompt = global.array_quests[i][2][j][3][k][2];
							if (answer_picked[2] != -1){
								global.array_quests[i][2][j][3][k][3][answer_picked[2]][0] = "SubSubSelected";
								step_3 = 1;
							}
							if (array_length(global._selected) == 0){
								global.array_quests[i][0] = "Completed";
								global.interacting = false;
								alarm[0] = 5;
							}
							// For every dialogue choice in chosen dialogue from chosen dialogue
							for (var z=0; z<array_length(global._selected); z++){
								if (global._selected[z][0] == "SubSubSelected"){
									global._selected = global._selected[z][3];
									global._prompt = global.array_quests[i][2][j][3][k][3][z][2];
									if (answer_picked[3] != -1){
										global.array_quests[i][2][j][3][k][3][z][3][answer_picked[3]][0] = "SubSubSelected";
										step_4 = 1;
									}
									if (array_length(global._selected) == 0){
										global.array_quests[i][0] = "Completed";
										global.interacting = false;
										alarm[0] = 5;
									}
								}
								else {
								
								}
							}
						}
						else {
							
						}
					}
				}
				else {
					
				}
			}
		}
		else {

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
