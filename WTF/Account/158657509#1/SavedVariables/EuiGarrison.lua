
MasterPlanAG = {
	["伊莫塔尔"] = {
		["小嘴嘴"] = {
			["class"] = "DEMONHUNTER",
			["faction"] = "Horde",
		},
	},
	["伊森利恩"] = {
		["Littlemm"] = {
			["class"] = "PRIEST",
			["summary"] = {
				["ti1"] = 118531,
				["ti3"] = 127855,
				["tt3"] = true,
				["tt1"] = true,
			},
			["faction"] = "Horde",
		},
	},
	["狂热之刃"] = {
		["Littlemm"] = {
			["class"] = "PRIEST",
			["summary"] = {
				["tt3"] = true,
				["ti3"] = 127855,
			},
			["faction"] = "Horde",
		},
	},
}
SV_GarrisonMissionManager = {
}
IPMDB = {
	["profiles"] = {
		["Littlemm-伊森利恩"] = {
			{
				["description"] = "",
				["cost"] = 20,
				["isZoneSupport"] = false,
				["locPrefix"] = "GarrMissionLocation-SilverpineForest",
				["followers"] = {
					"0x0000000005528CF1", -- [1]
					"0x0000000005528CEB", -- [2]
					"0x000000000619ED02", -- [3]
				},
				["inProgress"] = true,
				["overmaxRewards"] = {
					{
						["title"] = "货币奖励",
						["quantity"] = 200,
						["icon"] = 2065624,
						["currencyID"] = 1553,
					}, -- [1]
				},
				["hasBonusEffect"] = true,
				["missionEndTime"] = 1547910469,
				["isMaxLevel"] = true,
				["name"] = "影牙瘟疫",
				["canStart"] = false,
				["typeAtlas"] = "BfAMission-Icon-Normal",
				["successChance"] = 200,
				["followerTypeID"] = 22,
				["offeredGarrMissionTextureID"] = 0,
				["durationSeconds"] = 14400,
				["completed"] = false,
				["missionID"] = 1932,
				["duration"] = "4小时",
				["offerTimeRemaining"] = "0秒",
				["charText"] = "|cffffffffLittlemm|r-伊森利恩",
				["timeLeft"] = "4小时",
				["iLevel"] = 800,
				["mapPosY"] = 0,
				["type"] = "",
				["followerInfo"] = {
					["0x000000000619ED02"] = {
						["displayHeight"] = 0.5,
						["followerTypeID"] = 22,
						["iLevel"] = 1,
						["scale"] = 0.600000023841858,
						["classAtlas"] = "GarrMission_ClassIcon-Horde",
						["isTroop"] = true,
						["displayIDs"] = {
							{
								["followerPageScale"] = 1.10000002384186,
								["showWeapon"] = true,
								["id"] = 63955,
							}, -- [1]
							{
								["followerPageScale"] = 1.10000002384186,
								["showWeapon"] = true,
								["id"] = 87411,
							}, -- [2]
						},
						["displayScale"] = 1,
						["status"] = "正在执行任务",
						["level"] = 120,
						["quality"] = 2,
						["portraitIconID"] = 1984911,
						["isFavorite"] = false,
						["abilities"] = {
							1084, -- [1]
							1139, -- [2]
						},
						["maxDurability"] = 2,
						["durability"] = 1,
						["xp"] = 0,
						["className"] = "部落部队",
						["classSpec"] = 194,
						["isMaxLevel"] = true,
						["name"] = "碎手特派员",
						["followerID"] = "0x000000000619ED02",
						["height"] = 1.29999995231628,
						["levelXP"] = 1000,
						["isCollected"] = true,
						["garrFollowerID"] = 1067,
					},
					["0x0000000005528CEB"] = {
						["displayHeight"] = 0.5,
						["followerTypeID"] = 22,
						["iLevel"] = 800,
						["scale"] = 0.699999988079071,
						["classAtlas"] = "GarrMission_ClassIcon-Technician",
						["isTroop"] = false,
						["displayIDs"] = {
							{
								["followerPageScale"] = 1,
								["showWeapon"] = true,
								["id"] = 67624,
							}, -- [1]
						},
						["displayScale"] = 1.10000002384186,
						["status"] = "正在执行任务",
						["level"] = 120,
						["quality"] = 4,
						["portraitIconID"] = 2395693,
						["isFavorite"] = false,
						["abilities"] = {
							1042, -- [1]
							1099, -- [2]
							1100, -- [3]
							1101, -- [4]
						},
						["xp"] = 5059,
						["className"] = "工程师",
						["classSpec"] = 183,
						["isMaxLevel"] = true,
						["name"] = "霍巴特·钩锤",
						["followerID"] = "0x0000000005528CEB",
						["height"] = 1.10000002384186,
						["levelXP"] = 30000,
						["isCollected"] = true,
						["garrFollowerID"] = 1068,
					},
					["0x0000000005528CF1"] = {
						["displayHeight"] = 0.5,
						["followerTypeID"] = 22,
						["iLevel"] = 800,
						["scale"] = 0.699999988079071,
						["classAtlas"] = "GarrMission_ClassIcon-Hunter-Marksmanship",
						["isTroop"] = false,
						["displayIDs"] = {
							{
								["followerPageScale"] = 1,
								["showWeapon"] = true,
								["id"] = 85790,
							}, -- [1]
						},
						["displayScale"] = 1.10000002384186,
						["status"] = "正在执行任务",
						["level"] = 120,
						["quality"] = 4,
						["portraitIconID"] = 2026473,
						["isFavorite"] = false,
						["abilities"] = {
							1043, -- [1]
							1088, -- [2]
							1089, -- [3]
							1100, -- [4]
						},
						["xp"] = 7574,
						["className"] = "暗影猎手",
						["classSpec"] = 186,
						["isMaxLevel"] = true,
						["name"] = "暗影猎手塔金",
						["followerID"] = "0x0000000005528CF1",
						["height"] = 1.25,
						["levelXP"] = 30000,
						["isCollected"] = true,
						["garrFollowerID"] = 1072,
					},
				},
				["timeLeftSeconds"] = 14400,
				["overmaxSucceeded"] = false,
				["basecost"] = 20,
				["level"] = 120,
				["numFollowers"] = 3,
				["requiredSuccessChance"] = 0,
				["areaID"] = 21,
				["rewards"] = {
					{
						["title"] = "货币奖励",
						["quantity"] = 226,
						["icon"] = 2065624,
						["currencyID"] = 1553,
					}, -- [1]
				},
				["costCurrencyTypesID"] = 1560,
				["location"] = "影牙城堡",
				["isRare"] = false,
				["mapPosX"] = 0,
				["requiredChampionCount"] = 1,
			}, -- [1]
		},
	},
	["ignores"] = {
	},
	["enableGarrisonMissions"] = true,
}
