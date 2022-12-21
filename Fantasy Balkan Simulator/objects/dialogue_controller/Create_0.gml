/// @description Create variables

if (!variable_global_exists("dialogueTextToDraw")){global.dialogueTextToDraw = "Sample";}

array_quests = 
[
	["NotCompleted",
		["NotSelected", "Who was that?", "Reply", 
				["NotSubSelected", "(V1 Slur) what’s that", "Reply", 
						["NotSubSubSelected", "Say nothing", "Reply"]
					],
				["NotSubSelected", "Say nothing", "Reply", 
						[0, "I’m sorry that happened", "Reply"]
					]
			],
		["NotSelected", "(V1 Slur) what’s that ", "Reply"],
		["NotSelected", "Say nothing", "Reply"]
	],
	["NotCompleted",
		[]
	]
]



