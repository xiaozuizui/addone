local E, L, V, P, G = unpack(ElvUI); --Engine
local S = E:NewModule('InfoDB', 'AceEvent-3.0')

local pairs,tostring,maxn,concat,floor = pairs,tostring,table.maxn,table.concat,floor

local Name = UnitName('player')
local Realm = GetRealmName()
local EventToggle = false
local RegisterCombat = false
local totalTime, levelTime

local function table2json(t)  
	local function serialize(tbl)  
		local tmp = {}  
		for k, v in pairs(tbl) do  
			local k_type = type(k)  
			local v_type = type(v)  
			local key = (k_type == "string" and "\"" .. k .. "\":")  
				or (k_type == "number" and "")  
			local value = (v_type == "table" and serialize(v))  
				or (v_type == "boolean" and tostring(v))  
				or (v_type == "string" and "\"" .. v .. "\"")  
				or (v_type == "number" and v)  
			tmp[#tmp + 1] = key and value and tostring(key) .. tostring(value) or nil  
		end  
		if maxn(tbl) == 0 then  
			return "{" .. concat(tmp, ",") .. "}"  
		else  
			return "[" .. concat(tmp, ",") .. "]"  
		end  
	end  
	assert(type(t) == "table")  
	return serialize(t)  
end

local function GetTalentInfos() --获取天赋点法
    local talentInfos = {}
	local const__numTalentCols = 3 -- TODO: Get this from the API
    local k = 1
    for i = 1, GetMaxTalentTier() do
        for j = 1, const__numTalentCols do
            local talentID, name, texture, selected, available, spellid, tier, column = GetTalentInfo(i, j, GetActiveSpecGroup())
            talentInfos['t'..k] = { }
            talentInfos['t'..k].talentID = talentID
            talentInfos['t'..k].name = name
            talentInfos['t'..k].texture = texture
            talentInfos['t'..k].selected = selected
            talentInfos['t'..k].available = available
            talentInfos['t'..k].spellid = spellid
            talentInfos['t'..k].tier = tier
            talentInfos['t'..k].column = column
            k = k + 1
        end
    end
	
	local pvpIds = C_SpecializationInfo.GetAllSelectedPvpTalentIDs()
	for i = 1, #pvpIds do
		local tid, tname, _, _, _, sid = GetPvpTalentInfoByID(pvpIds[i])
		talentInfos['pvp'..i] = {
			['tid'] = tid,
			['tname'] = tname,
			['sid'] = sid
		}
	end

    return talentInfos
end

local function GetStatInfo()--获取玩家属性
	local statInfos = {}
	local _, groundSpeed = GetUnitSpeed("player")
	local level = UnitLevel("player")
	local _, effectiveArmor = UnitArmor("player");
	local base, pos, neg = UnitAttackPower("player")
	
	statInfos['Stats'] = {
		['Strength'] = UnitStat("player", 1),
		['Agility'] = UnitStat("player", 2),
		['Stamina'] = UnitStat("player", 3),
		['Intellect'] = UnitStat("player", 4),
		['CurrentSpeed'] = floor(GetUnitSpeed("player") / BASE_MOVEMENT_SPEED * 100 + 0.5),
		['GroundSpeed'] = floor(groundSpeed / BASE_MOVEMENT_SPEED * 100 + 0.5),
	}
	statInfos['Defense'] = {
		['ArmorRating'] = select(2, UnitArmor("player")),
		['ArmorReduction'] = PaperDollFrame_GetArmorReduction(effectiveArmor, level),
		['DodgeChance'] = GetDodgeChance(),
		['ParryChance'] = GetParryChance(),
		['BlockChance'] = GetBlockChance(),
		['BlockAmount'] = GetShieldBlock(),
	}
	statInfos['Enhancements'] = {
		['Mastery'] = GetMasteryEffect(),
	--	['Spirit'] = UnitStat("player", 5),
		['CriticalStrike'] = GetCritChance(),
		['Haste'] = GetHaste(),
		['Leech'] = GetLifesteal(),
		['Versatility'] = GetCombatRatingBonus(CR_VERSATILITY_DAMAGE_DONE) + GetVersatilityBonus(CR_VERSATILITY_DAMAGE_DONE),
		['Avoidance'] = GetAvoidance(),
	}
	statInfos['Melee'] = {
		['AttackPower'] = base + pos + neg,
	}
	statInfos['PvP'] = {
		['ResilienceRating'] = GetCombatRating(COMBAT_RATING_RESILIENCE_PLAYER_DAMAGE_TAKEN),
		['ResilienceReduction'] = GetCombatRatingBonus(COMBAT_RATING_RESILIENCE_PLAYER_DAMAGE_TAKEN) + GetModResilienceDamageReduction(),
		['PvPPowerDamage'] = GetPvpPowerDamage(),
		['PvPPowerHealing'] = GetPvpPowerHealing(),
	--	['PvPPowerRating'] = GetCombatRating(CR_PVP_POWER),
	}
	statInfos['Regen'] = {
		['ManaRegen'] = GetManaRegen(),
		['CombatManaRegen'] = select(2, GetManaRegen()),
		['PowerRegen'] = GetPowerRegen(),
	}
	statInfos['Spell'] = {
		['SpellPower'] = min(
			GetSpellBonusDamage(2),
			GetSpellBonusDamage(3),
			GetSpellBonusDamage(4),
			GetSpellBonusDamage(5),
			GetSpellBonusDamage(6),
			GetSpellBonusDamage(7)
		),
		['SpellCrit'] = GetSpellCritChance(),
	}
	return statInfos;
end

local function GetPlayerGuildInfo()--获取公会列表
	local guildInfo = {}
	if not IsInGuild() then return guildInfo end

	local numMembers = GetNumGuildMembers();
	for i = 1, numMembers do
		local fullName, rank, rankIndex, level, class, zone, note, officernote, online, isAway, classFileName, achievementPoints, achievementRank, isMobile, canSoR, repStanding, guid = GetGuildRosterInfo(i);
		if fullName and level > 110 then
			guildInfo[fullName] = {
				["rank"] = rank,
				["rankIndex"] = rankIndex,
				["level"] = level,
				["class"] = class,
				["zone"] = zone,
				["note"] = note,
				["officernote"] = officernote,
				["achievementPoints"] = achievementPoints,
				["achievementRank"] = achievementRank,
				["guid"] = guid
			}
		end
	end

	return guildInfo
end

local function GetKeystoneInfo()
	local KeystoneInfo = {}
	--for i = 1, 999 do if(C_ChallengeMode.GetMapUIInfo(i)) then print(C_ChallengeMode.GetMapUIInfo(i)) end end
	local mapIDs = {244,245,246,247,248,249,250,251,252,353}
	for i = 1, #mapIDs do
		local seasonBestDurationSec, seasonBestLevel, _, _, members = C_MythicPlus.GetSeasonBestForMap(mapIDs[i]);
		local name = C_ChallengeMode.GetMapUIInfo(mapIDs[i])
		if (seasonBestDurationSec and seasonBestLevel) then
			KeystoneInfo['m'..mapIDs[i]] = {
				['level'] = seasonBestLevel,
				['time'] = GetTimeStringFromSeconds(seasonBestDurationSec),
				['name'] = name,
				['members'] = {}
			}
			for k, member in ipairs(members) do
				if (member.name) then
					local role = GetSpecializationRoleByID(member.specID);
					local classInfo = C_CreatureInfo.GetClassInfo(member.classID);
					KeystoneInfo['m'..mapIDs[i]]['members'][member.name] = {
						['name'] = member.name,
						['role'] = role, --TANK,DAMAGER,HEALER
						['class'] = classInfo.classFile,
					}
				end
			end
		end
		
	end
	
	return KeystoneInfo
end

local function GetPlayerPvPInfo()
	local PlayerPvPInfo = {}

	PlayerPvPInfo = {
		['currentHonor'] = UnitHonor("player"),
		['maxHonor'] = UnitHonorMax("player"),
		['honorLevel'] = UnitHonorLevel("player"),
	}

	local E_CONQUEST_SIZE_STRINGS = { ARENA_2V2, ARENA_3V3, BATTLEGROUND_10V10 };
	local E_CONQUEST_BRACKET_INDEXES = { 1, 2, 4 }; -- 5v5 was removed

	for i = 1, 3 do
		local bracketIndex = E_CONQUEST_BRACKET_INDEXES[i];
		local rating, seasonBest, weeklyBest, seasonPlayed, seasonWon, weeklyPlayed, weeklyWon, lastWeeksBest, hasWon, pvpTier, ranking = GetPersonalRatedInfo(bracketIndex);
		local tierInfo = C_PvP.GetPvpTierInfo(pvpTier);
		PlayerPvPInfo[E_CONQUEST_SIZE_STRINGS[i]] = {
			['rating'] = rating, 
			['seasonBest'] = seasonBest, 
			['weeklyBest'] = weeklyBest, 
			['seasonPlayed'] = seasonPlayed, 
			['seasonWon'] = seasonWon, 
			['weeklyPlayed'] = weeklyPlayed, 
			['weeklyWon'] = weeklyWon, 
			['lastWeeksBest'] = lastWeeksBest, 
			['hasWon'] = hasWon, 
			['pvpTier'] = tierInfo,
			['ranking'] = ranking,
		}
	end
			
	return PlayerPvPInfo
end

local function GetAchievementsInfo()
	local AchievementsInfo = {
		['stat'] = {},
		['achiev'] = {},
		['last'] = {},
		['Azeroth'] = {},
	}
	local _, id, name, points, completed, month, day, year, description
	--Bfa stat
--for i = 1, 58 do local button = _G["AchievementFrameStatsContainerButton"..i] print(button.id..'|'..i) end

	local STATS = {12720,12748,12749,12750,12751,12752,12763,12766,12767,12768,12773,12774,12775,12776,12777,12778,12779,12728,12729,12745,12780,12781,12782,12783,12784,12785,12786,12787,12788,12789,12790,12791,12792,12793,12794,12795,12796,12797,12798,12799,12800,12801,12802,12803,12804,12805,12808,12809,12810,12811,12813,12814,12815,12816,12817,12818,12819,12820}
	for i = 1, #STATS do
		local sid = STATS[i]
		AchievementsInfo['stat']['a'..sid] = {
			['name'] = select(2, GetAchievementInfo(sid)),
			['value'] = GetStatistic(sid),
		}
	end
--for i = 1, 58 do local button = _G["AchievementFrameAchievementsContainerButton"..i] print(button.id..'|'..i) end

	local ACHIEV = {12587,12521,12522,12523,12524,12526,12527,12529,12530,12531,12532,12533,12937,12938,12823,12828,12772,12830,12836,12551}
	for i = 1, #ACHIEV do
		local aid = ACHIEV[i]
		id, name, _, completed, month, day, year, description = GetAchievementInfo(aid);
		local adate = ''
		if completed then adate = year..'-'..month..'-'..day end
		AchievementsInfo['achiev']['a'..aid] = {
			['name'] = name,
			['completed'] = completed,
			['date'] = adate,
		}
	end
--for i = 1, 999999 do local id, name = GetAchievementInfo(i) if id then if string.find(name, "引领潮流") then print(id..'|'..name) end end end	

	local lastRaidID = {6954,8246,8248,8249,8398,8399,9441,9444,10044,11194,11195,11581,11874,12110,12536,6954,8246,8248,8249,8398,8399,9441,9444,10044,11194,11195,11581,11874,12110,12536}
	for i = 1, #lastRaidID do
		local lid = lastRaidID[i]
		id, name, _, completed, month, day, year, description = GetAchievementInfo(lid);
		local adate = ''
		if completed then adate = year..'-'..month..'-'..day end
		AchievementsInfo['last']['a'..lid] = {
			['name'] = name,
			['completed'] = completed,
			['date'] = adate,
		}
	end

	--bfa raid desc
	local Azeroth = {12523,12522,12521,12524,12526,12527,12529,12530,12531,12532,12533}
	for i = 1, #Azeroth do
		local lid = Azeroth[i]
		id, name, _, completed, month, day, year, description = GetAchievementInfo(lid);
		local adate = ''
		if completed then adate = year..'-'..month..'-'..day end
		AchievementsInfo['Azeroth']['a'..lid] = {
			['name'] = name,
			['completed'] = completed,
			['date'] = adate,
		}
		local numCriteria = GetAchievementNumCriteria(lid);
		if numCriteria > 0 then
			for i = 1, numCriteria do
				local criteriaString, criteriaType, completed, quantity, reqQuantity, charName, flags, assetID, quantityString = GetAchievementCriteriaInfo(id, i);
				AchievementsInfo['Azeroth']['a'..lid]['c'..assetID] = {
					['criteriaString'] = criteriaString,
					['completed'] = completed,
				}
			end
		end
	end

	if not AchievementFrame_GetCategoryTotalNumAchievements then UIParentLoadAddOn("Blizzard_AchievementUI"); end
	local totalAchievements, totalCompleted = AchievementFrame_GetCategoryTotalNumAchievements(201, true);
	AchievementsInfo['reputation'] = {
		['totalAchievements'] = totalAchievements,
		['totalCompleted'] = totalCompleted,
	}

	return AchievementsInfo
end

local function GetPlayerSlot()
	local PlayerSlot = {}
	local SlotName = {
		"Head","Neck","Shoulder","Back","Chest","Shirt","Tabard","Wrist",
		"Hands","Waist","Legs","Feet","Finger0","Finger1",
		"Trinket0","Trinket1","MainHand","SecondaryHand"
	}
	for i = 1, #SlotName do
		local slotLink = GetInventoryItemLink('player', GetInventorySlotInfo(("%sSlot"):format(SlotName[i])))
		if (slotLink ~= nil) then
			PlayerSlot[SlotName[i]] = slotLink
		end
	end
	
	return PlayerSlot
end

local function GetPlayerCollection()
	local collectedInfo = {
		['transmogInfo'] = {},
		['wardrobeInfo'] = {},
		['toyBoxInfo'] = {},
		['mountsInfo'] = {},
		['petInfo'] = {},
	}

	local numPets = C_PetJournal.GetNumPets();
	
	local petCollected = 0
	for i = 1,numPets do
		local petID, speciesID, isOwned, customName, level, favorite, isRevoked, name, icon, petType, _, _, _, _, canBattle = C_PetJournal.GetPetInfoByIndex(i);
		if (isOwned) then
			-- petInfo['pet'..i] = {
				-- ['petID'] = petID,
				-- ['speciesID'] = speciesID,
				-- ['petName'] = petName,
				-- ['customName'] = customName,
				-- ['level'] = level,
				-- ['favorite'] = favorite,
				-- ['isRevoked'] = isRevoked,
				-- ['name'] = name,
				-- ['icon'] = icon,
				-- ['petType'] = petType,
				-- ['canBattle'] = canBattle,
			-- }
			petCollected = petCollected + 1;
		else
			break;
		end
	end
	collectedInfo['petInfo'] = {
		['collected'] = petCollected,
		['total'] = numPets,
	}

	local numDisplayedMounts = C_MountJournal.GetNumDisplayedMounts();
	local mountCollected = 0
	for i = 1,numDisplayedMounts do
		local creatureName, spellID, icon, active, isUsable, sourceType, isFavorite, isFactionSpecific, faction, isFiltered, isCollected, mountID = C_MountJournal.GetDisplayedMountInfo(i);
		if (isCollected) then
			-- mountsInfo['mount'..i] = {
				-- ['creatureName'] = creatureName,
				-- ['spellID'] = spellID,
				-- ['icon'] = icon,
				-- ['active'] = active,
				-- ['isUsable'] = isUsable,
				-- ['sourceType'] = sourceType,
				-- ['isFavorite'] = isFavorite,
				-- ['isFactionSpecific'] = isFactionSpecific, 
				-- ['faction'] = faction, 
				-- ['isFiltered'] = isFiltered, 
				-- ['isCollected'] = isCollected, 
				-- ['mountID'] = mountID,
			-- }
			mountCollected = mountCollected + 1
		end
	end
	collectedInfo['mountsInfo'] = {
		['collected'] = mountCollected,
		['total'] = numDisplayedMounts,
	}

	local maxProgress = C_ToyBox.GetNumTotalDisplayedToys();
	local currentProgress = C_ToyBox.GetNumLearnedDisplayedToys();
	collectedInfo['toyBoxInfo'] = {
		['collected'] = currentProgress,
		['total'] = maxProgress,
	}

	local sets = C_TransmogSets.GetAllSets();
	local setsCollected = 0
	if (sets) then
		for i = 1, #sets do
			if (sets[i].collected) then
				-- wardrobeInfo['setid'..i] = {
					-- ['description'] = sets[i].description, 
					-- ['label'] = sets[i].label,
					-- ['hiddenUntilCollected'] = sets[i].hiddenUntilCollected,
					-- ['setID'] = sets[i].setID,
					-- ['expansionID'] = sets[i].expansionID,
					-- ['classMask'] = sets[i].classMask, 
					-- ['name'] = sets[i].name,
					-- ['collected'] = sets[i].collected,
					-- ['requiredFaction'] = sets[i].requiredFaction,
					-- ['uiOrder'] = sets[i].uiOrder, 
					-- ['favorite'] = sets[i].favorite, 
					-- ['baseSetID'] = sets[i].baseSetID,
				-- }
				setsCollected = setsCollected + 1
			end
		end
	end
	collectedInfo['wardrobeInfo'] = {
		['collected'] = setsCollected,
		['total'] = #sets,
	}

	for i = 1, #TRANSMOG_SLOTS do
		local collected, total;
		if ( TRANSMOG_SLOTS[i].transmogType == LE_TRANSMOG_TYPE_ILLUSION ) then
			local visualsList
			for k = FIRST_TRANSMOG_COLLECTION_WEAPON_TYPE, LAST_TRANSMOG_COLLECTION_WEAPON_TYPE do
				if( TRANSMOG_SLOTS[i].slot == "MAINHANDSLOT" ) then
					visualsList = C_TransmogCollection.GetCategoryAppearances(k, 2);
				elseif (TRANSMOG_SLOTS[i].slot == "SECONDARYHANDSLOT" ) then
					visualsList = C_TransmogCollection.GetCategoryAppearances(k, 1);
				else
					visualsList = C_TransmogCollection.GetCategoryAppearances(k);
				end
				if visualsList then
					total = #visualsList;
					collected = 0;
					if total > 0 then
						for i, illusion in ipairs(visualsList) do
							if ( illusion.isCollected ) then
								collected = collected + 1;
							end
						end
						break;
					end
				end
			end
		elseif TRANSMOG_SLOTS[i].armorCategoryID then
			collected = C_TransmogCollection.GetCategoryCollectedCount(TRANSMOG_SLOTS[i].armorCategoryID);
			total = C_TransmogCollection.GetCategoryTotal(TRANSMOG_SLOTS[i].armorCategoryID);
		end
		collectedInfo['transmogInfo'][TRANSMOG_SLOTS[i].slot] = {
			['collected'] = collected,
			['total'] = total,
		}
	end

	return collectedInfo
end

local function initDB()
	if not playersDB then playersDB = {} end
	if not playersDB[Name..'-'..Realm] then playersDB[Name..'-'..Realm] = {} end
	if not playersDB[Name..'-'..Realm]['ver'] or playersDB[Name..'-'..Realm]['ver'] < 0.5 then
		playersDB[Name..'-'..Realm] = {}
	end
end

local lastTime = 0
local function GetPlayerInfo()
	local now = GetServerTime()
	if now - lastTime < 600 then return end

	lastTime = now

	local localeClass, class = UnitClass('player')
	local guildName, guildRankName, _, guildRealm = GetGuildInfo('player')
	local level = UnitLevel("player")
	local _, curLv = GetAverageItemLevel()
    local _, playerRace = UnitRace("player")
	local playerFaction = UnitFactionGroup('player')		-- for Pandaren who has not chosen results is "Neutral"
	local playerGender = UnitSex('player')
	local spec = GetSpecialization()

	playersDB[Name..'-'..Realm] = {
		['ver'] = 0.5,
		['wowbuild'] = select(2, GetBuildInfo()),
		['CreateTime'] = now,
		['standInfo'] = {
			['localeClass'] = localeClass,
			['class'] = class,
			['guildName'] = guildName,
			['guildRankName'] = guildRankName,
			['guildRealm'] = guildRealm,
			['level'] = level,
			['curLv'] = curLv,
			['race'] = playerRace,
			['faction'] = playerFaction,
			['gender'] = playerGender,
			['talent'] = spec,
			['totalTime'] = totalTime,
			['levelTime'] = levelTime,
		},
	}
	playersDB[Name..'-'..Realm]['talentInfo'] = GetTalentInfos()

	playersDB[Name..'-'..Realm]['statInfo'] = GetStatInfo()

	playersDB[Name..'-'..Realm]['guildInfo'] = GetPlayerGuildInfo()

	playersDB[Name..'-'..Realm]['guildTotal'] = GetNumGuildMembers()

	playersDB[Name..'-'..Realm]['pvpInfo'] = GetPlayerPvPInfo()

	playersDB[Name..'-'..Realm]['achievementInfo'] = GetAchievementsInfo()

	playersDB[Name..'-'..Realm]['slotInfo'] = GetPlayerSlot()

	playersDB[Name..'-'..Realm]['keyStoneInfo'] = GetKeystoneInfo()

	playersDB[Name..'-'..Realm]['collectedInfo'] = GetPlayerCollection()

	PlayersDBJSON = table2json(playersDB)
end


function S:TIME_PLAYED_MSG(event, ...)
	local arg1, arg2 = ...;

	local d, h, m, s = ChatFrame_TimeBreakDown(arg1);
	totalTime = format(TIME_DAYHOURMINUTESECOND, d, h, m, s)

	d, h, m, s = ChatFrame_TimeBreakDown(arg2);
	levelTime = format(TIME_DAYHOURMINUTESECOND, d, h, m, s)
end

function S:Initialize()
	initDB();
	
	GameMenuButtonLogout:HookScript("OnClick",function(self)
		GetPlayerInfo()
	end)
	
	GameMenuButtonQuit:HookScript("OnClick",function(self)
		GetPlayerInfo()
	end)

	hooksecurefunc("StaticPopup_Show", function(which, text_arg1, text_arg2, data, insertedFrame)
		if ( (which == "CAMP") or (which == "QUIT") ) then
			GetPlayerInfo();
		end
	end)
	
	S:RegisterEvent("TIME_PLAYED_MSG");
	RequestTimePlayed();
end

local function InitializeCallback()
	S:Initialize()
end

E:RegisterModule(S:GetName(), InitializeCallback)