/// @description Item pickup

var _pos = 0;
var _type = item;
var _sprite = sprite_index;
var _inst = instance_position(mouse_x,mouse_y,all)
array_push(global.instance_array, _inst);

with(inventory_controller)
{
	// Checks if there is an item with same item type in any of the 
	/*
    while (_pos < 5){
        if (global.item_array[_pos][item_type] == _type){
            break;}
        else{
            _pos += 1;}
    }*/
	// Checks for the first occurance of an empty block
    //if (_pos > 4){
    _pos = 0;
    while (_pos < 5){
        if (global.item_array[_pos][item_type] == item_none){
            break;}
        else{
            _pos += 1;}
    }
    //}
	// Puts item in place
	if (_pos < 5)
	    {
		    global.item_array[_pos][item_type] = _type;
		    global.item_array[_pos][item_sprite] = _sprite;
		    //global.item_array[_pos][item_amount] += 1;
			global.item_array[_pos][item_instId] = _inst;
		    with(other) instance_destroy();
	    }
}




