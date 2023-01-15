// Check keys for movement
moveRight = keyboard_check(ord("D"))
moveLeft = keyboard_check(ord("A"))
moveUp = keyboard_check(ord("W"))
moveDown = keyboard_check(ord("S"))


// Calculate movement
xVelocity = ((moveRight - moveLeft) * (moveSpeed * speedModifier)) * !global.interacting;
yVelocity = ((moveDown - moveUp) * (moveSpeed * speedModifier)) * !global.interacting;

// If moving
if (xVelocity != 0 || yVelocity != 0) {
	if !collision_rectangle(x+xVelocity-7.5,y-7,x+xVelocity+7.5,y-1,decoration_object_parent,true,true) {	
	x += xVelocity;
	}
	
	if !collision_rectangle(x-7.5,y+yVelocity-7,x+7.5,y+yVelocity-1,decoration_object_parent,true,true) {	
	y += yVelocity;  
	}
}

// Check for nearby characters
npcNearby = collision_rectangle(x-10, y-10, x+10, y+10, int_character_parent, true, true);
if (npcNearby){
	if (keyboard_check_pressed(vk_space)){
		switch global.interacting{
			case true: {
				global.interacting = false;
				break;
			}
			case false: {
				global.interacting = true;
				show_debug_message("")
				if (global.array_quests[npcNearby.char_quest][0] != "Started" && global.array_quests[npcNearby.char_quest][0] != "Completed" && global.quest_active != true){
					global.array_quests[npcNearby.char_quest][0] = "Started";
					global.quest_active = true;
				}
				else if (global.array_quests[npcNearby.char_quest][0] == "Completed") {
					saying_index = random_range(0, array_length(global.village_folk_sayings));
					global._prompt = global.village_folk_sayings[saying_index];
				}
				break;
			}
		}
	}
}
else {
	show_debug_message("No NPC");
}

// Check for horizontal movement
if (xVelocity != 0) {
	// Change sprite based direction
	switch xVelocity {
		case 2: sprite_index = player_face_right_sprite; faceDirection = 0; break;
		case 3: sprite_index = player_roll_right_sprite; faceDirection = 0; break;
		case -2: sprite_index = player_face_left_sprite; faceDirection = 2; break;
		case -3: sprite_index = player_roll_left_sprite; faceDirection = 2; break;
	}
}	

// Check for vertical movement
if (yVelocity != 0) {
	// Change sprite based direction
	switch yVelocity {
		case -2: sprite_index = player_face_up_sprite; faceDirection = 1; break;
		case -3: sprite_index = player_roll_up_sprite; faceDirection = 1; break;
		case 2: sprite_index = player_face_down_sprite; faceDirection = 3; break;
		case 3: sprite_index = player_roll_down_sprite; faceDirection = 3; break;
	}
}	

// When no longer moving
if (xVelocity == 0 && yVelocity == 0) {
	// Change sprite based on last direction
	switch faceDirection {
		case 0: sprite_index = player_face_right_sprite; break;
		case 1: sprite_index = player_face_up_sprite; break;
		case 2: sprite_index = player_face_left_sprite; break;
		case 3: sprite_index = player_face_down_sprite; break;
	}
}

// Depth sorting
depth =-y;

// Start slime trail
if(alarm[0] == -1)
alarm[0]=10;
