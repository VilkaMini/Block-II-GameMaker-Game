/// @description Spawn slime trail

// Create slime trails when moving
if (xVelocity != 0 || yVelocity != 0) {
	instance_create_depth(x,y,depth+2,player_trail_object);
	alarm[0] = random_range(5,15);
}


