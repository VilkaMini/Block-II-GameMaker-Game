/// @description Spawn slime trail

// Create slime trails
if (vx != 0 || vy != 0) {
	instance_create_depth(x,y,depth+2,player_trail_object);
	alarm[0] = random_range(5,15);
}


