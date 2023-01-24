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
				// Go through inventory to check if condition is met
				for (var k=0; k<array_length(global.inventory); k++){
					item = global.inventory[k];
					// Check if the item is collected
					if ((item[item_name] == condition && item[item_owned] == item[item_max]) || condition == "" && global.quest_active == false){
						if (global.array_quests[npc_counter[i]][3] != ""){
							for (var p=0; p<array_length(global.inventory); p++){
								item_give = global.inventory[p];
								if (global.array_quests[npc_counter[i]][3] == item_give[0]){
									global.inventory[p][item_owned] += 1;
									break;
								}
							}
						}
						npc_dialogue_c = npc_counter[i];
						npc_counter[i] += 1;
						global.quest_active = true;
					}
				}
			}
		}
	}
	
	text = global.array_quests[npc_dialogue_c][1];
	// Draw dialogue opener aka textbox and text
	draw_sprite(textbox, -1, _x, _y-45);
	draw_text_ext(_x, _y-45, text, 25, 900);
}
