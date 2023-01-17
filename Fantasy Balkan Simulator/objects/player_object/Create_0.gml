/// @description Main

// Variables
moveSpeed = 2;
speedModifier = 1;
xVelocity = 0;
yVelocity = 0;
faceDirection = 3;
moveRight = 0;
moveLeft = 0;
moveUp = 0;
moveDown = 0;

exitNearby = false;;
npcNearby = noone;
global.interacting = false;

if (global.char_pos == 0){
	x = 264;
	y = 880;
}
else if (global.char_pos == 2){
	x = 1424;
	y = 935;
}

