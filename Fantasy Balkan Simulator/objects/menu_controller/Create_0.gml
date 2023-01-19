/// @description Variables

alarm_done = true;
inst = noone;
temp_inst = noone;
global.exit_clicked = false;

background_map = ds_map_create();
background_map[? layer_get_id("Clouds")] = 0.5;
background_map[? layer_get_id("Structures")] = 0.3;
background_map[? layer_get_id("Middle")] = 0.2;
background_map[? layer_get_id("Front")] = 0.1;
