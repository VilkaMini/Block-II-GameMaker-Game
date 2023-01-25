/// @description Variables
global.instances_to_delete = [];
global.tree_active = false;
global.tree_done = false
global.fish_active = false;
global.fish_done = false;
global.pay_coins = 99;

// [item_name, item_max, item_sprites, item_owned]
global.inventory = [
    ["Scrap Iron", 3, metal_scrap_item, 0],
    ["Metal Detector",1,metal_detector_item,0],
    ["Star",3,star_item,0],
	["Jewels", 1,jewel_item, 0],
	["Axe", 1,axe_item, 0],
	["Grain", 1,wheat_item, 0],
	["Flour", 1, flour_item, 0],
	["Fishing Rod", 1, fishing_rod_item, 0],
	["Rare Materials", 3, rare_material_item, 0],
	["Pouch of Gold", 1, rare_material_item, 0],
]

#macro item_name 0
#macro item_max 1
#macro item_sprites 2
#macro item_owned 3
