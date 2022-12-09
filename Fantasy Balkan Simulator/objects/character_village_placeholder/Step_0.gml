 /// @description Player Movement

// Check keys for movement
moveRight = keyboard_check(ord("D"))
moveLeft = keyboard_check(ord("A"))
moveUp = keyboard_check(ord("W"))
moveDown = keyboard_check(ord("S"))

// Calculate movement
vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp) * walkSpeed);

// If moving
if (vx != 0 || vy != 0) {
	if !collision_point(x+vx,y,decoration_object_parent,true,true) {	
	x += vx;
	}
	
	if !collision_point(x,y+vy,decoration_object_parent,true,true) {	
	y += vy;
	}
}

// Depth sorting
depth =-y;