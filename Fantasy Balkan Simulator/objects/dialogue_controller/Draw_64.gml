/// @description Draw textbox
draw_set_font(pixelated_font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);

_x = 683;
_y = 550;

// If the room is village
if (room == Villages && global.interacting){
	alarm[0] = 2;
	for (var i=0; i<4; i++){
		// Check for interactable character
		if (npc_names[i] == global.char_name_pass && global.quest_active == false){
			show_debug_message(i);
			show_debug_message(npc_names[i])
			// Check if the the quest is the last one
			if (npc_counter[i] <= npc_counter_max[i]){
				show_debug_message(npc_counter)
				condition = global.array_quests[npc_counter[i]][2];
				show_debug_message(condition)
				// Go through inventory to check if condition is met
				for (var k=0; k<array_length(global.inventory); k++){
					item = global.inventory[k];
					// Check if the item is collected
					if ((item[item_name] == condition && item[item_owned] == item[item_max]) || condition == "" && !global.quest_active){
						if (global.array_quests[npc_counter[i]][3] != ""){
							for (var p=0; p<array_length(global.inventory); p++){
								item_give = global.inventory[p];
								if (global.array_quests[npc_counter[i]][3] == item_give[0]){
									global.inventory[p][item_owned] += 1;
									break;
								}
							}
						}
						show_debug_message(k)
						show_debug_message(npc_counter);
						npc_dialogue_c = npc_counter[i];
						if (npc_counter[i] != npc_counter_max[i]){
							npc_counter[i] += 1;
							global.array_quests[npc_counter[i]][0] = "Completed";
						}
						global.quest_active = true;
					}
					else if (condition != ""){
						npc_dialogue_c = npc_counter[i]-1;
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
