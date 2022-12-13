/// @description Set item

item = choose(item_banana, item_dirt, item_flower, item_pineapple, item_skull);
switch(item)
{
case item_banana:
    sprite_index = banana;
    break;
case item_dirt:
    sprite_index = dirt;
    break;
case item_flower:
    sprite_index = flower;
    break;
case item_pineapple:
    sprite_index = pineapple;
    break;
case item_skull:
    sprite_index = skull;
    break;
}


