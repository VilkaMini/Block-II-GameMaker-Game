/// @description Main

// Variables
walkSpeed = 2;
vx = 0;
vy = 0;
dir = 3;
moveRight = 0;
moveLeft = 0;
moveUp = 0;
moveDown = 0;

npcNearby = noone;
global.interacting = false;

if (global.char_pos == 0 && variable_global_exists("char_v2_positionX")){
	x = global.char_v2_positionX;
	y = global.char_v2_positionY;
}
else if (global.char_pos == 2 &&  variable_global_exists("char_v1_positionX")){
	x = global.char_v1_positionX;
	y = global.char_v1_positionY;
}
else {
	x = 264;
	y = 880;
}

