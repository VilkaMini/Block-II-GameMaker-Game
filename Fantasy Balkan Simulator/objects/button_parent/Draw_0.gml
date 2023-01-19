/// @description Draw text in the prompt

draw_self();

draw_set_font(pixelated_font_startmenu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_ext_color(x, text_pos, textToDraw,lineHeight, textWidth, c_black, c_black, c_black, c_black, 1);