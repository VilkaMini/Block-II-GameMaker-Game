/// @description Draw textbox
draw_set_font(dialogue_box_font);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_set_color(c_black);

_text = global.dialogueTextToDraw;
_x = 683;
_y = 550;

// If the room is village
if (room == Village2 && global.interacting){
	// Select dialogue
	var _selected;
	// Goes through quest array
	for (var i=0; i<array_length(array_quests); i++){
		// If quest is not complete
		if (array_quests[i][0] == "NotCompleted"){
			_selected = array_quests[i][1];
			// For every dialogue choice in quest
			for (var j=0; j<array_length(_selected); j++){
				if (_selected[j][0] == "Selected"){
					_selected = _selected[j][3];
					// For every dialogue choice in chosen dialogue
					for (var k=0; k<array_length(_selected); k++){
						if (_selected[k][0] == "SubSelected"){
							_selected = _selected[k][3];
							// For every dialogue choice in chosen dialogue from chosen dialogue
							for (var z=0; z<array_length(_selected); z++){
								if (_selected[z][0] == "SubSubSelected"){
									
								}
							}
						}
					}
				}
			}
			
			
		}
		if (array_quests[i][0] == "Completed"){
			continue;
		}
	}
	
	// Draw textbox
	draw_sprite(textbox, -1, _x, _y);
	draw_text_ext(_x, _y, _text, 5, 900);
}


