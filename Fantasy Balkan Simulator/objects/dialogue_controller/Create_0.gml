 /// @description Create variables

if (!variable_global_exists("dialogueTextToDraw")){global.dialogueTextToDraw = "Sample";}
if (!variable_global_exists("_selected")){global._selected = noone;}


global.array_quests = 
[
	["NotCompleted", [
			["NotSelected", "Who was that?", "Reply", [
					["NotSubSelected", "(V1 Slur) what’s that", "Reply", 
							["NotSubSubSelected", "Say nothing", "Reply"]
						],
					["NotSubSelected", "Say nothing", "Reply", 
							["NotSubSubSelected", "I’m sorry that happened", "Reply"]
						]
				]
			],
			["NotSelected", "(V1 Slur) what’s that ", "Reply"],
			["NotSelected", "Say nothing", "Reply"]
		]
	],
	["NotCompleted",
		[]
	]
]



