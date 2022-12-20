/// @description Minigamecontroller

if (global.exit_clicked == true){
	if (_rotMove >= 1){
		_rotMove = 0;
	}
	if (_rotation >= 1){
		_rotation = 0;
	}
	for (var i=0; i<5; i++){
		_butX = _centerX+_diameter*cos((_rotation+_rotMove)*2*pi);
		_butY = _centerY+_diameter*sin((_rotation+_rotMove)*2*pi);
		var _inst = instance_create_layer(_butX, _butY, "Instances", button);
		array_push(array_buttons, _inst);
		show_debug_message(array_buttons);
		_rotation += 0.20;
	}
	global.exit_clicked = false;
	_rotMove += 0.01;
}


