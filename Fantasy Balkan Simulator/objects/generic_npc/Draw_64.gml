/// @description 
draw_set_font(pixelated_font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);

_x = 683;
_y = 550;

if (global.interactingGeneric){
	draw_sprite(textbox, -1, _x, _y-45);
	draw_text_ext(_x, _y-45, global.talking, 25, 900);
}




