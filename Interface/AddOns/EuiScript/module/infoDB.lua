local E, L, V, P, G = unpack(ElvUI); --Engine
local S = E:NewModule('InfoDB', 'AceEvent-3.0')

local pairs,tostring,maxn,concat,floor = pairs,tostring,table.maxn,table.concat,floor
local GetMaxTalentTier = GetMaxTalentTier
local GetTalentInfo = GetTalentInfo
local C_SpecializationInfo_GetAllSelectedPvpTalentIDs = C_SpecializationInfo.GetAllSelectedPvpTalentIDs
local GetPvpTalentInfoByID = GetPvpTalentInfoByID
local GetActiveSpecGroup = GetActiveSpecGroup
local GetUnitSpeed = GetUnitSpeed
local UnitLevel = UnitLevel
local UnitArmor = UnitArmor
local UnitAttackPower = UnitAttackPower
local UnitStat = UnitStat
local BASE_MOVEMENT_SPEED = BASE_MOVEMENT_SPEED
local PaperDollFrame_GetArmorReduction = PaperDollFrame_GetArmorReduction
local GetDodgeChance = GetDodgeChance
local GetParryChance = GetParryChance
local GetBlockChance = GetBlockChance
local GetShieldBlock = GetShieldBlock
local GetMasteryEffect = GetMasteryEffect
local GetCritChance = GetCritChance
local GetHaste = GetHaste
local GetLifesteal = GetLifesteal
local GetCombatRatingBonus = GetCombatRatingBonus
local CR_VERSATILITY_DAMAGE_DONE = CR_VERSATILITY_DAMAGE_DONE
local GetVersatilityBonus = GetVersatilityBonus
local GetAvoidance = GetAvoidance
local GetCombatRating = GetCombatRating
local COMBAT_RATING_RESILIENCE_PLAYER_DAMAGE_TAKEN = COMBAT_RATING_RESILIENCE_PLAYER_DAMAGE_TAKEN
local GetModResilienceDamageReduction = GetModResilienceDamageReduction
local GetPvpPowerDamage = GetPvpPowerDamage
local GetPvpPowerHealing = GetPvpPowerHealing
local GetManaRegen = GetManaRegen
local GetPowerRegen = GetPowerRegen
local GetSpellBonusDamage = GetSpellBonusDamage
local GetSpellCritChance = GetSpellCritChance
local IsInGuild = IsInGuild
local ToggleCommunitiesFrame = ToggleCommunitiesFrame
local C_MythicPlus_GetSeasonBestForMap = C_MythicPlus.GetSeasonBestForMap
local C_ChallengeMode_GetMapUIInfo = C_ChallengeMode.GetMapUIInfo
local GetTimeStringFromSeconds = GetTimeStringFromSeconds
local GetSpecializationRoleByID = GetSpecializationRoleByID
local C_CreatureInfo_GetClassInfo = C_CreatureInfo.GetClassInfo
local UnitHonor = UnitHonor
local UnitHonorMax = UnitHonorMax
local UnitHonorLevel = UnitHonorLevel
local GetAchievementInfo = GetAchievementInfo
local GetStatistic = GetStatistic
local GetInventoryItemLink = GetInventoryItemLink
local GetInventorySlotInfo = GetInventorySlotInfo
local UnitName = UnitName
local GetRealmName = GetRealmName
local UnitClass = UnitClass
local GetGuildInfo = GetGuildInfo
local GetAverageItemLevel = GetAverageItemLevel
local UnitRace = UnitRace
local UnitFactionGroup = UnitFactionGroup
local UnitSex = UnitSex
local GetServerTime = GetServerTime
local IsInInstance = IsInInstance
local InCombatLockdown = InCombatLockdown
local C_Timer_After = C_Timer.After

local Name = UnitName('player')
local Realm = GetRealmName()
local EventToggle = false
local RegisterCombat = false

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

local lastTalentTime = 0
local function GetTalentInfos() --获取天赋点法
	local now = GetServerTime()

	if now - lastTalentTime < 120 then return end

	lastTalentTime = now

    local talentInfos = {}
	local const__numTalentCols = 3 -- TODO: Get this from the API
    local k = 1
    for i = 1, GetMaxTalentTier() do
        for j = 1, const__numTalentCols do
            local talentID, name, texture, selected, available, spellid, tier, column = GetTalentInfo(i, j, GetActiveSpecGroup())
            talentInfos[k] = { }
            talentInfos[k].talentID = talentID
            talentInfos[k].name = name
            talentInfos[k].texture = texture
            talentInfos[k].selected = selected
            talentInfos[k].available = available
            talentInfos[k].spellid = spellid
            talentInfos[k].tier = tier
            talentInfos[k].column = column
            k = k + 1
        end
    end
	
	local pvpIds = C_SpecializationInfo_GetAllSelectedPvpTalentIDs()
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

local lastStatTime = 0
local function GetStatInfo()--获取玩家属性
	local now = GetServerTime()

	if now - lastStatTime < 120 then return end

	lastStatTime = now

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

local lastTime = 0
local function GetPlayerGuildInfo()--获取公会列表
	local guildInfo = {}
	if not IsInGuild() then return guildInfo end

	local now = GetServerTime()

	if now - lastTime < 300 then return end

	lastTime = now
	local numMembers = GetNumGuildMembers();
	for i = 1, numMembers do
		local fullName, rank, rankIndex, level, class, zone, note, officernote, online, isAway, classFileName, achievementPoints, achievementRank, isMobile, canSoR, repStanding, guid = GetGuildRosterInfo(i);
		if fullName then
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

local lastKeyTime = 0
local function GetKeystoneInfo()
	local now = GetServerTime()

	if now - lastKeyTime < 600 then return end

	lastKeyTime = now

	local KeystoneInfo = {}
	--for i = 1, 999 do if(C_ChallengeMode.GetMapUIInfo(i)) then print(C_ChallengeMode.GetMapUIInfo(i)) end end
	local mapIDs = {244,245,246,247,248,249,250,251,252,353}
	for i = 1, #mapIDs do
		local seasonBestDurationSec, seasonBestLevel, _, _, members = C_MythicPlus_GetSeasonBestForMap(mapIDs[i]);
		local name = C_ChallengeMode_GetMapUIInfo(mapIDs[i])
		if (seasonBestDurationSec and seasonBestLevel) then
			KeystoneInfo[mapIDs[i]] = {
				['level'] = seasonBestLevel,
				['time'] = GetTimeStringFromSeconds(seasonBestDurationSec),
				['name'] = name,
				['members'] = {}
			}
			for k, member in ipairs(members) do
				if (member.name) then
					local role = GetSpecializationRoleByID(member.specID);
					local classInfo = C_CreatureInfo_GetClassInfo(member.classID);
					KeystoneInfo[mapIDs[i]]['members'][k] = {
						['name'] = member.name,
						['role'] = GetSpecializationRoleByID(member.specID), --TANK,DAMAGER,HEALER
						['class'] = classInfo.classFile,
					}
				end
			end
		end
		
	end
	
	return KeystoneInfo
end

local lastPvpTime = 0
local function GetPlayerPvPInfo()
	local now = GetServerTime()

	if now - lastPvpTime < 600 then return end

	lastPvpTime = now

	local PlayerPvPInfo = {}

	PlayerPvPInfo = {
		['currentHonor'] = UnitHonor("player"),
		['maxHonor'] = UnitHonorMax("player"),
		['honorLevel'] = UnitHonorLevel("player"),
		
	}
	
	return PlayerPvPInfo
end

local lastAchievTime = 0
local function GetAchievementsInfo()
	local now = GetServerTime()

	if now - lastAchievTime < 600 then return end

	lastAchievTime = now

	local AchievementsInfo = {
		['stat'] = {},
		['achiev'] = {},
		['last'] = {},
	}
	local _, id, name, points, completed, month, day, year, description
	--Bfa stat
--for i = 1, 58 do local button = _G["AchievementFrameStatsContainerButton"..i] print(button.id..'|'..i) end
	C_Timer_After(2, function()
		local STATS = {12720,12748,12749,12750,12751,12752,12763,12766,12767,12768,12773,12774,12775,12776,12777,12778,12779,12728,12729,12745,12780,12781,12782,12783,12784,12785,12786,12787,12788,12789,12790,12791,12792,12793,12794,12795,12796,12797,12798,12799,12800,12801,12802,12803,12804,12805,12808,12809,12810,12811,12813,12814,12815,12816,12817,12818,12819,12820}
		for i = 1, #STATS do
			local sid = STATS[i]
			AchievementsInfo['stat'][sid] = {
				['name'] = select(2, GetAchievementInfo(sid)),
				['value'] = GetStatistic(sid),
			}
		end
	end)
--for i = 1, 58 do local button = _G["AchievementFrameAchievementsContainerButton"..i] print(button.id..'|'..i) end
	C_Timer_After(2, function()
		local ACHIEV = {12587,12521,12522,12523,12524,12526,12527,12529,12530,12531,12532,12533,12937,12938,12823,12828,12772,12830,12836,12551}
		for i = 1, #ACHIEV do
			local aid = ACHIEV[i]
			id, name, _, completed, month, day, year, description = GetAchievementInfo(aid);
			local adate = ''
			if completed then adate = year..'-'..month..'-'..day end
			AchievementsInfo['achiev'][aid] = {
				['name'] = name,
				['completed'] = completed,
				['date'] = adate,
			}
		end
	end)
--for i = 1, 999999 do local id, name = GetAchievementInfo(i) if id then if string.find(name, "引领潮流") then print(id..'|'..name) end end end	
	C_Timer_After(2, function()
		local lastRaidID = {6954,8246,8248,8249,8398,8399,9441,9444,10044,11194,11195,11581,11874,12110,12536,6954,8246,8248,8249,8398,8399,9441,9444,10044,11194,11195,11581,11874,12110,12536}
		for i = 1, #lastRaidID do
			local lid = lastRaidID[i]
			id, name, _, completed, month, day, year, description = GetAchievementInfo(lid);
			local adate = ''
			if completed then adate = year..'-'..month..'-'..day end
			AchievementsInfo['last'][lid] = {
				['name'] = name,
				['completed'] = completed,
				['date'] = adate,
			}
		end
	end)

	return AchievementsInfo
end

local lastStatTime = 0
local function GetPlayerSlot()
	local now = GetServerTime()

	if now - lastStatTime < 60 then return end

	lastStatTime = now

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

local function initDB()
	if not playersDB then playersDB = {} end
	if not playersDB[Name..'-'..Realm] then playersDB[Name..'-'..Realm] = {} end
	if not playersDB[Name..'-'..Realm]['ver'] or playersDB[Name..'-'..Realm]['ver'] < 0.2 then
		playersDB[Name..'-'..Realm] = {}
	end
end

local function resetMem()
	if not InCombatLockdown() then
		collectgarbage("collect");
		ResetCPUUsage();
	end
end

local function GetPlayerInfo(event)
	local localeClass, class = UnitClass('player')
	local guildName, guildRankName, _, guildRealm = GetGuildInfo('player')
	local level = UnitLevel("player")
	local _, curLv = GetAverageItemLevel()
    local _, playerRace = UnitRace("player")
	local playerFaction = UnitFactionGroup('player')		-- for Pandaren who has not chosen results is "Neutral"
	local playerGender = UnitSex('player')
	local spec = GetSpecialization()

	initDB();

	if not event then
		playersDB[Name..'-'..Realm] = {
			['ver'] = 0.2,
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
			},
		}
		C_Timer_After(1, function()
			playersDB[Name..'-'..Realm]['talentInfo'] = GetTalentInfos()
		end)
		C_Timer_After(1, function()
			playersDB[Name..'-'..Realm]['statInfo'] = GetStatInfo()
		end)
		C_Timer_After(1, function()
			playersDB[Name..'-'..Realm]['guildInfo'] = GetPlayerGuildInfo()
		end)
		C_Timer_After(5, function()
			playersDB[Name..'-'..Realm]['guildTotal'] = GetNumGuildMembers()
		end)
		C_Timer_After(1, function()
			playersDB[Name..'-'..Realm]['pvpInfo'] = GetPlayerPvPInfo()
		end)
		C_Timer_After(1, function()
			playersDB[Name..'-'..Realm]['achievementInfo'] = GetAchievementsInfo()
		end)
		C_Timer_After(5, function()
			playersDB[Name..'-'..Realm]['slotInfo'] = GetPlayerSlot()
		end)
		--playersDB[Name..'-'..Realm]['keyStoneInfo'] = GetKeystoneInfo()

		resetMem()
	elseif event == 'PLAYER_LEVEL_CHANGED' or event == 'PLAYER_SPECIALIZATION_CHANGED' or event == 'BAG_UPDATE' then
		playersDB[Name..'-'..Realm]['standInfo']['talent'] = spec
		playersDB[Name..'-'..Realm]['statInfo'] = GetStatInfo()
		if event == 'BAG_UPDATE' then
			C_Timer_After(2, function()
				playersDB[Name..'-'..Realm]['keyStoneInfo'] = GetKeystoneInfo()
			end)
		end
	elseif event == 'PLAYER_TALENT_UPDATE' or event == 'ACTIVE_TALENT_GROUP_CHANGED' then
		playersDB[Name..'-'..Realm]['talentInfo'] = GetTalentInfos()
	elseif event == 'PLAYER_GUILD_UPDATE' or event == 'GUILD_ROSTER_UPDATE' then
		playersDB[Name..'-'..Realm]['guildTotal'] = GetNumGuildMembers()
		playersDB[Name..'-'..Realm]['guildInfo'] = GetPlayerGuildInfo()
	elseif event == 'PVP_RATED_STATS_UPDATE' then
		playersDB[Name..'-'..Realm]['pvpInfo'] = GetPlayerPvPInfo()
	elseif event == 'ACHIEVEMENT_EARNED' or event == 'PLAYER_FLAGS_CHANGED' then
		playersDB[Name..'-'..Realm]['achievementInfo'] = GetAchievementsInfo()
		resetMem()
	elseif event == 'PLAYER_EQUIPMENT_CHANGED' then
		playersDB[Name..'-'..Realm]['slotInfo'] = GetPlayerSlot()
	elseif event == 'WORLD_STATE_TIMER_STOP' or event == 'SCENARIO_CRITERIA_UPDATE' or event == 'SCENARIO_UPDATE' or event == 'CHALLENGE_MODE_COMPLETED' then
		playersDB[Name..'-'..Realm]['keyStoneInfo'] = GetKeystoneInfo()
	end

	C_Timer_After(2, function()
		PlayersDBJSON = table2json(playersDB)
	end)
end

function S:SaveDB(event, ...)
	if not EventToggle then return end

	if InCombatLockdown() then
		if not RegisterCombat then S:RegisterEvent("PLAYER_REGEN_ENABLED", "SaveDB") end
		RegisterCombat = true
		return
	end

	if event == 'PLAYER_REGEN_ENABLED' then
		S:UnregisterEvent('PLAYER_REGEN_ENABLED')
		RegisterCombat = false
		GetPlayerInfo()
	else
		GetPlayerInfo(event)
	end
end

local lastZoneTime = 0
function S:ZoneUpdate()
	local inInstance, instanceType = IsInInstance()
	if(inInstance and (instanceType == 'raid' or instanceType == 'pvp')) then
		EventToggle = false
	else
		local now = GetServerTime()
		if now - lastZoneTime < 1800 then return end
		lastZoneTime = now
		EventToggle = true
		E:ScheduleTimer(GetPlayerInfo, 10)
	end
end

function S:Initialize()
	initDB();

	if not GuildControlUIRankSettingsFrameRosterLabel then --fix 8.0点击公会面板报错
		GuildControlUIRankSettingsFrameRosterLabel = CreateFrame("frame")
		GuildControlUIRankSettingsFrameRosterLabel:Hide()
	end

	self:RegisterEvent("ZONE_CHANGED", "ZoneUpdate")
--	self:RegisterEvent("PLAYER_ENTERING_WORLD","SaveDB");
	self:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED","SaveDB");
	self:RegisterEvent("PLAYER_TALENT_UPDATE","SaveDB");
	self:RegisterEvent("PLAYER_EQUIPMENT_CHANGED","SaveDB");
	self:RegisterEvent("PLAYER_GUILD_UPDATE","SaveDB");
	self:RegisterEvent("GUILD_ROSTER_UPDATE","SaveDB");
	self:RegisterEvent("PVP_RATED_STATS_UPDATE","SaveDB");
	self:RegisterEvent("ACHIEVEMENT_EARNED","SaveDB");
	self:RegisterEvent("PLAYER_LEVEL_CHANGED","SaveDB");
	self:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED","SaveDB");
	self:RegisterEvent("WORLD_STATE_TIMER_STOP","SaveDB");
	self:RegisterEvent("BAG_UPDATE","SaveDB");
	self:RegisterEvent("CHALLENGE_MODE_COMPLETED","SaveDB");
	self:RegisterEvent("PLAYER_FLAGS_CHANGED", "SaveDB");
end

local function InitializeCallback()
	S:Initialize()
end

E:RegisterModule(S:GetName(), InitializeCallback)