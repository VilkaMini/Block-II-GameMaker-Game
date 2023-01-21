/// @description Variables
global.instances_to_delete = [];

// [item_name, item_max, item_sprites, item_owned]
global.inventory = [
    ["Scrap Iron", 3, scrap_greybox, 0],
    ["Metal Detector",1,metal_detedctor_greybox,0],
    ["Star",3,star_greybox,0],
	["Jewels", 1,jewels_greybox, 0],
	["Axe", 1,axe_greybox, 0],
	["Grain", 3,grain_greybox, 0],
	["Flour", 1, flour_greybox, 0],
	["Fishing Rod", 1, fishing_rod_greybox, 0],
]

#macro item_name 0
#macro item_max 1
#macro item_sprites 2
#macro item_owned 3