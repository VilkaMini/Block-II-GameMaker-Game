/// @description Draw textbox
draw_set_font(dialogue_box_font);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_set_color(c_black);

_text = global.dialogueTextToDraw;
_x = 683;
_y = 550;

// If the room is village
if (room == Village2 && global.interacting){
	// Draw textbox
	draw_sprite(textbox, -1, _x, _y);
	draw_text_ext(_x, _y, _text, 5, 900);
}


