 /// @description Create variables

npc_counter = [0, 2, 6, 8, 11];
npc_counter_max = [1, 5, 7 ,10, 12];
npc_names = ["Vyke", "Kondor", "Granny", "Serril", "Aria"]
global.quest_active = false;

global.array_quests = 
[
	["NotCompleted","Vyke: You seem new to the village, I'll let ya in on a secret.. some Jewels were stolen long ago, they're hidden behind some house.. you can probably do whatever you want with them, since the original owner probably stole them", "", ""],
	["NotCompleted","Vyke: Could you find some flowers around the houses here and deliver them to Aria for me?", "", ""],
	["NotCompleted","Kondor: Those darn Plainlanders, Stealing from me?! Those jewels were my family’s fortune!", "", ""],
	["NotCompleted","Kondor: Those..! Those are my Jewels! You found them for me? How generous of you..Mr slime? anyways I can't think of how to reward you… Actually here's this metal detector.. it’s not much but if you find me some materials I can craft you anything you'd like!", "Jewels", "Metal Detector"],
	["NotCompleted","Kondor: Hmm this doesn’t seem enough for a sword.. How about an axe? What to do with it? I don’t know? Defend yourself maybe? Maybe cut down some trees in the forest? ","Scrap Iron", "Axe"],
	["NotCompleted","Kondor: What to do with it? I don't know? defend yourself maybe? maybe cut down some trees in the forest? ","Axe", ""],
	["NotCompleted","Granny Marlene: hmm if only I had some grain to make some bread for the miners…", "", ""],
	["NotCompleted","Granny Marlene: Oh! you have some Grain? Could you please sell me some? I will pay you greatly!","Grain", ""],
	["NotCompleted","Old man Serril: Stingy Cheapskates…the lotta them, can't even afford some Grain… A slime? you have some gold inside of you or something? Tell you what, if you can sell this grain and I don't care who you sell it to, I'll reward you aptly.","", ""],
	["NotCompleted","Old man Serril: WOAH! Who gave you all this gold? Thank you for your help dear Slime, I don't have much to offer other than wisdom if you need it, and a fishing rod that's laying around somewhere I always forget where I put my stuff..","Pouch of Gold", ""],
	["NotCompleted","Old man Serril: What to do with it? I don't know? fish with it? the river near the forest has loads of rare fish..","Fishing Rod", ""],
	["NotCompleted","Aria: Hey there! You can go around villages freely? That is wonderful ! Say, there's this Plainlander, I'm truly fond of him but I rarely get to see him. He loves to craft but lacks the materials to do so, could I ask you to deliver some materials to him? As for their location, well.. They're scattered around the village","", ""],
	["NotCompleted","Aria: What's this? Flowers? From Vyke? How wonderful! As for your recompense here's a Pickaxe. What to do with it? I don't know pick some rocks in the forest or something.. ","Flowers", ""],
]