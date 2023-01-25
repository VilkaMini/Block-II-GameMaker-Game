/// @description Control exit

// Go to menu
global.show_message_purchase = false;
audio_play_sound(Menu_button_sound, 1,0);
audio_stop_all();
room_goto(StartMenu);
