/// @description Minigamecontroller

if (global.exit_clicked == true){
	if (_rotMove >= 1){
		_rotMove = 0;
	}
	if (_rotation >= 1){
		_rotation = 0;
	}
	_real_exit_position = irandom(5);
	for (var i=0; i<5; i++){
		_butX = _centerX+_diameter*cos((_rotation+_rotMove)*2*pi);
		_butY = _centerY+_diameter*sin((_rotation+_rotMove)*2*pi);
		if (i == _real_exit_position){
			instance_create_layer(_butX, _butY, "Instances", button, {
				buttonNumber: 4
			});
		}
		else {
			instance_create_layer(_butX, _butY, "Instances", button, {
				buttonNumber: 3
			});
		}
		_rotation += 0.20;
	}
	_rotMove += 0.005;
}


