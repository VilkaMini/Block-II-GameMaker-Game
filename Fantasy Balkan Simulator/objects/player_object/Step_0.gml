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
	// right
	if (vx > 0) {
		sprite_index = player_walk_right_sprite;
		dir = 0;
	}
	// left
	if (vx < 0) {
		sprite_index = player_walk_left_sprite;
		dir = 2;
	}
	// down
	if (vy > 0) {
		sprite_index = player_walk_down_sprite;
		dir = 3;
	}
	// up
	if (vy < 0) {
		sprite_index = player_walk_up_sprite;
		dir = 1;
	}
}

// Depth sorting
depth =-y;

if(alarm[0] == -1)
alarm[0]=10;
