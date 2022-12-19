/// @description Switching selected inventory slot

right_pressed = keyboard_check_pressed(vk_right);
left_pressed = keyboard_check_pressed(vk_left);

if (right_pressed || left_pressed){
	if (right_pressed && item_pos < 4){
		item_pos += 1;
	}
	if (left_pressed && item_pos >= 1){
		item_pos -= 1;
	}
}


