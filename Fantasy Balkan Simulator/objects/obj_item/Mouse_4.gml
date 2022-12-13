/// @description Item pickup

var _pos = 0;
var _type = item;
var _sprite = sprite_index;

with(village_controller)
{
    while (_pos < 5){
        if (global.item_array[_pos][item_type] == _type){
            break;}
        else{
            _pos += 1;}
    }
    if (_pos > 4){
        _pos = 0;
        while (_pos < 5){
            if (global.item_array[_pos][item_type] == item_none){
                break;
                }
            else
                {
                _pos += 1;
                }
            }
        }
if (_pos < 5)
    {
	    item_array[_pos][item_type] = _type;
	    item_array[_pos][item_sprite] = _sprite;
	    item_array[_pos][item_amount] += 1;
	    with(other) instance_destroy();
    }
    }




