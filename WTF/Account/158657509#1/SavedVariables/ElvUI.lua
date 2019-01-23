
ElvDB = {
	["profileKeys"] = {
		["Littlemm - 伊森利恩"] = "Littlemm - 伊森利恩",
		["大炮弹 - 火羽山"] = "大炮弹 - 火羽山",
		["入水海龟 - 伊森利恩"] = "入水海龟 - 伊森利恩",
		["嘴巴嘟嘟口都 - 伊森利恩"] = "嘴巴嘟嘟口都 - 伊森利恩",
		["Littlemm - 狂热之刃"] = "Littlemm - 狂热之刃",
		["抹了油的嘴嘴 - 伊森利恩"] = "抹了油的嘴嘴 - 伊森利恩",
		["小嘴嘴 - 伊莫塔尔"] = "小嘴嘴 - 伊莫塔尔",
		["入水小海龟 - 伊森利恩"] = "入水小海龟 - 伊森利恩",
	},
	["gold"] = {
		["伊莫塔尔"] = {
			["小嘴嘴"] = 49698584,
		},
		["火羽山"] = {
			["大炮弹"] = 1371229400,
		},
		["伊森利恩"] = {
			["入水海龟"] = 0,
			["Littlemm"] = 1549382686,
			["抹了油的嘴嘴"] = 81553,
			["嘴巴嘟嘟口都"] = 1641298,
			["入水小海龟"] = 18803,
		},
		["狂热之刃"] = {
			["Littlemm"] = 1314838600,
		},
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["global"] = {
		["nameplate"] = {
			["filters"] = {
				["Boss"] = {
				},
			},
		},
		["general"] = {
			["minUiScale"] = 0.49,
			["autoScale"] = false,
		},
		["uiScale"] = "1.0",
		["Ver"] = "20181214A",
		["unitframe"] = {
			["ChannelTicks"] = {
				["苦修"] = 3,
			},
		},
	},
	["profiles"] = {
		["大炮弹 - 火羽山"] = {
			["currentTutorial"] = 3,
			["movers"] = {
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1052",
			},
			["nameplates"] = {
				["cooldown"] = {
					["fonts"] = {
						["font"] = "EUI",
					},
				},
			},
			["AuraWatch"] = {
				["loadDefault"] = true,
				["myclass"] = "WARLOCK",
				["DB"] = {
					{
						["Direction"] = "RIGHT",
						["Name"] = "玩家减益",
						["List"] = {
							{
								["AuraID"] = 118,
								["UnitID"] = "player",
							}, -- [1]
						},
						["Interval"] = 10,
						["Mode"] = "ICON",
						["IconSize"] = 48,
						["Pos"] = {
							"CENTER", -- [1]
							"UIParent", -- [2]
							"CENTER", -- [3]
							-200, -- [4]
							200, -- [5]
						},
					}, -- [1]
					{
						["Direction"] = "RIGHT",
						["Name"] = "玩家重要增益",
						["List"] = {
							{
								["AuraID"] = 122355,
								["UnitID"] = "player",
							}, -- [1]
							{
								["AuraID"] = 117828,
								["UnitID"] = "player",
							}, -- [2]
							{
								["AuraID"] = 34936,
								["UnitID"] = "player",
							}, -- [3]
							{
								["AuraID"] = 108559,
								["UnitID"] = "player",
							}, -- [4]
							{
								["AuraID"] = 17941,
								["UnitID"] = "player",
							}, -- [5]
							{
								["AuraID"] = 126697,
								["UnitID"] = "player",
							}, -- [6]
							{
								["AuraID"] = 126605,
								["UnitID"] = "player",
							}, -- [7]
							{
								["AuraID"] = 126683,
								["UnitID"] = "player",
							}, -- [8]
							{
								["AuraID"] = 126705,
								["UnitID"] = "player",
							}, -- [9]
							{
								["AuraID"] = 126659,
								["UnitID"] = "player",
							}, -- [10]
							{
								["AuraID"] = 126577,
								["UnitID"] = "player",
							}, -- [11]
							{
								["AuraID"] = 104993,
								["UnitID"] = "player",
							}, -- [12]
							{
								["AuraID"] = 125487,
								["UnitID"] = "player",
							}, -- [13]
						},
						["Interval"] = 6,
						["Mode"] = "ICON",
						["IconSize"] = 42,
						["Pos"] = {
							"BOTTOMLEFT", -- [1]
							"ElvUF_Player", -- [2]
							"TOPLEFT", -- [3]
							0, -- [4]
							55, -- [5]
						},
					}, -- [2]
					{
						["Direction"] = "RIGHT",
						["Name"] = "玩家增益",
						["List"] = {
							{
								["AuraID"] = 74434,
								["UnitID"] = "player",
							}, -- [1]
							{
								["AuraID"] = 113861,
								["UnitID"] = "player",
							}, -- [2]
							{
								["AuraID"] = 113860,
								["UnitID"] = "player",
							}, -- [3]
							{
								["AuraID"] = 113858,
								["UnitID"] = "player",
							}, -- [4]
							{
								["AuraID"] = 104773,
								["UnitID"] = "player",
							}, -- [5]
							{
								["AuraID"] = 111397,
								["UnitID"] = "target",
							}, -- [6]
							{
								["AuraID"] = 110913,
								["UnitID"] = "player",
							}, -- [7]
							{
								["AuraID"] = 6229,
								["UnitID"] = "player",
							}, -- [8]
							{
								["AuraID"] = 86211,
								["UnitID"] = "player",
							}, -- [9]
							{
								["AuraID"] = 137587,
								["UnitID"] = "player",
							}, -- [10]
							{
								["AuraID"] = 111400,
								["UnitID"] = "player",
							}, -- [11]
							{
								["AuraID"] = 111397,
								["UnitID"] = "player",
							}, -- [12]
						},
						["Interval"] = 6,
						["Mode"] = "ICON",
						["IconSize"] = 42,
						["Pos"] = {
							"BOTTOMLEFT", -- [1]
							"ElvUF_Player", -- [2]
							"TOPLEFT", -- [3]
							0, -- [4]
							12, -- [5]
						},
					}, -- [3]
					{
						["Direction"] = "RIGHT",
						["Name"] = "目标减益",
						["List"] = {
							{
								["AuraID"] = 1490,
								["UnitID"] = "target",
								["Caster"] = "all",
							}, -- [1]
							{
								["AuraID"] = 18223,
								["UnitID"] = "target",
								["Caster"] = "all",
							}, -- [2]
							{
								["AuraID"] = 109466,
								["UnitID"] = "target",
								["Caster"] = "all",
							}, -- [3]
							{
								["AuraID"] = 1098,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [4]
							{
								["AuraID"] = 63311,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [5]
							{
								["AuraID"] = 93068,
								["UnitID"] = "target",
								["Caster"] = "all",
							}, -- [6]
							{
								["AuraID"] = 24844,
								["UnitID"] = "target",
								["Caster"] = "all",
							}, -- [7]
							{
								["AuraID"] = 34889,
								["UnitID"] = "target",
								["Caster"] = "all",
							}, -- [8]
							{
								["AuraID"] = 603,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [9]
							{
								["AuraID"] = 980,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [10]
							{
								["AuraID"] = 172,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [11]
							{
								["AuraID"] = 27243,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [12]
							{
								["AuraID"] = 348,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [13]
							{
								["AuraID"] = 30108,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [14]
							{
								["AuraID"] = 48181,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [15]
						},
						["Interval"] = 4,
						["Mode"] = "ICON",
						["IconSize"] = 48,
						["Pos"] = {
							"BOTTOMLEFT", -- [1]
							"ElvUF_Target", -- [2]
							"TOPLEFT", -- [3]
							0, -- [4]
							68, -- [5]
						},
					}, -- [4]
				},
			},
			["auras"] = {
				["buffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
				},
				["debuffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
				},
			},
			["chat"] = {
				["panelColor"] = {
					["a"] = 0.9,
				},
				["panelColorConverted"] = true,
			},
		},
		["入水海龟 - 伊森利恩"] = {
			["AuraWatch"] = {
				["loadDefault"] = true,
				["myclass"] = "MAGE",
				["DB"] = {
					{
						["Direction"] = "RIGHT",
						["Name"] = "玩家减益",
						["List"] = {
							{
								["AuraID"] = 118,
								["UnitID"] = "player",
							}, -- [1]
						},
						["Interval"] = 10,
						["Mode"] = "ICON",
						["IconSize"] = 48,
						["Pos"] = {
							"CENTER", -- [1]
							"UIParent", -- [2]
							"CENTER", -- [3]
							-200, -- [4]
							200, -- [5]
						},
					}, -- [1]
					{
						["Direction"] = "RIGHT",
						["Name"] = "玩家重要增益",
						["List"] = {
							{
								["AuraID"] = 44544,
								["UnitID"] = "player",
							}, -- [1]
							{
								["AuraID"] = 57761,
								["UnitID"] = "player",
							}, -- [2]
							{
								["AuraID"] = 79683,
								["UnitID"] = "player",
							}, -- [3]
							{
								["AuraID"] = 48107,
								["UnitID"] = "player",
							}, -- [4]
							{
								["AuraID"] = 48108,
								["UnitID"] = "player",
							}, -- [5]
							{
								["AuraID"] = 126697,
								["UnitID"] = "player",
							}, -- [6]
							{
								["AuraID"] = 126605,
								["UnitID"] = "player",
							}, -- [7]
							{
								["AuraID"] = 126683,
								["UnitID"] = "player",
							}, -- [8]
							{
								["AuraID"] = 126705,
								["UnitID"] = "player",
							}, -- [9]
							{
								["AuraID"] = 126659,
								["UnitID"] = "player",
							}, -- [10]
							{
								["AuraID"] = 126577,
								["UnitID"] = "player",
							}, -- [11]
							{
								["AuraID"] = 104993,
								["UnitID"] = "player",
							}, -- [12]
							{
								["AuraID"] = 125487,
								["UnitID"] = "player",
							}, -- [13]
							{
								["AuraID"] = 205473,
								["UnitID"] = "player",
							}, -- [14]
						},
						["Interval"] = 6,
						["Mode"] = "ICON",
						["IconSize"] = 42,
						["Pos"] = {
							"BOTTOMLEFT", -- [1]
							"ElvUF_Player", -- [2]
							"TOPLEFT", -- [3]
							0, -- [4]
							55, -- [5]
						},
					}, -- [2]
					{
						["Direction"] = "RIGHT",
						["Name"] = "玩家增益",
						["List"] = {
							{
								["AuraID"] = 157913,
								["UnitID"] = "target",
							}, -- [1]
							{
								["AuraID"] = 45438,
								["UnitID"] = "target",
							}, -- [2]
							{
								["AuraID"] = 111264,
								["UnitID"] = "target",
							}, -- [3]
							{
								["AuraID"] = 32612,
								["UnitID"] = "player",
							}, -- [4]
							{
								["AuraID"] = 110960,
								["UnitID"] = "player",
							}, -- [5]
							{
								["AuraID"] = 12472,
								["UnitID"] = "player",
							}, -- [6]
							{
								["AuraID"] = 1463,
								["UnitID"] = "player",
							}, -- [7]
							{
								["AuraID"] = 115610,
								["UnitID"] = "player",
							}, -- [8]
							{
								["AuraID"] = 11426,
								["UnitID"] = "player",
							}, -- [9]
							{
								["AuraID"] = 108839,
								["UnitID"] = "player",
							}, -- [10]
							{
								["AuraID"] = 12042,
								["UnitID"] = "player",
							}, -- [11]
							{
								["AuraID"] = 55342,
								["UnitID"] = "player",
							}, -- [12]
							{
								["AuraID"] = 198111,
								["UnitID"] = "player",
							}, -- [13]
							{
								["AuraID"] = 66,
								["UnitID"] = "player",
							}, -- [14]
							{
								["AuraID"] = 108839,
								["UnitID"] = "player",
							}, -- [15]
						},
						["Interval"] = 6,
						["Mode"] = "ICON",
						["IconSize"] = 42,
						["Pos"] = {
							"BOTTOMLEFT", -- [1]
							"ElvUF_Player", -- [2]
							"TOPLEFT", -- [3]
							0, -- [4]
							12, -- [5]
						},
					}, -- [3]
					{
						["Direction"] = "RIGHT",
						["Name"] = "目标减益",
						["List"] = {
							{
								["AuraID"] = 36032,
								["UnitID"] = "player",
								["Caster"] = "player",
							}, -- [1]
							{
								["AuraID"] = 31589,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [2]
							{
								["AuraID"] = 12654,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [3]
							{
								["AuraID"] = 44457,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [4]
							{
								["AuraID"] = 114923,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [5]
							{
								["AuraID"] = 11366,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [6]
							{
								["AuraID"] = 83853,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [7]
							{
								["AuraID"] = 33395,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [8]
							{
								["AuraID"] = 122,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [9]
							{
								["AuraID"] = 111340,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [10]
							{
								["AuraID"] = 120,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [11]
							{
								["AuraID"] = 44614,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [12]
						},
						["Interval"] = 4,
						["Mode"] = "ICON",
						["IconSize"] = 48,
						["Pos"] = {
							"BOTTOMLEFT", -- [1]
							"ElvUF_Target", -- [2]
							"TOPLEFT", -- [3]
							0, -- [4]
							68, -- [5]
						},
					}, -- [4]
				},
			},
			["movers"] = {
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1052",
			},
			["chat"] = {
				["panelColorConverted"] = true,
				["panelColor"] = {
					["a"] = 0.9,
				},
			},
		},
		["Littlemm - 狂热之刃"] = {
			["currentTutorial"] = 6,
			["general"] = {
				["valuecolor"] = {
					["r"] = 0.09,
					["g"] = 0.513,
					["b"] = 0.819,
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,660,450",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-2,81",
				["ElvUF_RaidMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,638,476",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,38",
				["ElvAB_4"] = "RIGHT,ElvUIParent,RIGHT,-4,0",
				["ElvAB_3"] = "BOTTOMLEFT,ElvUIParent,BOTTOM,212,4",
				["ElvAB_5"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,454,0",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1052",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,310,432",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-346,228",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,186",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,384,208",
				["PetAB"] = "RIGHT,ElvUIParent,RIGHT,-46,0",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,625,450",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-3,78",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-468,162",
			},
			["AuraWatch"] = {
				["loadDefault"] = true,
				["myclass"] = "PRIEST",
				["DB"] = {
					{
						["Direction"] = "RIGHT",
						["Name"] = "玩家减益",
						["List"] = {
							{
								["AuraID"] = 118,
								["UnitID"] = "player",
							}, -- [1]
						},
						["Interval"] = 10,
						["Mode"] = "ICON",
						["IconSize"] = 48,
						["Pos"] = {
							"CENTER", -- [1]
							"UIParent", -- [2]
							"CENTER", -- [3]
							-200, -- [4]
							200, -- [5]
						},
					}, -- [1]
					{
						["Direction"] = "RIGHT",
						["Name"] = "玩家重要增益",
						["List"] = {
							{
								["AuraID"] = 114255,
								["UnitID"] = "player",
							}, -- [1]
							{
								["AuraID"] = 87160,
								["UnitID"] = "player",
							}, -- [2]
							{
								["AuraID"] = 63735,
								["UnitID"] = "player",
							}, -- [3]
							{
								["AuraID"] = 124430,
								["UnitID"] = "player",
							}, -- [4]
							{
								["AuraID"] = 123254,
								["UnitID"] = "player",
							}, -- [5]
							{
								["AuraID"] = 81292,
								["UnitID"] = "player",
							}, -- [6]
							{
								["AuraID"] = 81661,
								["UnitID"] = "player",
							}, -- [7]
							{
								["AuraID"] = 81206,
								["UnitID"] = "player",
							}, -- [8]
							{
								["AuraID"] = 81208,
								["UnitID"] = "player",
							}, -- [9]
							{
								["AuraID"] = 81209,
								["UnitID"] = "player",
							}, -- [10]
							{
								["AuraID"] = 126697,
								["UnitID"] = "player",
							}, -- [11]
							{
								["AuraID"] = 126605,
								["UnitID"] = "player",
							}, -- [12]
							{
								["AuraID"] = 126683,
								["UnitID"] = "player",
							}, -- [13]
							{
								["AuraID"] = 126705,
								["UnitID"] = "player",
							}, -- [14]
							{
								["AuraID"] = 126659,
								["UnitID"] = "player",
							}, -- [15]
							{
								["AuraID"] = 126577,
								["UnitID"] = "player",
							}, -- [16]
							{
								["AuraID"] = 126588,
								["UnitID"] = "player",
							}, -- [17]
							{
								["AuraID"] = 104993,
								["UnitID"] = "player",
							}, -- [18]
							{
								["AuraID"] = 125487,
								["UnitID"] = "player",
							}, -- [19]
						},
						["Interval"] = 6,
						["Mode"] = "ICON",
						["IconSize"] = 42,
						["Pos"] = {
							"BOTTOMLEFT", -- [1]
							"ElvUF_Player", -- [2]
							"TOPLEFT", -- [3]
							0, -- [4]
							55, -- [5]
						},
					}, -- [2]
					{
						["Direction"] = "RIGHT",
						["Name"] = "玩家增益",
						["List"] = {
							{
								["AuraID"] = 17,
								["Caster"] = "all",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [1]
							{
								["AuraID"] = 139,
								["UnitID"] = "player",
							}, -- [2]
							{
								["AuraID"] = 47585,
								["UnitID"] = "player",
							}, -- [3]
							{
								["AuraID"] = 10060,
								["UnitID"] = "player",
							}, -- [4]
							{
								["AuraID"] = 6346,
								["UnitID"] = "player",
							}, -- [5]
							{
								["AuraID"] = 59889,
								["UnitID"] = "player",
							}, -- [6]
							{
								["AuraID"] = 81700,
								["UnitID"] = "player",
							}, -- [7]
							{
								["AuraID"] = 87153,
								["UnitID"] = "player",
							}, -- [8]
							{
								["AuraID"] = 96267,
								["UnitID"] = "player",
							}, -- [9]
							{
								["AuraID"] = 41635,
								["UnitID"] = "player",
							}, -- [10]
							{
								["AuraID"] = 586,
								["UnitID"] = "player",
							}, -- [11]
							{
								["AuraID"] = 96219,
								["UnitID"] = "player",
							}, -- [12]
						},
						["Interval"] = 6,
						["Mode"] = "ICON",
						["IconSize"] = 42,
						["Pos"] = {
							"BOTTOMLEFT", -- [1]
							"ElvUF_Player", -- [2]
							"TOPLEFT", -- [3]
							0, -- [4]
							12, -- [5]
						},
					}, -- [3]
					{
						["Direction"] = "RIGHT",
						["Name"] = "目标减益",
						["List"] = {
							{
								["AuraID"] = 87178,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [1]
							{
								["AuraID"] = 139,
								["UnitID"] = "target",
							}, -- [2]
							{
								["AuraID"] = 41635,
								["UnitID"] = "target",
							}, -- [3]
							{
								["AuraID"] = 47788,
								["UnitID"] = "target",
							}, -- [4]
							{
								["AuraID"] = 33206,
								["UnitID"] = "target",
							}, -- [5]
							{
								["AuraID"] = 77613,
								["UnitID"] = "target",
							}, -- [6]
							{
								["AuraID"] = 589,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [7]
							{
								["AuraID"] = 34914,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [8]
							{
								["AuraID"] = 2944,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [9]
						},
						["Interval"] = 4,
						["Mode"] = "ICON",
						["IconSize"] = 48,
						["Pos"] = {
							"BOTTOMLEFT", -- [1]
							"ElvUF_Target", -- [2]
							"TOPLEFT", -- [3]
							0, -- [4]
							68, -- [5]
						},
					}, -- [4]
				},
			},
			["chat"] = {
				["panelColorConverted"] = true,
				["panelColor"] = {
					["a"] = 0.9,
				},
			},
			["unitframe"] = {
				["unitframeType"] = 3,
				["colors"] = {
					["castColor"] = {
						["r"] = 0.31,
						["g"] = 0.31,
						["b"] = 0.31,
					},
				},
				["units"] = {
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["xOffset"] = -4,
							["sizeOverride"] = 16,
							["anchorPoint"] = "TOPRIGHT",
							["yOffset"] = -7,
						},
						["power"] = {
							["text_format"] = "",
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["castbar"] = {
							["enable"] = false,
						},
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:deficit]",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
						},
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["xOffset"] = 50,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["width"] = 80,
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
					},
					["raid40"] = {
						["height"] = 30,
						["healPrediction"] = true,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["growthDirection"] = "LEFT_UP",
					},
					["target"] = {
						["portrait"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["enable"] = true,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["xOffset"] = 50,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["rdebuffs"] = {
							["enable"] = false,
						},
					},
					["player"] = {
						["portrait"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["enable"] = false,
						},
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["alpha"] = 0,
					["backdrop"] = false,
					["buttons"] = 12,
				},
				["bar5"] = {
					["alpha"] = 0.15,
					["buttons"] = 12,
				},
				["bar2"] = {
					["enabled"] = true,
					["alpha"] = 0,
				},
				["bar1"] = {
					["heightMult"] = 2,
					["alpha"] = 0,
					["backdrop"] = false,
				},
				["stanceBar"] = {
					["inheritGlobalFade"] = true,
				},
				["euiabstyle"] = "High",
				["bar4"] = {
					["backdrop"] = false,
					["alpha"] = 0,
				},
			},
			["layoutSet"] = "healer",
			["nameplates"] = {
				["cooldown"] = {
					["fonts"] = {
						["font"] = "EUI",
					},
				},
			},
			["auras"] = {
				["buffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
				},
				["debuffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
				},
			},
			["RightChatPanelFaded"] = false,
		},
		["Littlemm - 伊森利恩"] = {
			["currentTutorial"] = 10,
			["general"] = {
				["valuecolor"] = {
					["r"] = 0.09,
					["g"] = 0.513,
					["b"] = 0.819,
				},
			},
			["auras"] = {
				["debuffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
				},
				["buffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
				},
			},
			["chat"] = {
				["panelColorConverted"] = true,
				["panelWidthRight"] = 400,
				["panelColor"] = {
					["a"] = 0.9,
				},
			},
			["layoutSet"] = "healer",
			["movers"] = {
				["EuiExecuteMover"] = "TOP,ElvUIParent,TOP,-166,-507",
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,660,450",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,112",
				["ElvUF_RaidMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,714,358",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,38",
				["ElvAB_4"] = "RIGHT,ElvUIParent,RIGHT,-4,0",
				["ElvAB_3"] = "BOTTOMLEFT,ElvUIParent,BOTTOM,212,4",
				["ElvAB_5"] = "BOTTOMRIGHT,ElvUIParent,BOTTOM,-212,4",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-329,319",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,1390,69",
				["TalkingHeadFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,-1,236",
				["ElvUF_FocusMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-410,-412",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["PetAB"] = "RIGHT,ElvUIParent,RIGHT,-46,0",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,526,953",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,3,227",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,186",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,309",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,725,446",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-410,259",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,275",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,529,880",
			},
			["AuraWatch"] = {
				["loadDefault"] = true,
				["myclass"] = "PRIEST",
				["DB"] = {
					{
						["Direction"] = "RIGHT",
						["Name"] = "玩家减益",
						["List"] = {
							{
								["AuraID"] = 118,
								["UnitID"] = "player",
							}, -- [1]
						},
						["Interval"] = 10,
						["Mode"] = "ICON",
						["IconSize"] = 48,
						["Pos"] = {
							"CENTER", -- [1]
							"UIParent", -- [2]
							"CENTER", -- [3]
							-200, -- [4]
							200, -- [5]
						},
					}, -- [1]
					{
						["Direction"] = "RIGHT",
						["Name"] = "玩家重要增益",
						["List"] = {
							{
								["AuraID"] = 114255,
								["UnitID"] = "player",
							}, -- [1]
							{
								["AuraID"] = 87160,
								["UnitID"] = "player",
							}, -- [2]
							{
								["AuraID"] = 63735,
								["UnitID"] = "player",
							}, -- [3]
							{
								["AuraID"] = 124430,
								["UnitID"] = "player",
							}, -- [4]
							{
								["AuraID"] = 123254,
								["UnitID"] = "player",
							}, -- [5]
							{
								["AuraID"] = 81292,
								["UnitID"] = "player",
							}, -- [6]
							{
								["AuraID"] = 81661,
								["UnitID"] = "player",
							}, -- [7]
							{
								["AuraID"] = 81206,
								["UnitID"] = "player",
							}, -- [8]
							{
								["AuraID"] = 81208,
								["UnitID"] = "player",
							}, -- [9]
							{
								["AuraID"] = 81209,
								["UnitID"] = "player",
							}, -- [10]
							{
								["AuraID"] = 126697,
								["UnitID"] = "player",
							}, -- [11]
							{
								["AuraID"] = 126605,
								["UnitID"] = "player",
							}, -- [12]
							{
								["AuraID"] = 126683,
								["UnitID"] = "player",
							}, -- [13]
							{
								["AuraID"] = 126705,
								["UnitID"] = "player",
							}, -- [14]
							{
								["AuraID"] = 126659,
								["UnitID"] = "player",
							}, -- [15]
							{
								["AuraID"] = 126577,
								["UnitID"] = "player",
							}, -- [16]
							{
								["AuraID"] = 126588,
								["UnitID"] = "player",
							}, -- [17]
							{
								["AuraID"] = 104993,
								["UnitID"] = "player",
							}, -- [18]
							{
								["AuraID"] = 125487,
								["UnitID"] = "player",
							}, -- [19]
						},
						["Interval"] = 6,
						["Mode"] = "ICON",
						["IconSize"] = 42,
						["Pos"] = {
							"BOTTOMLEFT", -- [1]
							"ElvUF_Player", -- [2]
							"TOPLEFT", -- [3]
							0, -- [4]
							55, -- [5]
						},
					}, -- [2]
					{
						["Direction"] = "RIGHT",
						["Name"] = "玩家增益",
						["List"] = {
							{
								["AuraID"] = 17,
								["filter"] = "BUFF",
								["UnitID"] = "player",
								["Caster"] = "all",
							}, -- [1]
							{
								["AuraID"] = 139,
								["UnitID"] = "player",
							}, -- [2]
							{
								["AuraID"] = 47585,
								["UnitID"] = "player",
							}, -- [3]
							{
								["AuraID"] = 10060,
								["UnitID"] = "player",
							}, -- [4]
							{
								["AuraID"] = 6346,
								["UnitID"] = "player",
							}, -- [5]
							{
								["AuraID"] = 59889,
								["UnitID"] = "player",
							}, -- [6]
							{
								["AuraID"] = 81700,
								["UnitID"] = "player",
							}, -- [7]
							{
								["AuraID"] = 87153,
								["UnitID"] = "player",
							}, -- [8]
							{
								["AuraID"] = 96267,
								["UnitID"] = "player",
							}, -- [9]
							{
								["AuraID"] = 41635,
								["UnitID"] = "player",
							}, -- [10]
							{
								["AuraID"] = 586,
								["UnitID"] = "player",
							}, -- [11]
							{
								["AuraID"] = 96219,
								["UnitID"] = "player",
							}, -- [12]
						},
						["Interval"] = 6,
						["Mode"] = "ICON",
						["IconSize"] = 42,
						["Pos"] = {
							"BOTTOMLEFT", -- [1]
							"ElvUF_Player", -- [2]
							"TOPLEFT", -- [3]
							0, -- [4]
							12, -- [5]
						},
					}, -- [3]
					{
						["Direction"] = "RIGHT",
						["Name"] = "目标减益",
						["List"] = {
							{
								["AuraID"] = 87178,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [1]
							{
								["AuraID"] = 139,
								["UnitID"] = "target",
							}, -- [2]
							{
								["AuraID"] = 41635,
								["UnitID"] = "target",
							}, -- [3]
							{
								["AuraID"] = 47788,
								["UnitID"] = "target",
							}, -- [4]
							{
								["AuraID"] = 33206,
								["UnitID"] = "target",
							}, -- [5]
							{
								["AuraID"] = 77613,
								["UnitID"] = "target",
							}, -- [6]
							{
								["AuraID"] = 589,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [7]
							{
								["AuraID"] = 34914,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [8]
							{
								["AuraID"] = 2944,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [9]
						},
						["Interval"] = 4,
						["Mode"] = "ICON",
						["IconSize"] = 48,
						["Pos"] = {
							"BOTTOMLEFT", -- [1]
							"ElvUF_Target", -- [2]
							"TOPLEFT", -- [3]
							0, -- [4]
							68, -- [5]
						},
					}, -- [4]
				},
			},
			["unitframe"] = {
				["fontSize"] = 10,
				["unitframeType"] = 3,
				["units"] = {
					["party"] = {
						["debuffs"] = {
							["xOffset"] = -4,
							["yOffset"] = -7,
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["name"] = {
							["position"] = "TOP",
							["text_format"] = "[namecolor][name:short]",
						},
						["height"] = 45,
						["buffs"] = {
							["enable"] = true,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["useBlacklist"] = false,
							["noDuration"] = false,
							["playerOnly"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["sizeOverride"] = 22,
							["xOffset"] = 50,
						},
						["horizontalSpacing"] = 9,
						["growthDirection"] = "LEFT_UP",
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
						["power"] = {
							["text_format"] = "",
						},
						["width"] = 80,
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
							["text_format"] = "[healthcolor][health:deficit]",
						},
						["verticalSpacing"] = 9,
					},
					["raid40"] = {
						["healPrediction"] = {
							["enable"] = true,
						},
						["height"] = 30,
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["portrait"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["debuffs"] = {
							["sizeOverride"] = 16,
							["enable"] = true,
							["yOffset"] = -7,
							["anchorPoint"] = "TOPRIGHT",
							["xOffset"] = -4,
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["horizontalSpacing"] = 9,
						["rdebuffs"] = {
							["enable"] = false,
						},
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["buffs"] = {
							["enable"] = true,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["useBlacklist"] = false,
							["noDuration"] = false,
							["playerOnly"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["sizeOverride"] = 22,
							["xOffset"] = 50,
						},
					},
					["player"] = {
						["castbar"] = {
							["insideInfoPanel"] = false,
							["width"] = 436,
							["height"] = 28,
						},
						["portrait"] = {
							["enable"] = false,
						},
					},
				},
				["colors"] = {
					["castColor"] = {
						["r"] = 0.31,
						["g"] = 0.31,
						["b"] = 0.31,
					},
				},
			},
			["datatexts"] = {
				["panelBackdrop"] = false,
				["battleground"] = false,
			},
			["actionbar"] = {
				["euiabstyle"] = "High",
				["bar7"] = {
					["backdrop"] = false,
				},
				["bar1"] = {
					["heightMult"] = 2,
					["backdrop"] = false,
				},
				["bar2"] = {
					["enabled"] = true,
				},
				["bar5"] = {
					["buttons"] = 12,
					["backdrop"] = false,
				},
				["bar3"] = {
					["buttons"] = 12,
					["backdrop"] = false,
				},
				["bar6"] = {
					["backdrop"] = false,
				},
				["bar4"] = {
					["backdrop"] = false,
				},
			},
			["nameplates"] = {
				["cooldown"] = {
					["fonts"] = {
						["font"] = "EUI",
					},
				},
			},
		},
		["入水小海龟 - 伊森利恩"] = {
			["currentTutorial"] = 5,
			["general"] = {
				["valuecolor"] = {
					["r"] = 0.09,
					["g"] = 0.513,
					["b"] = 0.819,
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,660,450",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-2,81",
				["ElvUF_RaidMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,660,450",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,38",
				["ElvAB_4"] = "RIGHT,ElvUIParent,RIGHT,-4,0",
				["ElvAB_3"] = "BOTTOMLEFT,ElvUIParent,BOTTOM,212,4",
				["ElvAB_5"] = "BOTTOMRIGHT,ElvUIParent,BOTTOM,-212,4",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1052",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,310,432",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,307,145",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,186",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-307,145",
				["PetAB"] = "RIGHT,ElvUIParent,RIGHT,-46,0",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,660,450",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,275",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,145",
			},
			["AuraWatch"] = {
				["loadDefault"] = true,
				["myclass"] = "MONK",
				["DB"] = {
					{
						["Direction"] = "RIGHT",
						["Name"] = "玩家减益",
						["List"] = {
							{
								["AuraID"] = 118,
								["UnitID"] = "player",
							}, -- [1]
						},
						["Interval"] = 10,
						["Mode"] = "ICON",
						["IconSize"] = 48,
						["Pos"] = {
							"CENTER", -- [1]
							"UIParent", -- [2]
							"CENTER", -- [3]
							-200, -- [4]
							200, -- [5]
						},
					}, -- [1]
					{
						["Direction"] = "RIGHT",
						["Name"] = "玩家重要增益",
						["List"] = {
							{
								["AuraID"] = 125359,
								["UnitID"] = "player",
							}, -- [1]
							{
								["AuraID"] = 116768,
								["UnitID"] = "player",
							}, -- [2]
							{
								["AuraID"] = 118864,
								["UnitID"] = "player",
							}, -- [3]
							{
								["AuraID"] = 115307,
								["UnitID"] = "player",
							}, -- [4]
							{
								["AuraID"] = 126697,
								["UnitID"] = "player",
							}, -- [5]
							{
								["AuraID"] = 126646,
								["UnitID"] = "player",
							}, -- [6]
							{
								["AuraID"] = 126533,
								["UnitID"] = "player",
							}, -- [7]
							{
								["AuraID"] = 126597,
								["UnitID"] = "player",
							}, -- [8]
							{
								["AuraID"] = 126649,
								["UnitID"] = "player",
							}, -- [9]
							{
								["AuraID"] = 126599,
								["UnitID"] = "player",
							}, -- [10]
							{
								["AuraID"] = 126554,
								["UnitID"] = "player",
							}, -- [11]
							{
								["AuraID"] = 126690,
								["UnitID"] = "player",
							}, -- [12]
							{
								["AuraID"] = 126707,
								["UnitID"] = "player",
							}, -- [13]
							{
								["AuraID"] = 126605,
								["UnitID"] = "player",
							}, -- [14]
							{
								["AuraID"] = 126683,
								["UnitID"] = "player",
							}, -- [15]
							{
								["AuraID"] = 126705,
								["UnitID"] = "player",
							}, -- [16]
							{
								["AuraID"] = 126588,
								["UnitID"] = "player",
							}, -- [17]
							{
								["AuraID"] = 116660,
								["UnitID"] = "player",
							}, -- [18]
							{
								["AuraID"] = 125489,
								["UnitID"] = "player",
							}, -- [19]
							{
								["AuraID"] = 118334,
								["UnitID"] = "player",
							}, -- [20]
							{
								["AuraID"] = 104993,
								["UnitID"] = "player",
							}, -- [21]
							{
								["AuraID"] = 125487,
								["UnitID"] = "player",
							}, -- [22]
						},
						["Interval"] = 6,
						["Mode"] = "ICON",
						["IconSize"] = 42,
						["Pos"] = {
							"BOTTOMLEFT", -- [1]
							"ElvUF_Player", -- [2]
							"TOPLEFT", -- [3]
							0, -- [4]
							55, -- [5]
						},
					}, -- [2]
					{
						["Direction"] = "RIGHT",
						["Name"] = "玩家增益",
						["List"] = {
							{
								["AuraID"] = 120954,
								["UnitID"] = "player",
							}, -- [1]
							{
								["AuraID"] = 115288,
								["UnitID"] = "player",
							}, -- [2]
							{
								["AuraID"] = 115308,
								["UnitID"] = "player",
							}, -- [3]
							{
								["AuraID"] = 116740,
								["UnitID"] = "player",
							}, -- [4]
							{
								["AuraID"] = 125174,
								["UnitID"] = "player",
							}, -- [5]
							{
								["AuraID"] = 115213,
								["UnitID"] = "player",
							}, -- [6]
							{
								["AuraID"] = 122783,
								["UnitID"] = "player",
							}, -- [7]
							{
								["AuraID"] = 119085,
								["UnitID"] = "player",
							}, -- [8]
						},
						["Interval"] = 6,
						["Mode"] = "ICON",
						["IconSize"] = 42,
						["Pos"] = {
							"BOTTOMLEFT", -- [1]
							"ElvUF_Player", -- [2]
							"TOPLEFT", -- [3]
							0, -- [4]
							12, -- [5]
						},
					}, -- [3]
					{
						["Direction"] = "RIGHT",
						["Name"] = "目标减益",
						["List"] = {
							{
								["AuraID"] = 123725,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [1]
							{
								["AuraID"] = 116330,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [2]
						},
						["Interval"] = 4,
						["Mode"] = "ICON",
						["IconSize"] = 48,
						["Pos"] = {
							"BOTTOMLEFT", -- [1]
							"ElvUF_Target", -- [2]
							"TOPLEFT", -- [3]
							0, -- [4]
							68, -- [5]
						},
					}, -- [4]
				},
			},
			["chat"] = {
				["panelColorConverted"] = true,
				["panelColor"] = {
					["a"] = 0.9,
				},
			},
			["unitframe"] = {
				["unitframeType"] = 3,
				["colors"] = {
					["castColor"] = {
						["r"] = 0.31,
						["g"] = 0.31,
						["b"] = 0.31,
					},
				},
				["units"] = {
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["xOffset"] = -4,
							["sizeOverride"] = 16,
							["anchorPoint"] = "TOPRIGHT",
							["yOffset"] = -7,
						},
						["power"] = {
							["text_format"] = "",
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["growthDirection"] = "LEFT_UP",
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["width"] = 80,
						["height"] = 45,
						["verticalSpacing"] = 9,
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:deficit]",
							["position"] = "BOTTOM",
						},
					},
					["raid40"] = {
						["height"] = 30,
						["healPrediction"] = {
							["enable"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["growthDirection"] = "LEFT_UP",
					},
					["target"] = {
						["portrait"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["enable"] = true,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
						},
						["rdebuffs"] = {
							["enable"] = false,
						},
						["verticalSpacing"] = 9,
					},
					["player"] = {
						["portrait"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["height"] = 28,
							["insideInfoPanel"] = false,
							["width"] = 436,
						},
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["bar2"] = {
					["enabled"] = true,
				},
				["bar1"] = {
					["heightMult"] = 2,
				},
				["euiabstyle"] = "High",
				["bar5"] = {
					["buttons"] = 12,
				},
			},
			["layoutSet"] = "healer",
			["RightChatPanelFaded"] = false,
		},
		["嘴巴嘟嘟口都 - 伊森利恩"] = {
			["currentTutorial"] = 5,
			["general"] = {
				["valuecolor"] = {
					["b"] = 0.819,
					["g"] = 0.513,
					["r"] = 0.09,
				},
			},
			["movers"] = {
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,76",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1052",
				["PetAB"] = "RIGHT,ElvUIParent,RIGHT,-46,0",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,38",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,158",
				["ElvAB_4"] = "RIGHT,ElvUIParent,RIGHT,-4,0",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,115",
				["ElvAB_3"] = "BOTTOMLEFT,ElvUIParent,BOTTOM,212,4",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvAB_5"] = "BOTTOMRIGHT,ElvUIParent,BOTTOM,-212,4",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-312,219",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,307,76",
			},
			["AuraWatch"] = {
				["loadDefault"] = true,
				["myclass"] = "DEATHKNIGHT",
				["DB"] = {
					{
						["Direction"] = "RIGHT",
						["Name"] = "玩家减益",
						["List"] = {
							{
								["AuraID"] = 118,
								["UnitID"] = "player",
							}, -- [1]
						},
						["Interval"] = 10,
						["Mode"] = "ICON",
						["IconSize"] = 48,
						["Pos"] = {
							"CENTER", -- [1]
							"UIParent", -- [2]
							"CENTER", -- [3]
							-200, -- [4]
							200, -- [5]
						},
					}, -- [1]
					{
						["Direction"] = "RIGHT",
						["Name"] = "玩家重要增益",
						["List"] = {
							{
								["AuraID"] = 50421,
								["UnitID"] = "player",
							}, -- [1]
							{
								["AuraID"] = 81141,
								["UnitID"] = "player",
							}, -- [2]
							{
								["AuraID"] = 59052,
								["UnitID"] = "player",
							}, -- [3]
							{
								["AuraID"] = 51124,
								["UnitID"] = "player",
							}, -- [4]
							{
								["AuraID"] = 81340,
								["UnitID"] = "player",
							}, -- [5]
							{
								["AuraID"] = 53365,
								["UnitID"] = "player",
							}, -- [6]
							{
								["AuraID"] = 63560,
								["UnitID"] = "pet",
							}, -- [7]
							{
								["AuraID"] = 126697,
								["UnitID"] = "player",
							}, -- [8]
							{
								["AuraID"] = 126646,
								["UnitID"] = "player",
							}, -- [9]
							{
								["AuraID"] = 126533,
								["UnitID"] = "player",
							}, -- [10]
							{
								["AuraID"] = 126597,
								["UnitID"] = "player",
							}, -- [11]
							{
								["AuraID"] = 126657,
								["UnitID"] = "player",
							}, -- [12]
							{
								["AuraID"] = 126657,
								["UnitID"] = "player",
							}, -- [13]
							{
								["AuraID"] = 126599,
								["UnitID"] = "player",
							}, -- [14]
							{
								["AuraID"] = 126679,
								["UnitID"] = "player",
							}, -- [15]
							{
								["AuraID"] = 126700,
								["UnitID"] = "player",
							}, -- [16]
							{
								["AuraID"] = 116660,
								["UnitID"] = "player",
							}, -- [17]
							{
								["AuraID"] = 125489,
								["UnitID"] = "player",
							}, -- [18]
							{
								["AuraID"] = 118335,
								["UnitID"] = "player",
							}, -- [19]
						},
						["Interval"] = 6,
						["Mode"] = "ICON",
						["IconSize"] = 42,
						["Pos"] = {
							"BOTTOMLEFT", -- [1]
							"ElvUF_Player", -- [2]
							"TOPLEFT", -- [3]
							0, -- [4]
							55, -- [5]
						},
					}, -- [2]
					{
						["Direction"] = "RIGHT",
						["Name"] = "玩家增益",
						["List"] = {
							{
								["AuraID"] = 49222,
								["UnitID"] = "player",
							}, -- [1]
							{
								["AuraID"] = 55233,
								["UnitID"] = "player",
							}, -- [2]
							{
								["AuraID"] = 48792,
								["UnitID"] = "player",
							}, -- [3]
							{
								["AuraID"] = 48707,
								["UnitID"] = "player",
							}, -- [4]
							{
								["AuraID"] = 49028,
								["UnitID"] = "player",
							}, -- [5]
							{
								["AuraID"] = 49039,
								["UnitID"] = "player",
							}, -- [6]
							{
								["AuraID"] = 51271,
								["UnitID"] = "player",
							}, -- [7]
							{
								["AuraID"] = 96268,
								["UnitID"] = "player",
							}, -- [8]
							{
								["AuraID"] = 115989,
								["UnitID"] = "player",
							}, -- [9]
						},
						["Interval"] = 6,
						["Mode"] = "ICON",
						["IconSize"] = 42,
						["Pos"] = {
							"BOTTOMLEFT", -- [1]
							"ElvUF_Player", -- [2]
							"TOPLEFT", -- [3]
							0, -- [4]
							12, -- [5]
						},
					}, -- [3]
					{
						["Direction"] = "RIGHT",
						["Name"] = "目标减益",
						["List"] = {
							{
								["AuraID"] = 55095,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [1]
							{
								["AuraID"] = 55078,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [2]
							{
								["AuraID"] = 155159,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [3]
						},
						["Interval"] = 4,
						["Mode"] = "ICON",
						["IconSize"] = 48,
						["Pos"] = {
							"BOTTOMLEFT", -- [1]
							"ElvUF_Target", -- [2]
							"TOPLEFT", -- [3]
							0, -- [4]
							68, -- [5]
						},
					}, -- [4]
				},
			},
			["chat"] = {
				["panelColorConverted"] = true,
				["panelColor"] = {
					["a"] = 0.9,
				},
			},
			["unitframe"] = {
				["colors"] = {
					["castColor"] = {
						["b"] = 0.31,
						["g"] = 0.31,
						["r"] = 0.31,
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["backdrop"] = false,
					["buttons"] = 12,
				},
				["bar6"] = {
					["backdrop"] = false,
				},
				["bar2"] = {
					["enabled"] = true,
				},
				["bar1"] = {
					["heightMult"] = 2,
					["backdrop"] = false,
				},
				["bar8"] = {
					["backdrop"] = false,
				},
				["bar5"] = {
					["backdrop"] = false,
					["buttons"] = 12,
				},
				["bar7"] = {
					["backdrop"] = false,
				},
				["bar9"] = {
					["backdrop"] = false,
				},
				["euiabstyle"] = "High",
				["bar4"] = {
					["backdrop"] = false,
				},
			},
			["layoutSet"] = "tank",
			["RightChatPanelFaded"] = false,
		},
		["Minimalistic"] = {
			["currentTutorial"] = 2,
			["general"] = {
				["font"] = "Expressway",
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.80000001192093,
					["r"] = 0.058823529411765,
					["g"] = 0.058823529411765,
					["b"] = 0.058823529411765,
				},
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["textFormat"] = "PERCENT",
					["height"] = 16,
					["width"] = 200,
				},
				["bordercolor"] = {
					["r"] = 0.30588235294118,
					["g"] = 0.30588235294118,
					["b"] = 0.30588235294118,
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["fontSize"] = 11,
			},
			["movers"] = {
				["PetAB"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-428",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,51,120",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,50",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,250,-50",
				["BossButton"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-117,-298",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,249,-216",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,827",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-52",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,51,-87",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,143",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,392,1073",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,50",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,90",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-394",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-186",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,305,50",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-305,50",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-50",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,230,140",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-393",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,232",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,1150",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,133",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,184,773",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-488,330",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,995",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-230,140",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,463,50",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,200",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-50",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-228",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,51,937",
			},
			["bags"] = {
				["itemLevelFontSize"] = 9,
				["countFontSize"] = 9,
			},
			["hideTutorial"] = true,
			["auras"] = {
				["font"] = "Expressway",
				["buffs"] = {
					["countFontSize"] = 11,
					["maxWraps"] = 2,
					["durationFontSize"] = 11,
				},
				["debuffs"] = {
					["countFontSize"] = 11,
					["durationFontSize"] = 11,
				},
			},
			["unitframe"] = {
				["statusbar"] = "ElvUI Blank",
				["fontOutline"] = "THICKOUTLINE",
				["smoothbars"] = true,
				["font"] = "Expressway",
				["fontSize"] = 9,
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettarget"] = {
						["infoPanel"] = {
							["enable"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -2,
							["position"] = "TOP",
						},
						["height"] = 50,
						["width"] = 122,
					},
					["pet"] = {
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 14,
						},
						["debuffs"] = {
							["enable"] = true,
						},
						["threatStyle"] = "NONE",
						["castbar"] = {
							["width"] = 122,
						},
						["height"] = 50,
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["width"] = 122,
					},
					["player"] = {
						["debuffs"] = {
							["perrow"] = 7,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
						["combatfade"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
						["height"] = 80,
						["castbar"] = {
							["iconAttached"] = false,
							["iconSize"] = 54,
							["height"] = 35,
							["width"] = 478,
						},
						["classbar"] = {
							["height"] = 15,
							["autoHide"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
					},
					["party"] = {
						["horizontalSpacing"] = 3,
						["debuffs"] = {
							["numrows"] = 4,
							["anchorPoint"] = "BOTTOM",
							["perrow"] = 1,
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 5,
						},
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["growthDirection"] = "RIGHT_DOWN",
						["infoPanel"] = {
							["enable"] = true,
						},
						["roleIcon"] = {
							["position"] = "TOPRIGHT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["orientation"] = "VERTICAL",
							["text_format"] = "[healthcolor][health:current]",
							["position"] = "RIGHT",
						},
						["healPrediction"] = true,
						["height"] = 59,
						["verticalSpacing"] = 0,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name:short]",
							["position"] = "LEFT",
						},
						["width"] = 110,
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 17,
							["enable"] = true,
						},
						["threatStyle"] = "NONE",
						["castbar"] = {
							["iconSize"] = 26,
							["width"] = 122,
						},
						["height"] = 56,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "LEFT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current]",
						},
						["width"] = 189,
					},
					["assist"] = {
						["enable"] = false,
					},
					["arena"] = {
						["castbar"] = {
							["width"] = 246,
						},
						["spacing"] = 26,
					},
					["raid"] = {
						["roleIcon"] = {
							["position"] = "RIGHT",
						},
						["debuffs"] = {
							["enable"] = true,
							["sizeOverride"] = 27,
							["perrow"] = 4,
						},
						["rdebuffs"] = {
							["enable"] = false,
							["font"] = "Expressway",
						},
						["growthDirection"] = "UP_RIGHT",
						["health"] = {
							["yOffset"] = -6,
						},
						["width"] = 140,
						["height"] = 28,
						["name"] = {
							["position"] = "LEFT",
						},
						["visibility"] = "[nogroup] hide;show",
						["groupsPerRowCol"] = 5,
					},
					["target"] = {
						["debuffs"] = {
							["perrow"] = 7,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["hideonnpc"] = false,
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
						["castbar"] = {
							["iconSize"] = 54,
							["iconAttached"] = false,
						},
						["height"] = 80,
						["buffs"] = {
							["perrow"] = 7,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 11,
				["leftChatPanel"] = false,
				["goldFormat"] = "SHORT",
				["panelTransparency"] = true,
				["font"] = "Expressway",
				["panels"] = {
					["BottomMiniPanel"] = "Time",
					["RightMiniPanel"] = "",
					["RightChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
					["LeftMiniPanel"] = "",
					["LeftChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
					["buttonsPerRow"] = 3,
				},
				["fontSize"] = 9,
				["bar2"] = {
					["enabled"] = true,
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
				},
				["bar1"] = {
					["heightMult"] = 2,
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
				},
				["bar5"] = {
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
					["buttonsPerRow"] = 3,
				},
				["globalFadeAlpha"] = 0.87,
				["stanceBar"] = {
					["inheritGlobalFade"] = true,
				},
				["bar6"] = {
					["buttonsize"] = 38,
				},
				["bar4"] = {
					["enabled"] = false,
					["backdrop"] = false,
					["buttonsize"] = 38,
				},
			},
			["layoutSet"] = "dpsMelee",
			["chat"] = {
				["chatHistory"] = false,
				["fontSize"] = 11,
				["tabFont"] = "Expressway",
				["tabFontSize"] = 11,
				["fadeUndockedTabs"] = false,
				["editBoxPosition"] = "ABOVE_CHAT",
				["fadeTabsNoBackdrop"] = false,
				["font"] = "Expressway",
				["panelBackdrop"] = "HIDEBOTH",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["font"] = "Expressway",
				["healthBar"] = {
					["font"] = "Expressway",
				},
				["smallTextFontSize"] = 11,
				["fontSize"] = 11,
				["headerFontSize"] = 11,
			},
			["nameplates"] = {
				["filters"] = {
				},
			},
		},
		["小嘴嘴 - 伊莫塔尔"] = {
			["currentTutorial"] = 1,
			["general"] = {
				["valuecolor"] = {
					["r"] = 0.09,
					["g"] = 0.513,
					["b"] = 0.819,
				},
			},
			["movers"] = {
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,307,76",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1052",
				["PetAB"] = "RIGHT,ElvUIParent,RIGHT,-46,0",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,38",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,115",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvAB_4"] = "RIGHT,ElvUIParent,RIGHT,-4,0",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-307,76",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,158",
				["ElvAB_3"] = "BOTTOMLEFT,ElvUIParent,BOTTOM,212,4",
				["ElvAB_5"] = "BOTTOMRIGHT,ElvUIParent,BOTTOM,-212,4",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,76",
			},
			["AuraWatch"] = {
				["loadDefault"] = true,
				["myclass"] = "DEMONHUNTER",
				["DB"] = {
					{
						["Interval"] = 6,
						["Direction"] = "RIGHT",
						["Name"] = "玩家增益",
						["List"] = {
							{
								["AuraID"] = 187827,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [1]
							{
								["AuraID"] = 218256,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [2]
							{
								["AuraID"] = 196718,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [3]
							{
								["AuraID"] = 178470,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [4]
							{
								["AuraID"] = 203720,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [5]
							{
								["AuraID"] = 227225,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [6]
							{
								["AuraID"] = 196555,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [7]
							{
								["AuraID"] = 207810,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [8]
						},
						["IconSize"] = 42,
						["Mode"] = "ICON",
						["Alpha"] = 1,
						["Pos"] = {
							"BOTTOMLEFT", -- [1]
							"ElvUF_Player", -- [2]
							"TOPLEFT", -- [3]
							0, -- [4]
							12, -- [5]
						},
					}, -- [1]
					{
						["Interval"] = 6,
						["Direction"] = "RIGHT",
						["Name"] = "玩家重要增益",
						["List"] = {
							{
								["AuraID"] = 203981,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [1]
							{
								["AuraID"] = 212988,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [2]
							{
								["AuraID"] = 208628,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [3]
							{
								["AuraID"] = 162919,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [4]
							{
								["AuraID"] = 162913,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [5]
							{
								["AuraID"] = 162915,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [6]
							{
								["AuraID"] = 162917,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [7]
							{
								["AuraID"] = 60233,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [8]
							{
								["AuraID"] = 127967,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [9]
							{
								["AuraID"] = 127926,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [10]
							{
								["AuraID"] = 127924,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [11]
							{
								["AuraID"] = 127914,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [12]
							{
								["AuraID"] = 201408,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [13]
							{
								["AuraID"] = 201410,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [14]
							{
								["AuraID"] = 181706,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [15]
							{
								["AuraID"] = 182060,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [16]
							{
								["AuraID"] = 177102,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [17]
							{
								["AuraID"] = 177056,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [18]
							{
								["AuraID"] = 177053,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [19]
							{
								["AuraID"] = 176937,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [20]
							{
								["AuraID"] = 176460,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [21]
							{
								["AuraID"] = 176876,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [22]
							{
								["AuraID"] = 176982,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [23]
							{
								["AuraID"] = 176873,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [24]
							{
								["AuraID"] = 183931,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [25]
							{
								["AuraID"] = 165534,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [26]
							{
								["AuraID"] = 184770,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [27]
							{
								["AuraID"] = 165824,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [28]
							{
								["AuraID"] = 176878,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [29]
							{
								["AuraID"] = 176984,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [30]
							{
								["AuraID"] = 176939,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [31]
							{
								["AuraID"] = 177067,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [32]
							{
								["AuraID"] = 177597,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [33]
							{
								["AuraID"] = 177035,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [34]
							{
								["AuraID"] = 177038,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [35]
							{
								["AuraID"] = 165542,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [36]
							{
								["AuraID"] = 165485,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [37]
							{
								["AuraID"] = 183926,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [38]
							{
								["AuraID"] = 184270,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [39]
							{
								["AuraID"] = 184293,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [40]
							{
								["AuraID"] = 165822,
								["Caster"] = "player",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [41]
							{
								["AuraID"] = 159679,
								["Caster"] = "all",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [42]
							{
								["AuraID"] = 173322,
								["Caster"] = "all",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [43]
							{
								["AuraID"] = 159678,
								["Caster"] = "all",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [44]
							{
								["AuraID"] = 159676,
								["Caster"] = "all",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [45]
							{
								["AuraID"] = 159234,
								["Caster"] = "all",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [46]
							{
								["AuraID"] = 159675,
								["Caster"] = "all",
								["UnitID"] = "player",
								["filter"] = "BUFF",
							}, -- [47]
						},
						["IconSize"] = 42,
						["Mode"] = "ICON",
						["Alpha"] = 1,
						["Pos"] = {
							"BOTTOMLEFT", -- [1]
							"ElvUF_Player", -- [2]
							"TOPLEFT", -- [3]
							0, -- [4]
							55, -- [5]
						},
					}, -- [2]
					{
						["Interval"] = 4,
						["Direction"] = "RIGHT",
						["Name"] = "目标减益",
						["List"] = {
							{
								["AuraID"] = 204598,
								["Caster"] = "player",
								["UnitID"] = "target",
								["filter"] = "DEBUFF",
							}, -- [1]
							{
								["AuraID"] = 204490,
								["Caster"] = "player",
								["UnitID"] = "target",
								["filter"] = "DEBUFF",
							}, -- [2]
							{
								["AuraID"] = 207685,
								["Caster"] = "player",
								["UnitID"] = "target",
								["filter"] = "DEBUFF",
							}, -- [3]
							{
								["AuraID"] = 204843,
								["Caster"] = "player",
								["UnitID"] = "target",
								["filter"] = "DEBUFF",
							}, -- [4]
							{
								["AuraID"] = 207744,
								["Caster"] = "player",
								["UnitID"] = "target",
								["filter"] = "DEBUFF",
							}, -- [5]
							{
								["AuraID"] = 224509,
								["Caster"] = "player",
								["UnitID"] = "target",
								["filter"] = "DEBUFF",
							}, -- [6]
							{
								["AuraID"] = 206491,
								["Caster"] = "player",
								["UnitID"] = "target",
								["filter"] = "DEBUFF",
							}, -- [7]
						},
						["IconSize"] = 48,
						["Mode"] = "ICON",
						["Alpha"] = 1,
						["Pos"] = {
							"BOTTOMLEFT", -- [1]
							"ElvUF_Target", -- [2]
							"TOPLEFT", -- [3]
							0, -- [4]
							68, -- [5]
						},
					}, -- [3]
				},
			},
			["chat"] = {
				["panelColorConverted"] = true,
				["panelColor"] = {
					["a"] = 0.9,
				},
			},
			["unitframe"] = {
				["unitframeType"] = 3,
				["colors"] = {
					["castColor"] = {
						["r"] = 0.31,
						["g"] = 0.31,
						["b"] = 0.31,
					},
				},
				["units"] = {
					["target"] = {
						["portrait"] = {
							["enable"] = false,
						},
					},
					["player"] = {
						["portrait"] = {
							["enable"] = false,
						},
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["bar2"] = {
					["enabled"] = true,
				},
				["bar1"] = {
					["heightMult"] = 2,
				},
				["euiabstyle"] = "High",
				["bar5"] = {
					["buttons"] = 12,
				},
			},
			["layoutSet"] = "dpsMelee",
			["RightChatPanelFaded"] = false,
		},
		["抹了油的嘴嘴 - 伊森利恩"] = {
			["currentTutorial"] = 4,
			["general"] = {
				["valuecolor"] = {
					["b"] = 0.819,
					["g"] = 0.513,
					["r"] = 0.09,
				},
			},
			["movers"] = {
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,110",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1052",
				["PetAB"] = "RIGHT,ElvUIParent,RIGHT,-46,0",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,38",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-307,110",
				["ElvAB_3"] = "BOTTOMLEFT,ElvUIParent,BOTTOM,212,4",
				["ElvAB_4"] = "RIGHT,ElvUIParent,RIGHT,-4,0",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,150",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,195",
				["ElvAB_5"] = "BOTTOMRIGHT,ElvUIParent,BOTTOM,-212,4",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-2,47",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,307,110",
			},
			["AuraWatch"] = {
				["loadDefault"] = true,
				["myclass"] = "HUNTER",
				["DB"] = {
					{
						["Direction"] = "RIGHT",
						["Name"] = "玩家减益",
						["List"] = {
							{
								["AuraID"] = 118,
								["UnitID"] = "player",
							}, -- [1]
						},
						["Interval"] = 10,
						["Mode"] = "ICON",
						["IconSize"] = 48,
						["Pos"] = {
							"CENTER", -- [1]
							"UIParent", -- [2]
							"CENTER", -- [3]
							-200, -- [4]
							200, -- [5]
						},
					}, -- [1]
					{
						["Direction"] = "RIGHT",
						["Name"] = "玩家重要增益",
						["List"] = {
							{
								["AuraID"] = 82925,
								["UnitID"] = "player",
							}, -- [1]
							{
								["AuraID"] = 82926,
								["UnitID"] = "player",
							}, -- [2]
							{
								["AuraID"] = 53220,
								["UnitID"] = "player",
							}, -- [3]
							{
								["AuraID"] = 56453,
								["UnitID"] = "player",
							}, -- [4]
							{
								["AuraID"] = 34720,
								["UnitID"] = "player",
							}, -- [5]
							{
								["AuraID"] = 19623,
								["UnitID"] = "player",
							}, -- [6]
							{
								["AuraID"] = 136,
								["UnitID"] = "pet",
							}, -- [7]
							{
								["AuraID"] = 126697,
								["UnitID"] = "player",
							}, -- [8]
							{
								["AuraID"] = 126649,
								["UnitID"] = "player",
							}, -- [9]
							{
								["AuraID"] = 126599,
								["UnitID"] = "player",
							}, -- [10]
							{
								["AuraID"] = 126554,
								["UnitID"] = "player",
							}, -- [11]
							{
								["AuraID"] = 126690,
								["UnitID"] = "player",
							}, -- [12]
							{
								["AuraID"] = 126707,
								["UnitID"] = "player",
							}, -- [13]
							{
								["AuraID"] = 125489,
								["UnitID"] = "player",
							}, -- [14]
							{
								["AuraID"] = 109092,
								["UnitID"] = "player",
							}, -- [15]
							{
								["AuraID"] = 109085,
								["UnitID"] = "player",
							}, -- [16]
						},
						["Interval"] = 6,
						["Mode"] = "ICON",
						["IconSize"] = 42,
						["Pos"] = {
							"BOTTOMLEFT", -- [1]
							"ElvUF_Player", -- [2]
							"TOPLEFT", -- [3]
							0, -- [4]
							55, -- [5]
						},
					}, -- [2]
					{
						["Direction"] = "RIGHT",
						["Name"] = "玩家增益",
						["List"] = {
							{
								["AuraID"] = 19263,
								["UnitID"] = "player",
							}, -- [1]
							{
								["AuraID"] = 3045,
								["UnitID"] = "player",
							}, -- [2]
							{
								["AuraID"] = 34471,
								["UnitID"] = "player",
							}, -- [3]
							{
								["AuraID"] = 82692,
								["UnitID"] = "player",
							}, -- [4]
							{
								["AuraID"] = 90361,
								["UnitID"] = "player",
							}, -- [5]
						},
						["Interval"] = 6,
						["Mode"] = "ICON",
						["IconSize"] = 42,
						["Pos"] = {
							"BOTTOMLEFT", -- [1]
							"ElvUF_Player", -- [2]
							"TOPLEFT", -- [3]
							0, -- [4]
							12, -- [5]
						},
					}, -- [3]
					{
						["Direction"] = "RIGHT",
						["Name"] = "目标减益",
						["List"] = {
							{
								["AuraID"] = 1130,
								["UnitID"] = "target",
								["Caster"] = "all",
							}, -- [1]
							{
								["AuraID"] = 1978,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [2]
							{
								["AuraID"] = 3674,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [3]
							{
								["AuraID"] = 53301,
								["UnitID"] = "target",
								["Caster"] = "player",
							}, -- [4]
						},
						["Interval"] = 4,
						["Mode"] = "ICON",
						["IconSize"] = 48,
						["Pos"] = {
							"BOTTOMLEFT", -- [1]
							"ElvUF_Target", -- [2]
							"TOPLEFT", -- [3]
							0, -- [4]
							68, -- [5]
						},
					}, -- [4]
				},
			},
			["chat"] = {
				["panelColorConverted"] = true,
				["panelColor"] = {
					["a"] = 0.9,
				},
			},
			["unitframe"] = {
				["unitframeType"] = 3,
				["colors"] = {
					["castColor"] = {
						["b"] = 0.31,
						["g"] = 0.31,
						["r"] = 0.31,
					},
				},
				["units"] = {
					["target"] = {
						["portrait"] = {
							["enable"] = false,
						},
					},
					["player"] = {
						["portrait"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["height"] = 28,
							["insideInfoPanel"] = false,
							["width"] = 436,
						},
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["bar2"] = {
					["enabled"] = true,
				},
				["bar1"] = {
					["heightMult"] = 2,
				},
				["euiabstyle"] = "High",
				["bar5"] = {
					["buttons"] = 12,
				},
			},
			["layoutSet"] = "dpsMelee",
			["nameplates"] = {
				["cooldown"] = {
					["fonts"] = {
						["font"] = "EUI",
					},
				},
			},
			["auras"] = {
				["debuffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
				},
				["buffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
				},
			},
			["RightChatPanelFaded"] = false,
		},
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Littlemm - 伊森利恩"] = "Littlemm - 伊森利恩",
		["大炮弹 - 火羽山"] = "大炮弹 - 火羽山",
		["入水海龟 - 伊森利恩"] = "入水海龟 - 伊森利恩",
		["嘴巴嘟嘟口都 - 伊森利恩"] = "嘴巴嘟嘟口都 - 伊森利恩",
		["Littlemm - 狂热之刃"] = "Littlemm - 狂热之刃",
		["抹了油的嘴嘴 - 伊森利恩"] = "抹了油的嘴嘴 - 伊森利恩",
		["小嘴嘴 - 伊莫塔尔"] = "小嘴嘴 - 伊莫塔尔",
		["入水小海龟 - 伊森利恩"] = "入水小海龟 - 伊森利恩",
	},
	["profiles"] = {
		["Littlemm - 伊森利恩"] = {
			["theme"] = "classic",
			["install_complete"] = "10.81",
		},
		["大炮弹 - 火羽山"] = {
			["install_complete"] = "10.79",
		},
		["入水海龟 - 伊森利恩"] = {
		},
		["嘴巴嘟嘟口都 - 伊森利恩"] = {
			["theme"] = "classic",
			["install_complete"] = "10.81",
		},
		["Littlemm - 狂热之刃"] = {
			["theme"] = "classic",
			["install_complete"] = "10.79",
		},
		["抹了油的嘴嘴 - 伊森利恩"] = {
			["theme"] = "classic",
			["install_complete"] = "10.79",
		},
		["小嘴嘴 - 伊莫塔尔"] = {
			["theme"] = "classic",
			["install_complete"] = "10.81",
		},
		["入水小海龟 - 伊森利恩"] = {
			["theme"] = "classic",
			["install_complete"] = "10.81",
		},
	},
}
