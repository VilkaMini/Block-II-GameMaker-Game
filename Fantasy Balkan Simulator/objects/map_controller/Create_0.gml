/// @description Control character position on map
if (!variable_global_exists("char_pos")){global.char_pos = 0;}
audio_stop_all();

// Position castle
if (global.char_pos == 0){
	character_placeholder.x = 1230;
	character_placeholder.y = 732;
}
// Position windmill
if (global.char_pos == 1){
	character_placeholder.x = 1505;
	character_placeholder.y = 308;
}
if (global.char_pos == 2){
	character_placeholder.x = 524.62;
	character_placeholder.y = 929.49;
}