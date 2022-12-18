/// @description Control character position on map
if (!variable_global_exists("char_pos")){global.char_pos = 0;}

// Position castle
if (global.char_pos == 0){
	character_placeholder.x = 1184;
	character_placeholder.y = 736;
}
// Position windmill
if (global.char_pos == 1){
	character_placeholder.x = 1472;
	character_placeholder.y = 288;
}





