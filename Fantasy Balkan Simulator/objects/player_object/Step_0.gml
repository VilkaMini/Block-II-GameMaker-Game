// Check keys for movement
moveRight = keyboard_check(ord("D"))
moveLeft = keyboard_check(ord("A"))
moveUp = keyboard_check(ord("W"))
moveDown = keyboard_check(ord("S"))


// Calculate movement
vx = ((moveRight - moveLeft) * walkSpeed) * !global.interacting;
vy = ((moveDown - moveUp) * walkSpeed) * !global.interacting;

// If moving
if (vx != 0 || vy != 0) {
	if !collision_rectangle(x+vx-7,y-7,x+vx+7,y-1,decoration_object_parent,true,true) {	
	x += vx;
	}
	
	if !collision_rectangle(x-7,y+vy-7,x+7,y+vy-1,decoration_object_parent,true,true) {	
	y += vy;  
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
				break;
				}
		}
	}
}
else {
	show_debug_message("No NPC");
}

// Check for movement
if (vx != 0 || vy != 0) {
	
	// Change sprite to match walking direction
	// walk right
	if (vx = 2) {
		sprite_index = player_walk_right_sprite;
		facedirection = 0;
	}
	// roll right
	if (vx = 3) {
		sprite_index = player_roll_right_sprite;
		facedirection = 0;
	}
	// walk left
	if (vx = -2) {
		sprite_index = player_walk_left_sprite;
		facedirection = 2;
	}
	// roll left
	if (vx = -3) {
		sprite_index = player_roll_left_sprite;
		facedirection = 2;
	}
	// walk down
	if (vy = 2) {
		sprite_index = player_walk_down_sprite;
		facedirection = 3;
	}
	// roll down
	if (vy = 3) {
		sprite_index = player_roll_down_sprite;
		facedirection = 3;
	}
	// walk up
	if (vy = -2) {
		sprite_index = player_walk_up_sprite;
		facedirection = 1;
	}
	// roll up
	if (vy = -3) {
		sprite_index = player_roll_up_sprite;
		facedirection = 1;
	}
}

// When no longer moving
if (vx == 0 && vy == 0) {
	// Change sprite based on last direction
	switch facedirection {
		case 0: sprite_index = player_walk_right_sprite; break;
		case 1: sprite_index = player_walk_up_sprite; break;
		case 2: sprite_index = player_walk_left_sprite; break;
		case 3: sprite_index = player_walk_down_sprite; break;
	}
}

// Depth sorting
depth =-y;

if(alarm[0] == -1)
alarm[0]=10;
