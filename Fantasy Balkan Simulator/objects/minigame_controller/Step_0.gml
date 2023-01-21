/// @description Minigamecontroller
_centerX += 5;

if (_round2 && _diameter <= 400){
	_diameter += _incSize;
}

if (global.exit_clicked == true){
	if (_rotMove >= 1){
		_rotMove = 0;
	}
	if (_rotation >= 1){
		_rotation = 0;
	}
	_real_exit_position = irandom(5);
	for (var i=0; i<10; i++){
		_butX = _centerX+_diameter*cos((_rotation+_rotMove)*2*pi);
		_butY = _centerY+_diameter*sin((_rotation+_rotMove)*2*pi);
		if (i == _real_exit_position){
			if (_round2){
				instance_create_layer(_butX, _butY, "Instances", button, {
					buttonNumber: 5
				})
			}
			instance_create_layer(_butX, _butY, "Instances", button, {
				buttonNumber: 4
			});
		}
		else {
			instance_create_layer(_butX, _butY, "Instances", button, {
				buttonNumber: 3
			});
		}
		_rotation += 0.1;
	}
	_rotMove += 0.005;
}


