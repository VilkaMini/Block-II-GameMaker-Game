/// @description Variables
global.instances_to_delete = [];
global.tree_active = false;
global.tree_done = false
global.fish_active = false;
global.fish_done = false;
global.show_message_purchase = false;
global.interactingGeneric = false;
global.talking = "";

global.pay_coins = 99;

// [item_name, item_max, item_sprites, item_owned]
global.inventory = [
    ["Star",3,star_item,0],
	["Jewels", 1,jewel_item, 0],
	["Metal Detector",1,metal_detector_item,0],
    ["Scrap Iron", 3, metal_scrap_item, 0],
	["Axe", 1,axe_item, 0],
	["Grain", 1,wheat_item, 0],
	["Pouch of Gold", 1, coin_puch, 0],
	["Fishing Rod", 1, fishing_rod_item, 0],
	["Collectable", 3, rare_material_item, 0]
]

#macro item_name 0
#macro item_max 1
#macro item_owned 3