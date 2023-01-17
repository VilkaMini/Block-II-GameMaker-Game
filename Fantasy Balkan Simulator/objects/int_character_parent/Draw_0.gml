/// @description Draw interactable mark

draw_self();

if (global.array_quests[char_quest][0] != "Completed"){
	draw_sprite(question_mark, -1, x, y-25);
	image_speed = 2.5;	
}
