/// @description Draw textbox
draw_set_font(pixelated_font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);

_x = 683;
_y = 550;

// If the room is village
if (room == Villages && global.interacting){
	char_name = global.char_name_pass;
	for (var i=0; i<5; i++){
		// Check for interactable character
		if (npc_names[i] == char_name && global.quest_active == false){
			// Check if the the quest is the last one
			if (npc_counter[i] <= npc_counter_max[i]){
				condition = global.array_quests[npc_counter[i]][2];
				for (var k=0; k<array_length(global.inventory); k++){
					
				}
				if (true){
					
				}
				
				npc_dialogue_c = npc_counter[i];
				npc_counter[i] += 1;
				global.quest_active = true;
			}
		}
	}
	
	text = global.array_quests[npc_dialogue_c][1];
	
	
	
	
	
	
	
	
	// Draw dialogue opener aka textbox and text
	draw_sprite(textbox, -1, _x, _y-45);
	draw_text_ext(_x, _y-45, text, 25, 900);
}
