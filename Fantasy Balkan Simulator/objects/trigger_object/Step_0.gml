/// @description Check for collision with player

with trigger_object
	if (place_meeting(x, y, player_object) && keyboard_check_pressed(vk_space)){
		room_goto(Map);
	}