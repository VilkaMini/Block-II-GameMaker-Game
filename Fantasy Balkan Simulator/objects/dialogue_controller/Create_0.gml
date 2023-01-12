 /// @description Create variables

if (!variable_global_exists("_selected")){global._selected = noone;}
answer_picked = [-1, -1, -1, -1, -1];
global.quest_active = false;

step_1 = 0; step_2 = 0; step_3 = 0; step_4 = 0;

global.array_quests = 
[
	["NotCompleted", "Aria : *visible discontent* Come Putik.. I hear the Beast nearby.", [
			["NotSelected", "Who was that?", "Aria : This is a contested zone, so a V2 probably, an insolent one as well..", [
					["NotSubSelected", "Mountain Dogs what’s that", "Aria : A Slur those Insolent V2 call us.", [
							["NotSubSubSelected", "Say nothing", "...", []]
						]
					],
					["NotSubSelected", "Say nothing", "...", [
							["NotSubSubSelected", "I’m sorry that happened", "...", []]
						]
					]
				]
			],
			["NotSelected", "Mountain Dogs what’s that ", "Aria: A Slur those Insolent V2 call us.", [
					["NotSubSelected", "Say nothing", "...", []]
				]
			],
			["NotSelected", "Say nothing", "...", []]
		]
	],
	["NotCompleted","Prompt",[
		[]
		]
	]
]

global.village_folk_sayings = [
"Jews are bad!",
"Mountain Dogs will die!",
"I can't use the N word anymore? That is fucked up.",
"Meet me outside, how about that?",
"Sponsored by Raid Shadow Legends, download now!"
]

