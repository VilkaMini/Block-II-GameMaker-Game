/// @description Draw inventory hotbar

draw_sprite(inventory_greybox, -1, 683, 720);

var _item_x = item_pos * 22;
var _xx = 683;
var _yy = 600;
//draw_sprite(, item_pos_index, _xx + _item_x, _yy);

item_pos_index += 0.2;
for(var i = 0; i < 5; i += 1)
    {
    if !(global.item_array[i, item_type] == item_none)
        {
        draw_sprite(global.item_array[i, item_sprite], 0, _xx, _yy);
        draw_text(_xx + 8, _yy + 9,  + string(global.item_array[i, item_amount]));
        }
    _xx += 22;
}
