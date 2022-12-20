 /// @description Player Movement

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
	if !collision_point(x+vx,y,decoration_object_parent,true,true) {	
	x += vx;
	}
	
	if !collision_point(x,y+vy,decoration_object_parent,true,true) {	
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
				global.dialogueTextToDraw = "Something lol";
				break;
				}
		}
	}
}
else {
	show_debug_message("No NPC");
}


// Depth sorting
depth =-y;