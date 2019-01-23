﻿-----------------------------------------------------------------------
-- AddOn namespace.
-----------------------------------------------------------------------
local LibStub = _G.LibStub
local RareScanner = LibStub("AceAddon-3.0"):NewAddon("RareScanner", "AceComm-3.0")

local ADDON_NAME, private = ...
RareScanner.GARRISON_CACHE_IDS = { 236916, 237191, 237724, 237722, 237723, 237720 }
RareScanner.NPC_VIGNETTE = "VignetteKill"
RareScanner.NPC_LEGION_VIGNETTE = "DemonInvasion5"
RareScanner.CONTAINER_VIGNETTE = "VignetteLoot"
RareScanner.CONTAINER_ELITE_VIGNETTE = "VignetteLootElite"
RareScanner.EVENT_VIGNETTE = "VignetteEvent"
RareScanner.EVENT_VIGNETTE = "VignetteEvent"
local RESCAN_TIMER = 120; -- 2 minutes to rescan for the same NPC
local AddonTitle = GetAddOnMetadata('RareScanner', 'Title')

-- Timers
local CLEAN_RARES_FOUND_TIMER
local CLEAN_RARES_FOUND_DELAY = 120
local DEFAULT_RAID_NOTICE_TIME = 3

-- Constants
local ETERNAL_DEATH = -1
local ETERNAL_COLLECTED = -1
local ETERNAL_COMPLETED = -1

-- Debug
local DEBUG_MODE = false

-- Config constants
local CURRENT_DB_VERSION = 1
local CURRENT_LOOT_DB_VERSION = 2

-- Hard reset versions
local CURRENT_ADDON_VERSION = 500
local HARD_RESET = {
	[500] = true
}

-- Locales
local AL = LibStub("AceLocale-3.0"):GetLocale("RareScanner");

-- Settings
local PROFILE_DEFAULTS = {
	profile = {
		general = {
			scanRares = true,
			scanContainers = true,
			scanEvents = true,
			scanGarrison = false,
			scanInstances = false,
			filteredRares = {},
			filteredZones = {}
		},
		sound = {
			soundPlayed = "Horn",
			soundObjectPlayed = "PVP Horde",
			soundDisabled = false,
			soundVolume = 4
		},
		display = {
			displayButton = true,
			displayMiniature = true,
			displayButtonContainers = true,
			autoHideButton = 10,
			displayRaidWarning = false,
			displayChatMessage = true,
			displayLogWindow = false,
			autoHideLogWindow = 0
		},
		rareFilters = {
			filtersToggled = true
		},
		zoneFilters = {
			filtersToggled = true
		},
		map = {
			displayMapIcons = false,
			disableLastSeenFilter = false,
			displayNotDiscoveredMapIcons = false,
			displayOldNotDiscoveredMapIcons = false,
			keepShowingAfterDead = false,
			keepShowingAfterCollected = false,
			maxSeenTime = 0,
			maxSeenTimeContainer = 5
		},
		loot = {
			filteredLootCategories = {},
			displayLoot = false,
			displayLootOnMap = false,
			lootTooltipPosition = "ANCHOR_LEFT",
			lootMinQuality = 0,
			filterNotEquipableItems = false,
			showOnlyTransmogItems = false,
			filterCollectedItems = true,
			numItems = 10,
			numItemsPerRow = 10
		}
	}
}

-- Main button
local scanner_button = _G.CreateFrame("Button", "scanner_button", WorldFrame, "SecureActionButtonTemplate")
scanner_button:Hide();
scanner_button:SetFrameStrata("HIGH")
scanner_button:SetSize(200, 50)
scanner_button:SetScale(0.85)
scanner_button:SetAttribute("type", "macro")
scanner_button:SetNormalTexture([[Interface\AchievementFrame\UI-Achievement-Parchment-Horizontal-Desaturated]])
scanner_button:SetBackdrop({ tile = true, edgeSize = 16, edgeFile = [[Interface\Tooltips\UI-Tooltip-Border]] })
scanner_button:SetBackdropBorderColor(0, 0, 0)
scanner_button:SetPoint("BOTTOM", UIParent, 0, 128)
scanner_button:SetMovable(true)
scanner_button:SetUserPlaced(true)
scanner_button:SetClampedToScreen(true)
scanner_button:RegisterForDrag("LeftButton")

scanner_button:SetScript("OnDragStart", scanner_button.StartMoving)
scanner_button:SetScript("OnDragStop", scanner_button.StopMovingOrSizing)
scanner_button:SetScript("OnEnter", function(self)
	self:SetBackdropBorderColor(0.9, 0.9, 0.9)
end)
scanner_button:SetScript("OnLeave", function(self)
	self:SetBackdropBorderColor(0, 0, 0)
end)
scanner_button:SetScript("OnHide", function(self)
	self.npcID = nil
	self.name = nil
end)

-- Model view
scanner_button.ModelView = _G.CreateFrame("PlayerModel", "mxpplayermodel", scanner_button)
scanner_button.ModelView:SetPoint("BOTTOMLEFT", scanner_button, "TOPLEFT", 0, -2) -- bottom left corner 2px separation from scanner_button's top left corner
scanner_button.ModelView:SetPoint("RIGHT")
scanner_button.ModelView:SetHeight(120)
scanner_button.ModelView:SetScale(1.25)

local Background = scanner_button:GetNormalTexture()
Background:SetDrawLayer("BACKGROUND")
Background:ClearAllPoints()
Background:SetPoint("BOTTOMLEFT", 3, 3)
Background:SetPoint("TOPRIGHT", -3, -3)
Background:SetTexCoord(0, 1, 0, 0.25)

-- Title
local TitleBackground = scanner_button:CreateTexture(nil, "BORDER")
TitleBackground:SetTexture([[Interface\AchievementFrame\UI-Achievement-RecentHeader]])
TitleBackground:SetPoint("TOPRIGHT", -5, -7)
TitleBackground:SetPoint("LEFT", 5, 0)
TitleBackground:SetSize(180, 10)
TitleBackground:SetTexCoord(0, 1, 0, 1)
TitleBackground:SetAlpha(0.8)

scanner_button.Title = scanner_button:CreateFontString(nil, "OVERLAY", "GameFontNormal", 1)
scanner_button.Title:SetNonSpaceWrap(true)
scanner_button.Title:SetPoint("TOPLEFT", TitleBackground, 0, 0)
scanner_button.Title:SetPoint("RIGHT", TitleBackground)
scanner_button.Title:SetTextColor(1, 1, 1, 1)
scanner_button:SetFontString(scanner_button.Title)

local Description = scanner_button:CreateFontString(nil, "OVERLAY", "SystemFont_Tiny")
Description:SetPoint("BOTTOMLEFT", TitleBackground, 0, -12)
Description:SetPoint("RIGHT", -8, 0)
Description:SetTextHeight(6)
Description:SetTextColor(NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b)

scanner_button.Description_text = scanner_button:CreateFontString(nil, "OVERLAY", "GameFontWhiteTiny")
scanner_button.Description_text:SetPoint("TOPLEFT", Description, "BOTTOMLEFT", 0, -4)
scanner_button.Description_text:SetPoint("RIGHT", Description)

-- Close button
scanner_button.CloseButton = _G.CreateFrame("Button", "CloseButton", scanner_button, "UIPanelCloseButton")
scanner_button.CloseButton:SetPoint("BOTTOMRIGHT")
scanner_button.CloseButton:SetSize(32, 32)
scanner_button.CloseButton:SetScale(0.8)
scanner_button.CloseButton:SetHitRectInsets(8, 8, 8, 8)

-- Filter disabled button
scanner_button.FilterDisabledButton = _G.CreateFrame("Button", "FilterDisabledButton", scanner_button, "GameMenuButtonTemplate")
scanner_button.FilterDisabledButton:SetPoint("BOTTOMLEFT", 5, 5)
scanner_button.FilterDisabledButton:SetSize(16, 16)
scanner_button.FilterDisabledButton:SetNormalTexture([[Interface\WorldMap\Dash_64]])
scanner_button.FilterDisabledButton:SetScript("OnClick", function(self)
	npcID = self:GetParent().npcID
	if (npcID) then
		private.db.general.filteredRares[npcID] = false
		RareScanner:PrintMessage(AL["DISABLED_SEARCHING_RARE"]..self:GetParent().Title:GetText())
		self:Hide()
		self:GetParent().FilterEnabledButton:Show()
	end
end)
scanner_button.FilterDisabledButton:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(self, "ANCHOR_CURSOR")
	GameTooltip:SetText(AL["DISABLE_SEARCHING_RARE_TOOLTIP"])
	GameTooltip:Show()
end)

scanner_button.FilterDisabledButton:SetScript("OnLeave", function(self)
	GameTooltip:Hide()
end)

-- Filter enabled button
scanner_button.FilterEnabledButton = _G.CreateFrame("Button", "FilterEnabledButton", scanner_button, "GameMenuButtonTemplate")
scanner_button.FilterEnabledButton:SetPoint("BOTTOMLEFT", 5, 5)
scanner_button.FilterEnabledButton:SetSize(16, 16)
scanner_button.FilterEnabledButton:SetScript("OnClick", function(self)
	npcID = self:GetParent().npcID
	if (npcID) then
		private.db.general.filteredRares[npcID] = true
		RareScanner:PrintMessage(AL["ENABLED_SEARCHING_RARE"]..self:GetParent().Title:GetText())
		self:Hide()
		self:GetParent().FilterDisabledButton:Show()
	end
end)
scanner_button.FilterEnabledButton:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(self, "ANCHOR_CURSOR")
	GameTooltip:SetText(AL["ENABLE_SEARCHING_RARE_TOOLTIP"])
	GameTooltip:Show()
end)

scanner_button.FilterEnabledButton:SetScript("OnLeave", function(self)
	GameTooltip:Hide()
end)

scanner_button.FilterEnabledTexture = scanner_button.FilterEnabledButton:CreateTexture()
scanner_button.FilterEnabledTexture:SetTexture([[Interface\WorldMap\Skull_64]])
scanner_button.FilterEnabledTexture:SetSize(12, 12)
scanner_button.FilterEnabledTexture:SetTexCoord(0,0.5,0,0.5)
scanner_button.FilterEnabledTexture:SetPoint("CENTER")
scanner_button.FilterEnabledButton:SetNormalTexture(scanner_button.FilterEnabledTexture)
scanner_button.FilterEnabledButton:Hide()

-- Loot bar
scanner_button.LootBar = _G.CreateFrame("Frame", "LootBar", scanner_button)
scanner_button.LootBar.itemFramesPool = _G.CreateFramePool("FRAME", scanner_button.LootBar, "RSLootTemplate");
scanner_button.LootBar.LootBarToolTip = _G.CreateFrame("GameTooltip", "LootBarToolTip", scanner_button, "GameTooltipTemplate")
scanner_button.LootBar.LootBarToolTipComp1 = _G.CreateFrame("GameTooltip", "LootBarToolTipComp1", nil, "GameTooltipTemplate")
scanner_button.LootBar.LootBarToolTipComp1:SetScale(0.8)
scanner_button.LootBar.LootBarToolTipComp2 = _G.CreateFrame("GameTooltip", "LootBarToolTipComp2", nil, "GameTooltipTemplate")
scanner_button.LootBar.LootBarToolTipComp2:SetScale(0.8)
scanner_button.LootBar.LootBarToolTip.shoppingTooltips = { scanner_button.LootBar.LootBarToolTipComp1, scanner_button.LootBar.LootBarToolTipComp2 }

-- Vignette events
scanner_button:RegisterEvent("VIGNETTE_MINIMAP_UPDATED")

-- Out of combat events
scanner_button:RegisterEvent("PLAYER_REGEN_ENABLED")

-- Unit deaths
scanner_button:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
scanner_button:RegisterEvent("PLAYER_TARGET_CHANGED")

-- Communications
scanner_button:RegisterEvent("GROUP_ROSTER_UPDATE")
scanner_button:RegisterEvent("GROUP_JOINED")
scanner_button:RegisterEvent("PLAYER_TARGET_CHANGED")

-- Items events
scanner_button:RegisterEvent("GET_ITEM_INFO_RECEIVED")
scanner_button:RegisterEvent("LOOT_OPENED")

-- Avoid addon on cinematics
scanner_button:RegisterEvent("CINEMATIC_START")

-- Captures all events
local guildiesNames = nil
scanner_button:SetScript("OnEvent", function(self, event, ...)
	-- Vignette info
	if (event == "VIGNETTE_MINIMAP_UPDATED") then
		self:CheckNotificationCache(self, ...)
	-- Out of combat actions
	elseif (event == "PLAYER_REGEN_ENABLED") then
		if (self.pendingToShow) then
			self.pendingToShow = nil
			self.pendingToHide = nil -- just in case it was pending too
			self:ShowButton()
		elseif (self.pendingToHide) then
			self.pendingToHide = nil
			self:HideButton()
		end
	-- Target death
	elseif (event == "COMBAT_LOG_EVENT_UNFILTERED") then
		local timestamp, eventType, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags = CombatLogGetCurrentEventInfo()
		if (eventType == "PARTY_KILL") then
			local _, _, _, _, _, id = strsplit("-", destGUID)
			local npcID = id and tonumber(id) or nil
			RareScanner:ProcessKill(npcID)
		elseif (eventType == "UNIT_DIED") then
			-- It needs to find the target dead in order to mark it as dead, otherwise it could be a fake
			local _, _, _, _, _, id = strsplit("-", destGUID)
			local npcID = id and tonumber(id) or nil
			if (npcID and private.dbglobal.rares_found[npcID] and not private.dbchar.rares_killed[npcID]) then
				if (UnitExists("target") and destGUID == UnitGUID("target")) then
					local unitClassification = UnitClassification("target")
					if (unitClassification ~= "rare" and unitClassification ~= "rareelite") then
						-- properly killed
						RareScanner:PrintDebugMessage("DEBUG: Identificado un NPC raro muerto por medio de UNIT_DIED")
						RareScanner:ProcessKill(npcID)
					else
						RareScanner:PrintDebugMessage("DEBUG: Identificado un NPC muerto por medio de UNIT_DIED que no hemos matado nosotros")
					end
				end
			end
		end
	elseif (event == "PLAYER_TARGET_CHANGED") then
		if (UnitExists("target")) then
			local targetUid = UnitGUID("target")
			local unitClassification = UnitClassification("target")
			local _, _, _, _, _, id = strsplit("-", targetUid)
			local npcID = id and tonumber(id) or nil
			
			-- check if killed
			if (npcID and private.dbglobal.rares_found[npcID] and not private.dbchar.rares_killed[npcID]) then
				if (unitClassification ~= "rare" and unitClassification ~= "rareelite") then
					-- properly killed
					RareScanner:PrintDebugMessage("DEBUG: Identificado un NPC raro muerto porque ha dejado de ser raro en algun momento de la historia y nos habiamos enterado.")
					RareScanner:ProcessKill(npcID)
				else
					RareScanner:PrintDebugMessage("DEBUG: Identificado un NPC raro muerto que sigue siendo raro, por lo tanto no lo hemos debido de matar nosotros.")
					private.dbglobal.rares_found[npcID].foundTime = time()
				end
			-- check if rare but no viggnette
			elseif (npcID and not private.dbglobal.rares_found[npcID] and (unitClassification == "rare" or unitClassification == "rareelite") and private.ZONE_IDS[npcID]) then
				local npcInfo = private.ZONE_IDS[npcID]
				if (npcInfo) then
					private.dbglobal.rares_found[npcID] = { mapID = npcInfo.zoneID, coordX = npcInfo.x, coordY = npcInfo.y, atlasName = RareScanner.NPC_VIGNETTE, foundTime = time() }
				else
					local playerCoordX, playerCoordY = C_Map.GetPlayerMapPosition(C_Map.GetBestMapForUnit("player"), "player"):GetXY()
					local playerMapID = C_Map.GetBestMapForUnit("player")
					if (playerMapID and playerMapID ~= 0 and not private.CONTINENT_ZONE_IDS[playerMapID]) then
						private.dbglobal.rares_found[npcID] = { mapID = playerMapID, coordX = playerCoordX, coordY = playerCoordY, atlasName = RareScanner.NPC_VIGNETTE, foundTime = time() }
					end
				end
			elseif (npcID and not private.dbglobal.rares_found[npcID] and DEBUG_MODE) then
				local npcInfo = private.ZONE_IDS[npcID]
				if (npcInfo and npcInfo.zoneID == 0) then
					if (not private.dbglobal.missing_rares) then
						private.dbglobal.missing_rares = {}
					end
					print("|cFFDC143C[RareScanner]: |cFFDC143CDEBUG: ENCONTRADO RARO QUE NO TENIAMOS LOCALIZADO, AUNQUE NO PRESENTA UN VIGNETTE.")
					print("|cFFDC143C[RareScanner]: |cFFDC143CDEBUG: NPCID "..npcID)
					print("|cFFDC143C[RareScanner]: |cFFDC143CDEBUG: ZONA "..C_Map.GetBestMapForUnit("player"))
					print("|cFFDC143C[RareScanner]: |cFFDC143CDEBUG: COORDS "..C_Map.GetPlayerMapPosition(C_Map.GetBestMapForUnit("player"), "player"):GetXY())
					local xx, yy = C_Map.GetPlayerMapPosition(C_Map.GetBestMapForUnit("player"), "player"):GetXY()
					private.dbglobal.missing_rares[npcID] = { zoneID = C_Map.GetBestMapForUnit("player"), x = xx, y = yy }
				elseif (npcInfo and npcInfo.zoneID ~= 0 and npcInfo.x and npcInfo.y) then
					-- Add it to rares_found
					private.dbglobal.rares_found[npcID] = { mapID = npcInfo.zoneID, coordX = npcInfo.x, coordY = npcInfo.y, atlasName = RareScanner.NPC_VIGNETTE, foundTime = time() }
				end
			end
		end
	-- Loot info
	elseif (event == "GET_ITEM_INFO_RECEIVED") then
		local itemID = ...
		for itemFrame in self.LootBar.itemFramesPool:EnumerateActive() do
			if (itemFrame.itemID == itemID) then
				local added = itemFrame:AddItem(itemID, self.LootBar.itemFramesPool:GetNumActive())
				if (added == false) then
					self.LootBar.itemFramesPool:Release(itemFrame)
				end
				break;
			end
		end
	elseif (event == "LOOT_OPENED") then
		local numItems = GetNumLootItems()
		if (not numItems or numItems <= 0) then
			return
		end
		
		for i = 1, numItems do
			if (LootSlotHasItem(i)) then
				local destGUID = GetLootSourceInfo(i)
				local _, _, _, _, _, id = strsplit("-", destGUID)
				local npcID = id and tonumber(id) or nil
				
				if (private.dbglobal.rares_found[npcID] or RS_tContains(private.CONTAINER_LIST, npcID)) then
					if (not private.dbglobal.rares_loot[npcID]) then
						private.dbglobal.rares_loot[npcID] = {}
					end
					
					-- Emulate vignette found
					if (not private.dbglobal.rares_found[npcID]) then
						RareScanner:PrintDebugMessage("DEBUG: Detectado contenedor que tenemos en base de datos pero no tiene vignette "..npcID.. ". Añadido a la lista de rares_found.")
						if (private.CONTAINER_ZONE_IDS[npcID]) then
							private.dbglobal.rares_found[npcID] = { mapID = private.CONTAINER_ZONE_IDS[npcID].zoneID, coordX = private.CONTAINER_ZONE_IDS[npcID].x, coordY = private.CONTAINER_ZONE_IDS[npcID].y, atlasName = RareScanner.CONTAINER_VIGNETTE, foundTime = time() }
						else
							local playerMapID = C_Map.GetBestMapForUnit("player")
							if (playerMapID and playerMapID ~= 0) then
								local xx, yy = C_Map.GetPlayerMapPosition(playerMapID, "player"):GetXY()
								if (xx and yy) then
									private.dbglobal.rares_found[npcID] = { mapID = playerMapID, coordX = xx, coordY = yy, atlasName = RareScanner.CONTAINER_VIGNETTE, foundTime = time() }
								end
							end
						end
					end
					
					-- If its a cointainer check it as opened
					if (private.dbglobal.rares_found[npcID].atlasName == RareScanner.CONTAINER_VIGNETTE or private.dbglobal.rares_found[npcID].atlasName == RareScanner.CONTAINER_ELITE_VIGNETTE) then
						RareScanner:ProcessOpenContainer(npcID)
					end
					
					local itemLink = GetLootSlotLink(i)
					if (itemLink) then
						local _, _, _, ltype, id, _, _, _, _, _, _, _, _, _, name = string.find(itemLink, "|?c?f?f?(%x*)|?H?([^:]*):?(%d+):?(%d*):?(%d*):?(%d*):?(%d*):?(%d*):?(%-?%d*):?(%-?%d*):?(%d*):?(%d*)|?h?%[?([^%[%]]*)%]?|?h?|?r?")
						if (ltype == "item") then
							local itemID = id and tonumber(id) or nil
							if (itemID and (not private.dbglobal.rares_loot[npcID] or not RS_tContains(private.dbglobal.rares_loot[npcID], itemID)) and (not private.LOOT_TABLE_IDS[npcID] or not RS_tContains(private.LOOT_TABLE_IDS[npcID], itemID))) then
								RareScanner:PrintDebugMessage("DEBUG: Añadido nuevo botin "..itemID.." para el NPC/contenedor "..npcID)
								tinsert(private.dbglobal.rares_loot[npcID], itemID)
							end
						end
					end
				else
					if (DEBUG_MODE) then
						-- -- Emulate vignette found
						-- if (not private.dbglobal.rares_found[npcID]) then
							-- RareScanner:PrintDebugMessage("DEBUG: Detectado contenedor que tenemos en base de datos pero no tiene vignette "..npcID.. ". Añadido a la lista de rares_found.")
							-- if (private.CONTAINER_ZONE_IDS[npcID]) then
								-- private.dbglobal.rares_found[npcID] = { mapID = private.CONTAINER_ZONE_IDS[npcID].zoneID, coordX = private.CONTAINER_ZONE_IDS[npcID].x, coordY = private.CONTAINER_ZONE_IDS[npcID].y, atlasName = RareScanner.CONTAINER_VIGNETTE, foundTime = time() }
							-- else
								-- local xx, yy = C_Map.GetPlayerMapPosition(C_Map.GetBestMapForUnit("player"), "player"):GetXY()
								-- private.dbglobal.rares_found[npcID] = { mapID = C_Map.GetBestMapForUnit("player"), coordX = xx, coordY = yy, atlasName = RareScanner.CONTAINER_VIGNETTE, foundTime = time() }
							-- end
						-- end
						
						-- -- If its a cointainer check it as opened
						-- if (private.dbglobal.rares_found[npcID].atlasName == RareScanner.CONTAINER_VIGNETTE or private.dbglobal.rares_found[npcID].atlasName == RareScanner.CONTAINER_ELITE_VIGNETTE) then
							-- RareScanner:ProcessOpenContainer(npcID)
						-- end
					
						if (RS_tContains(destGUID, "GameObject")) then
							RareScanner:PrintDebugMessage("DEBUG: Abierto contenedor que no estamos contemplando en nuestra lista "..destGUID)
							local itemLink = GetLootSlotLink(i)
							if (itemLink) then
								local _, _, _, ltype, id, _, _, _, _, _, _, _, _, _, name = string.find(itemLink, "|?c?f?f?(%x*)|?H?([^:]*):?(%d+):?(%d*):?(%d*):?(%d*):?(%d*):?(%d*):?(%-?%d*):?(%-?%d*):?(%d*):?(%d*)|?h?%[?([^%[%]]*)%]?|?h?|?r?")
								if (ltype == "item") then
									local itemID = id and tonumber(id) or nil
									if (itemID and (not private.dbglobal.rares_loot[npcID] or not RS_tContains(private.dbglobal.rares_loot[npcID], itemID)) and (not private.LOOT_TABLE_IDS[npcID] or not RS_tContains(private.LOOT_TABLE_IDS[npcID], itemID))) then
										RareScanner:PrintDebugMessage("DEBUG: Añadido nuevo botin "..itemID.." para el contenedor "..npcID)
										if (not private.dbglobal.rares_loot[npcID]) then
											private.dbglobal.rares_loot[npcID] = {}
										end
										tinsert(private.dbglobal.rares_loot[npcID], itemID)
									end
								end
							end
						end
					end
				end
			end
		end
	-- Communications
	elseif (event == "GROUP_JOINED") then
		RareScanner.numPlayers = GetNumGroupMembers()
		RareScanner:RequestGroupDataOnChange()
	elseif (event == "GROUP_ROSTER_UPDATE") then
		-- checks if new player joined
		if (IsInGroup()) then
			if (IsInInstance()) then
				RareScanner:PrintDebugMessage("DEBUG: Estas en una estancia, no enviamos mensajes")
				return
			end
			RareScanner:RequestGroupDataOnChange()
		else
			RareScanner.numPlayers = 0
			if (SEND_DATA_PARTY_TIMER) then
				SEND_DATA_PARTY_TIMER:Cancel()
			end
		end
	elseif (event == "GUILD_ROSTER_UPDATE") then
		RareScanner:PrintDebugMessage("DEBUG: Informacion de la hermandad obtenida")
		
		if (not guildiesNames) then
			guildiesNames = {}
			local i = 1
			while (i <= GetNumGuildMembers()) do
				local name, _, _ = GetGuildRosterInfo(i)
				table.insert(guildiesNames, name)
				i = i + 1
			end
		end
		
		self:UnregisterEvent("GUILD_ROSTER_UPDATE")
	elseif (event == "CINEMATIC_START") then
		if (self:IsVisible()) then
			self:HideButton()
		end
	else
		return
	end
end)

function RareScanner:ProcessKill(npcID)
	-- Mark as killed
	if (npcID and private.dbglobal.rares_found[npcID] and private.ZONE_IDS[npcID]) then
		-- If its a world quest reseteable rare
		if (RS_tContains(private.RESETABLE_KILLS_ZONE_IDS, private.ZONE_IDS[npcID].zoneID) or RS_tContains(private.RESETABLE_KILLS_ZONE_IDS, private.dbglobal.rares_found[npcID].mapID)) then
			RareScanner:PrintDebugMessage("DEBUG: Se ha detectado que el rare matado con ID "..npcID.." pertenece a una zona reseteable con las misiones del mundo")
			private.dbchar.rares_killed[npcID] = time() + GetQuestResetTime()
		-- If its a warfront reseteable rare
		elseif (RS_tContains(private.RESETABLE_WARFRONT_KILLS_ZONE_IDS, private.ZONE_IDS[npcID].zoneID) or RS_tContains(private.RESETABLE_WARFRONT_KILLS_ZONE_IDS, private.dbglobal.rares_found[npcID].mapID)) then
			RareScanner:PrintDebugMessage("DEBUG: Se ha detectado que el rare matado con ID "..npcID.." pertenece a una zona reseteable cada 2 semanas")
			private.dbchar.rares_killed[npcID] = RareScanner:GetWarFrontResetTime()
		-- If it wont ever be a rare anymore
		elseif (RS_tContains(private.PERMANENT_KILLS_ZONE_IDS, private.ZONE_IDS[npcID].zoneID) or RS_tContains(private.PERMANENT_KILLS_ZONE_IDS, private.dbglobal.rares_found[npcID].mapID)) then
			RareScanner:PrintDebugMessage("DEBUG: Se ha detectado que el rare matado deja de ser rare eternamente")
			private.dbchar.rares_killed[npcID] = ETERNAL_DEATH
		end
		-- If it respawns after a while we dont need to keep track of death
	-- Mark as killed (ignored NPC)
	elseif (npcID and private.ZONE_IDS[npcID]) then
		-- If its a world quest reseteable rare
		if (RS_tContains(private.RESETABLE_KILLS_ZONE_IDS, private.ZONE_IDS[npcID].zoneID)) then
			RareScanner:PrintDebugMessage("DEBUG: Se ha detectado que el rare matado con ID "..npcID.." pertenece a una zona reseteable con las misiones del mundo")
			private.dbchar.rares_killed[npcID] = time() + GetQuestResetTime()
		-- If its a warfront reseteable rare
		elseif (RS_tContains(private.RESETABLE_WARFRONT_KILLS_ZONE_IDS, private.ZONE_IDS[npcID].zoneID)) then
			RareScanner:PrintDebugMessage("DEBUG: Se ha detectado que el rare matado con ID "..npcID.." pertenece a una zona reseteable cada 2 semanas")
			private.dbchar.rares_killed[npcID] = RareScanner:GetWarFrontResetTime()
		-- If it wont ever be a rare anymore
		elseif (RS_tContains(private.PERMANENT_KILLS_ZONE_IDS, private.ZONE_IDS[npcID].zoneID)) then
			RareScanner:PrintDebugMessage("DEBUG: Se ha detectado que el rare matado deja de ser rare eternamente")
			private.dbchar.rares_killed[npcID] = ETERNAL_DEATH
		end
	-- Just in case we dont have this element in our zone ids (some vignettes with wrong names or double vignette)
	-- We can ignore this ones
	elseif (npcID) then
		private.dbchar.rares_killed[npcID] = ETERNAL_DEATH
	end
end

function RareScanner:ProcessOpenContainer(npcID)
	-- Mark as opened
	if (npcID and private.dbglobal.rares_found[npcID]) then
		local zoneID = C_Map.GetBestMapForUnit("player")
	
		-- some containers have special timers
		if (private.CONTAINER_TIMER[npcID]) then
			private.dbchar.containers_opened[npcID] = time() + private.CONTAINER_TIMER[npcID]
		-- If its a container that belong to a place with reseteable rares/containers
		elseif (RS_tContains(private.RESETABLE_KILLS_ZONE_IDS, zoneID) or RS_tContains(private.RESETABLE_KILLS_ZONE_IDS, private.dbglobal.rares_found[npcID].mapID) or (private.dbglobal.containers_reseteable and private.dbglobal.containers_reseteable[npcID])) then
			RareScanner:PrintDebugMessage("DEBUG: Se ha detectado que el contenedor abierto con ID "..npcID.." pertenece a una zona reseteable con las misiones del mundo")
			private.dbchar.containers_opened[npcID] = time() + GetQuestResetTime()
		-- If it disapears once its opened
		elseif (RS_tContains(private.PERMANENT_KILLS_ZONE_IDS, zoneID) or RS_tContains(private.PERMANENT_KILLS_ZONE_IDS, private.dbglobal.rares_found[npcID].mapID)) then
			RareScanner:PrintDebugMessage("DEBUG: Se ha detectado que el contenedor abierto no se puede volver a abrir")
			private.dbchar.containers_opened[npcID] = ETERNAL_COLLECTED
		end
		-- Otherwise let it be
	-- Mark as opened (ignored container)
	elseif (npcID) then
		-- If its a container that belong to a place with reseteable rares/containers
		local zoneID = C_Map.GetBestMapForUnit("player")
		if (RS_tContains(private.RESETABLE_KILLS_ZONE_IDS, zoneID) or (private.dbglobal.containers_reseteable and private.dbglobal.containers_reseteable[npcID])) then
			RareScanner:PrintDebugMessage("DEBUG: Se ha detectado que el contenedor abierto con ID "..npcID.." pertenece a una zona reseteable con las misiones del mundo")
			private.dbchar.containers_opened[npcID] = time() + GetQuestResetTime()
		-- If it disapears once its opened
		elseif (RS_tContains(private.PERMANENT_KILLS_ZONE_IDS, zoneID)) then
			RareScanner:PrintDebugMessage("DEBUG: Se ha detectado que el contenedor abierto no se puede volver a abrir")
			private.dbchar.containers_opened[npcID] = ETERNAL_COLLECTED
		end
	end
end

function RareScanner:ProcessCompletedEvent(npcID)
	RareScanner:PrintDebugMessage("DEBUG: Se ha detectado que el evento ya se ha completado")
	private.dbchar.events_completed[npcID] = ETERNAL_COMPLETED
end

-- Checks if the rare has been found already in the last 5 minutes
local already_notified = {}
function scanner_button:CheckNotificationCache(self, id)	
	-- Get viggnette data
	local vignetteInfo = C_VignetteInfo.GetVignetteInfo(id)
	if (not vignetteInfo) then
		return
	end

	local iconid = vignetteInfo.atlasName
	local name = vignetteInfo.name
	local _, _, _, _, _, npcID, _ = strsplit("-", vignetteInfo.objectGUID);
	
	if (npcID) then
		if name == '小宝箱' then
			return
		end
		npcID = tonumber(npcID)
		RareScanner:ReportRareFound(npcID, vignetteInfo)
	end
	
	-- Options disabled/enabled
	if (iconid) then
		local zone_id = C_Map.GetBestMapForUnit("player")
		-- disable ALL alerts in instances
		local isInstance, instanceType = IsInInstance()
		if (isInstance == true and not private.db.general.scanInstances) then
			return
		-- disable every iconid that is not treasure, event or rare
		elseif (iconid ~= RareScanner.CONTAINER_VIGNETTE and iconid ~= RareScanner.CONTAINER_ELITE_VIGNETTE and iconid ~= RareScanner.NPC_VIGNETTE and iconid ~= RareScanner.EVENT_VIGNETTE and iconid ~= RareScanner.NPC_LEGION_VIGNETTE) then
			return
		-- disable ALL alerts for containers
		elseif ((iconid == RareScanner.CONTAINER_VIGNETTE or iconid == RareScanner.CONTAINER_ELITE_VIGNETTE) and not private.db.general.scanContainers) then
			return
		-- disable alerts for rares NPCs
		elseif ((iconid == RareScanner.NPC_VIGNETTE or iconid == RareScanner.NPC_LEGION_VIGNETTE) and not private.db.general.scanRares) then
			return
		-- disable alerts for events
		elseif (iconid == RareScanner.EVENT_VIGNETTE and not private.db.general.scanEvents) then
			return
		-- disable zones alerts if the player is in that zone
		elseif (next(private.db.general.filteredZones) ~= nil and private.db.general.filteredZones[zone_id] == false) then
			return
		-- disable alerts for containers
		elseif (iconid == RareScanner.CONTAINER_VIGNETTE or iconid == RareScanner.CONTAINER_ELITE_VIGNETTE) then
			-- save object name just in case we need it in the future
			RareScanner:SetObjectName(npcID, name)
			
			-- disable garrison container alert
			if (not private.db.general.scanGarrison) then
				-- check if the container is the garrison cache
				if (RS_tContains(RareScanner.GARRISON_CACHE_IDS, npcID)) then
					RareScanner:PrintDebugMessage("DEBUG: Detectado cofre de la ciudadela filtrado")
					return
				end
			end
			
			-- disable button alert for containers
			if (not private.db.display.displayButtonContainers) then
				if already_notified[id] then
					return
				else
					already_notified[id] = true
					if name == '小宝箱' then
						return
					end
					self:PlaySoundAlert(iconid)
					self:DisplayMessages(name)
					return
				end
			end
			
			-- some containers belong to places where rares die forever
			-- and anyway, this containers can respawn every day
			-- so if this is the case, mark it as an exception
			if (private.dbchar.containers_opened[npcID] and private.dbchar.containers_opened[npcID] == ETERNAL_COLLECTED) then
				if (not private.dbglobal.containers_reseteable) then
					private.dbglobal.containers_reseteable = {}
				end
				
				RareScanner:PrintDebugMessage("DEBUG: Detectado un cofre que estaba marcado como que no se puede volver a abrir, y sin embargo nos lo hemos vuelto a encontrar")
				private.dbglobal.containers_reseteable[npcID] = true
				private.dbchar.containers_opened[npcID] = nil
			end
			
		-- saves event name
		elseif (iconid == RareScanner.EVENT_VIGNETTE) then
			-- check just in case its an NPC
			if (not RareScanner:GetNpcName(npcID)) then
				RareScanner:SetEventName(npcID, name)
			end
		end
	else
		return
	end
	
	-- Check if we have found the NPC in the last 5 minutes
	if (already_notified[id]) then
		return
	else
		already_notified[id] = true
	end

	-- Filters NPC by zone just in case it belong to a different are from the current player's position
	if (npcID and RareScanner:ZoneFiltered(npcID)) then
		return
	end
	
	-- Check if the NPC is filtered, in which case we don't show anything
	if (npcID and next(private.db.general.filteredRares) ~= nil and private.db.general.filteredRares[npcID] == false) then
		return
	end
	
	---------------------------------------
	-- log previous button if it was a NPC
	---------------------------------------
	if (self.npcID and self.npcID ~= npcID) then
		RareScanner:RegisterPreviousButton(self.npcID, self.name, self.iconid)
	end
	
	--------------------------------
	-- show messages and play alarm
	--------------------------------
	self:DisplayMessages(name)
	self:PlaySoundAlert(iconid)
	
	------------------------
	-- set up new button
	------------------------
	if (private.db.display.displayButton) then
		self.npcID = npcID
		self.name = name
		self.iconid = iconid
		
		-- If NPC identified properly load its model
		if (npcID) then			
			local displayID = private.NPC_DISPLAY_IDS[npcID]
			if (displayID and displayID ~= 0) then
				self.displayID = displayID
			else
				self.displayID = nil
			end
		else
			self.displayID = nil
		end

		-- Show button / miniature / loot bar if not in combat
		if (not InCombatLockdown()) then	
			-- Wow API doesnt allow to call Show() (protected function) if you are under attack, so
			-- we check if this is the situation to avoid it and show the frames
			-- once the battle is over (pendingToShow)
			self:ShowButton()
		else
			-- Mark to show after combat
			self.pendingToShow = true
		end
	end
	
	-- timer to reset already found NPC
	C_Timer.After(RESCAN_TIMER, function() 
		already_notified[id] = false 
	end)
end

function RareScanner:ZoneFiltered(npcID)
	if (not private.ZONE_IDS[npcID] and not private.CONTAINER_ZONE_IDS[npcID] and not private.EVENT_ZONE_IDS[npcID]) then
		RareScanner:PrintDebugMessage("DEBUG: Se ha detectado un NPC sin zona asignada "..npcID)
		return false
	end
	if (next(private.db.general.filteredZones) ~= nil) then
		-- If npc
		if (private.ZONE_IDS[npcID]) then
			-- if the npc shows up in more than one place
			if (type(private.ZONE_IDS[npcID].zoneID) == "table") then
				local found = false;
				for i, v in ipairs(private.ZONE_IDS[npcID].zoneID) do
					if (private.db.general.filteredZones[v] == false) then
						found = true;
						break;
					end
				end
				
				if (found) then
					return true
				end
			-- if the npc shows up only in one place
			elseif (private.db.general.filteredZones[private.ZONE_IDS[npcID].zoneID] == false) then
				return true
			end
		-- If container
		elseif (private.CONTAINER_ZONE_IDS[npcID] and private.db.general.filteredZones[private.CONTAINER_ZONE_IDS[npcID].zoneID] == false) then
			return true
		-- If event
		elseif (private.EVENT_ZONE_IDS[npcID] and private.db.general.filteredZones[private.EVENT_ZONE_IDS[npcID].zoneID] == false) then
			return true
		end
	end
	
	return false
end

function scanner_button:PlaySoundAlert(iconid)
	if (not private.db.sound.soundDisabled) then
		if (iconid == RareScanner.CONTAINER_VIGNETTE or iconid == RareScanner.EVENT_VIGNETTE or iconid == RareScanner.CONTAINER_ELITE_VIGNETTE) then
			PlaySoundFile(string.gsub(private.SOUNDS[private.db.sound.soundObjectPlayed], "-4", "-"..private.db.sound.soundVolume), "Master")
		else
			PlaySoundFile(string.gsub(private.SOUNDS[private.db.sound.soundPlayed], "-4", "-"..private.db.sound.soundVolume), "Master")
		end
	end
end

function scanner_button:DisplayMessages(name)
	if (name) then
		if (private.db.display.displayRaidWarning) then
			RaidNotice_AddMessage(RaidWarningFrame, string.format(AL["JUST_SPAWNED"], name), ChatTypeInfo["RAID_WARNING"], DEFAULT_RAID_NOTICE_TIME)
		end
		
		-- Print message in chat if user wants
		if (private.db.display.displayChatMessage) then
			RareScanner:PrintMessage(string.format(AL["JUST_SPAWNED"], name))
		end
	else
		if (private.db.display.displayRaidWarning) then
			RaidNotice_AddMessage(RaidWarningFrame, AL["ALARM_MESSAGE"], ChatTypeInfo["RAID_WARNING"], DEFAULT_RAID_NOTICE_TIME)
		end
	end
end

-- Hide action
function scanner_button:HideButton() 
	if (not InCombatLockdown()) then
		GameTooltip:Hide()
		scanner_button.ModelView:ClearModel()
		scanner_button.ModelView:Hide()
		scanner_button:Hide()
	else
		scanner_button.pendingToHide = true
	end
end

-- Show action
function scanner_button:ShowButton()
	-- Sets the name
	self.Title:SetText(self.name)
	
	-- Show button, model and loot panel
	if (self.npcID and (self.iconid == RareScanner.NPC_VIGNETTE or self.iconid == RareScanner.NPC_LEGION_VIGNETTE)) then
		self.Description_text:SetText(AL["CLICK_TARGET"])
		
		self:SetAttribute("macrotext", "/cleartarget\n/targetexact "..self.name.."\n/tm 8")
		
		-- show button
		self:Show()
	
		-- show model
		if (self.displayID and private.db.display.displayMiniature) then
			self.ModelView:SetDisplayInfo(self.displayID)
			self.ModelView:Show()
		else
			self.ModelView:Hide()
		end
		
		-- Hide reset filter if it was shown
		self.FilterEnabledButton:Hide()
				
		-- Show filter button
		self.FilterDisabledButton:Show()
		
		-- show loot bar
		if (private.db.loot.displayLoot) then
			self:LoadLootBar()
			-- call a second time just in case the game took
			-- too long to fetch their data and they rendered 
			-- acuardly
			C_Timer.After(2, function() 
				self:LoadLootBar()
			end)
		end
	else
		self.Description_text:SetText(AL["NOT_TARGETEABLE"])
		
		-- hide model if displayed
		self:SetAttribute("macrotext", private.macrotext)
		self.ModelView:ClearModel()
		self.ModelView:Hide()
		
		-- hide filter button if displayed
		self.FilterDisabledButton:Hide()
		self.FilterEnabledButton:Hide()
		
		-- hide loot items
		self:LoadLootBar()
		
		-- show button
		self:Show()
	end
	
	-- set the time to auto hide
	self:StartHideTimer()
end

function scanner_button:LoadLootBar() 
	self.LootBar.itemFramesPool:ReleaseAll()

	-- Extract NPC loot
	if (self.npcID) then
		local itemIDs = RareScanner:GetNpcLoot(self.npcID)

		if (itemIDs) then
			local numItems = private.db.loot.numItems
			for i, itemID in ipairs(itemIDs) do
				if (i <= numItems) then
					local itemFrame = self.LootBar.itemFramesPool:Acquire()
					local added = itemFrame:AddItem(itemID, self.LootBar.itemFramesPool:GetNumActive())
					if (added == false) then
						self.LootBar.itemFramesPool:Release(itemFrame)
						numItems = numItems + 1
					end
				else 
					break
				end
			end
		end
	end
end

function RareScanner:GetNpcLoot(npcID)
	local itemIDs
	if (private.LOOT_TABLE_IDS[npcID]) then
		itemIDs = private.LOOT_TABLE_IDS[npcID]
		if (private.dbglobal.rares_loot[npcID]) then
			for _,v in ipairs(private.dbglobal.rares_loot[npcID]) do 
				if (not RS_tContains(itemIDs, v)) then
					table.insert(itemIDs, v)
				end
			end
		end
	elseif (private.dbglobal.rares_loot[npcID]) then
		itemIDs = private.dbglobal.rares_loot[npcID]
	end
	
	return itemIDs
end

function scanner_button:StartHideTimer()
	if (private.db.display.autoHideButton ~= 0) then
		if (AUTOHIDING_TIMER) then
			AUTOHIDING_TIMER:Cancel()
		end
		AUTOHIDING_TIMER = C_Timer.NewTimer(private.db.display.autoHideButton, function() 
			RareScanner:RegisterPreviousButton(scanner_button.npcID, scanner_button.name, scanner_button.iconid)
			scanner_button:HideButton() 
		end)
	end
end

function RareScanner:RefreshRaresFoundList()
	if (not private.dbglobal.rares_found) then
		private.dbglobal.rares_found = {}
	end
	
	-- resets killed timer
	for k, v in pairs (private.dbchar.rares_killed) do
		if (v and v ~= ETERNAL_DEATH and v < time()) then
			private.dbchar.rares_killed[k] = nil
		end
	end
	
	-- resets opened timer
	for k, v in pairs (private.dbchar.containers_opened) do
		if (v and v ~= ETERNAL_COLLECTED and v < time()) then
			private.dbchar.containers_opened[k] = nil
		end
	end
	
	if (not CLEAN_RARES_FOUND_TIMER) then
		CLEAN_RARES_FOUND_TIMER = C_Timer.NewTimer(CLEAN_RARES_FOUND_DELAY, function() 
			RareScanner:RefreshRaresFoundList()
		end)
	end
end

----------------------------------------------
-- Testing
----------------------------------------------
function RareScanner:Test() 
	local npcTestName = "Time-Lost Proto-Drake"
	local npcTestID = 32491
	local npcTestDisplayID = 26711
	
	scanner_button.npcID = npcTestID
	scanner_button.name = npcTestName
	scanner_button.displayID = npcTestDisplayID
	scanner_button.Title:SetText(npcTestName)
	scanner_button:DisplayMessages(npcTestName)
	scanner_button:PlaySoundAlert(RareScanner.NPC_VIGNETTE)
	scanner_button.Description_text:SetText(AL["CLICK_TARGET"])
	
	if (not InCombatLockdown()) then	
		scanner_button:ShowButton()
		scanner_button.FilterDisabledButton:Hide()
	end
	
	RareScanner:PrintMessage("test launched")
end

----------------------------------------------
-- Loading addon methods
----------------------------------------------
function RareScanner:OnInitialize() 	
	-- Init database
	self:InitializeDataBase()
	
	-- Initialize setup panels
	self:SetupOptions()
	
	-- Forzes obtain roster data for group finder matters
	GuildRoster()
	
	-- Setup our map provider
	WorldMapFrame:AddDataProvider(CreateFromMixins(RareScannerDataProviderMixin));
	
	-- Internal not discovered lists
	self:LoadNotDiscoveredLists()
	
	--Adds new menu to world map
	RareScanner:HookDropDownMenu()

	self:PrintMessage("loaded")
end

function RareScanner:InitializeDataBase()
	-- Initialize zone filter list
	for k, v in pairs(private.CONTINENT_ZONE_IDS) do 
		table.foreach(v.zones, function(index, zoneID)
			PROFILE_DEFAULTS.profile.general.filteredZones[zoneID] = true
		end)
	end
	
	-- Initialize loot filter list
	for categoryID, subcategories in pairs(private.ITEM_CLASSES) do 
		table.foreach(subcategories, function(index, subcategoryID)
			if (not PROFILE_DEFAULTS.profile.loot.filteredLootCategories[categoryID]) then
				PROFILE_DEFAULTS.profile.loot.filteredLootCategories[categoryID] = {}
			end
			
			PROFILE_DEFAULTS.profile.loot.filteredLootCategories[categoryID][subcategoryID] = true
		end)
	end
	
	-- Initialize database
	self.db = LibStub("AceDB-3.0"):New("RareScannerDB", PROFILE_DEFAULTS)
	
	-- Reset entire database
	if (not self.db.global.addonVersion or (self.db.global.addonVersion ~= CURRENT_ADDON_VERSION and HARD_RESET[CURRENT_ADDON_VERSION])) then
		self.db:ResetDB()
		self.db.global.addonVersion = CURRENT_ADDON_VERSION
		self:PrintMessage(AL["DATABASE_HARD_RESET"])
		
		-- Reload database
		RareScanner:InitializeDataBase()
	-- Loads normally database
	else
		self.db.RegisterCallback(self, "OnProfileChanged", "RefreshOptions")
		self.db.RegisterCallback(self, "OnProfileCopied", "RefreshOptions")
		self.db.RegisterCallback(self, "OnProfileReset", "RefreshOptions")
		private.db = self.db.profile
		private.dbchar = self.db.char
		private.dbglobal = self.db.global
		
		-- Initialize char database
		if (not private.dbchar.rares_killed) then
			private.dbchar.rares_killed = {}
		end
		
		if (not private.dbchar.containers_opened) then
			private.dbchar.containers_opened = {}
		end
		
		if (not private.dbchar.events_completed) then
			private.dbchar.events_completed = {}
		end
		
		-- Initialize global database
		if (not private.dbglobal.rares_found) then
			private.dbglobal.rares_found = {}
		end
		
		if (not private.dbglobal.rares_loot) then
			private.dbglobal.rares_loot = {}
		end
	  
		-- Adds about panel to wow options
		local about_panel = LibStub:GetLibrary("LibAboutPanel", true)
		if (about_panel) then
			self.optionsFrame = about_panel.new(nil, "RareScanner")
		end
		
		-- Refresh rare sharing variables
		self:RefreshRaresFoundList()
		
		-- Request to the guild their rare founds
		RareScanner:RequestGuildData()
		
		-- Cache names and initialize filter list
		if (not private.dbglobal.dbversion) then
			private.dbglobal.dbversion = {}
			self:LoadRareNames(self.db)
		else
			local dbversionFound = false
			for i, dbversion in ipairs(private.dbglobal.dbversion) do
				if (dbversion.locale == GetLocale() and dbversion.version == CURRENT_DB_VERSION) then
					dbversionFound = true
					break;
				end
			end

			if (not dbversionFound) then
				self:LoadRareNames(self.db)
			else
				-- Initialize rare filter list
				for k, v in pairs(private.dbglobal.rare_names[GetLocale()]) do 
					PROFILE_DEFAULTS.profile.general.filteredRares[k] = true
				end

				self:PrintDebugMessage("DEBUG: Base de datos actualizada...")
				self.db:RegisterDefaults(PROFILE_DEFAULTS)
			end
		end
		
		-- Sync loot found with internal database and clear mistakes
		if (not private.dbglobal.lootdbversion or private.dbglobal.lootdbversion < CURRENT_LOOT_DB_VERSION) then
			private.dbglobal.lootdbversion = CURRENT_LOOT_DB_VERSION
			self:DumpRepeatedLoot()
		end
		
		-- Fix possible errors in database
		self:DumpBrokenData()
	end
end

function RareScanner:DumpBrokenData()
	if (private.dbglobal.rares_found and next(private.dbglobal.rares_found) ~= nil) then
		for npcID, npcInfo in pairs(private.dbglobal.rares_found) do
			if (not npcInfo.mapID or npcInfo.mapID == 0 or not npcInfo.coordY or not npcInfo.coordX) then
				private.dbglobal.rares_found[npcID] = nil
			end
		end
	end
end

function RareScanner:DumpRepeatedLoot()
	if (private.dbglobal.rares_loot and next(private.dbglobal.rares_loot) ~= nil) then
		for npcID, items in pairs(private.dbglobal.rares_loot) do
			local cleanItemsList = {}
			
			if (private.LOOT_TABLE_IDS[npcID]) then
				for _, itemID in ipairs(items) do
					if (not RS_tContains(private.LOOT_TABLE_IDS[npcID], itemID) and not RS_tContains(cleanItemsList, itemID)) then
						table.insert(cleanItemsList, itemID)
					end
				end
			elseif (private.dbglobal.rares_loot[npcID]) then
				for _, itemID in ipairs(items) do
					if (not RS_tContains(cleanItemsList, itemID)) then
						table.insert(cleanItemsList, itemID)
					end
				end
			end
			
			if (next(cleanItemsList) ~= nil) then
				private.dbglobal.rares_loot[npcID] = cleanItemsList
			else
				private.dbglobal.rares_loot[npcID] = nil
			end
		end
	end
end

function RareScanner:MarkCompletedAchievements()
	for achievementID, entities in pairs(private.ACHIEVEMENT_TARGET_IDS) do
		local _, _, _, completed, _, _, _, _, _, _, _, _, wasEarnedByMe, _ = GetAchievementInfo(achievementID)
		if (completed and wasEarnedByMe) then
			for i, npcID in ipairs(entities) do
				if (private.ZONE_IDS[npcID] and not private.dbchar.rares_killed[npcID]) then
					private.dbchar.rares_killed[npcID] = ETERNAL_DEATH
				elseif (private.CONTAINER_ZONE_IDS[npcID] and not private.dbchar.containers_opened[npcID]) then
					private.dbchar.containers_opened[npcID] = ETERNAL_COLLECTED
				elseif (private.EVENT_ZONE_IDS[npcID] and not private.dbchar.events_completed[npcID]) then
					private.dbchar.events_completed[npcID] = ETERNAL_COMPLETED
				end
			end
		elseif (not completed) then
			local numCriteria = GetAchievementNumCriteria(achievementID);
			if (numCriteria > 0) then
				for criteriaIndex = 1, numCriteria do
					local criteriaString, _, criteriaCompleted, _, _, _, _, npcID, _, _, _, _, _ = GetAchievementCriteriaInfo(achievementID, criteriaIndex);
					if (criteriaCompleted) then
						if (private.ZONE_IDS[npcID] and not private.dbchar.rares_killed[npcID]) then
							private.dbchar.rares_killed[npcID] = ETERNAL_DEATH
						elseif (private.CONTAINER_ZONE_IDS[npcID] and not private.dbchar.containers_opened[npcID]) then
							private.dbchar.containers_opened[npcID] = ETERNAL_COLLECTED
						elseif (private.EVENT_ZONE_IDS[npcID] and not private.dbchar.events_completed[npcID]) then
							private.dbchar.events_completed[npcID] = ETERNAL_COMPLETED
						else
							for npcID, name in pairs (private.dbglobal.rare_names[GetLocale()]) do
								if (RS_tContains(name, criteriaString)) then
									private.dbchar.rares_killed[npcID] = ETERNAL_DEATH
									break
								end
							end
						end
					end
				end
			end
		end
	end
	
	RareScanner:PrintMessage(AL["SYNCRONIZATION_COMPLETED"])
end

function RareScanner:LoadNotDiscoveredList(originList, destinyList)
	for k, v in pairs (originList) do
		if (v.zoneID ~= 0 and v.x and v.y and not private.dbglobal.rares_found[k] and (not private.dbglobal.rares_not_discovered_ignored or not private.dbglobal.rares_not_discovered_ignored[k])) then
			if (not destinyList[v.zoneID]) then
				destinyList[v.zoneID] = {}
			end
			
			destinyList[v.zoneID][k] = {}
			destinyList[v.zoneID][k].x = v.x
			destinyList[v.zoneID][k].y = v.y
		end
	end
end

function RareScanner:LoadNotDiscoveredLists()
	private.RARES_NOT_DISCOVERED = {}
	self:LoadNotDiscoveredList(private.ZONE_IDS, private.RARES_NOT_DISCOVERED)
	
	private.CONTAINERS_NOT_DISCOVERED = {}
	self:LoadNotDiscoveredList(private.CONTAINER_ZONE_IDS, private.CONTAINERS_NOT_DISCOVERED)
	
	private.EVENTS_NOT_DISCOVERED = {}
	self:LoadNotDiscoveredList(private.EVENT_ZONE_IDS, private.EVENTS_NOT_DISCOVERED)
end

function RareScanner:LoadRareNames(db)
	if (not private.dbglobal.rare_names) then
		private.dbglobal.rare_names = {}
	end
	
	self:PrintDebugMessage("DEBUG: No existe una base de datos de nombres actualizada para el idioma "..GetLocale()..". Actualizando datos...")
	local localeFound = false
	for i, dbversion in ipairs(private.dbglobal.dbversion) do
		if (dbversion.locale == GetLocale()) then
			dbversion.version = CURRENT_DB_VERSION
			localeFound = true
			break;
		end
	end

	if (not localeFound) then
		tinsert(private.dbglobal.dbversion, { locale = GetLocale(), version = CURRENT_DB_VERSION })
	end

	private.dbglobal.rare_names[GetLocale()] = {}
	
	local ITERATIONS = 5
	current_iteration = 0
	local ticker = C_Timer.NewTicker(1, function()
		for i, npcID in ipairs(private.RARE_LIST) do
			RareScanner:GetNpcName(npcID);
		end
		current_iteration = current_iteration + 1
		
		if (current_iteration == ITERATIONS) then					
			-- Initialize rare filter list
			for k, v in pairs(private.dbglobal.rare_names[GetLocale()]) do 
				PROFILE_DEFAULTS.profile.general.filteredRares[k] = true
			end

			RareScanner:PrintDebugMessage("DEBUG: Base de datos actualizada...")
			db:RegisterDefaults(PROFILE_DEFAULTS)
			
			-- Mark as killed or collected achievement entities
			-- We might need the rare names, so we have to do it here
			self:MarkCompletedAchievements()
		end
	end, ITERATIONS);
end

function RareScanner:PrintMessage(message) 
	print(AddonTitle..": |cFFFFFFFF"..message)
end

function RareScanner:PrintDebugMessage(message) 
	if (DEBUG_MODE) then
		print("|cFFDC143C[RareScanner]: |cFFFFFFFF"..tostring(message))
	end
end

function RareScanner:GetOptionsTable()
	return LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db, PROFILE_DEFAULTS)
end

function RS_tContains(cTable, item)
	if (not cTable or not item) then
		return false
	end

	if (type(cTable) == "table") then
		for k, v in pairs(cTable) do
			if (type(v) == "table") then
				return RS_tContains(v, item)
			elseif (type(item) == "table") then
				return RS_tContains(item, v)
			elseif (type(v) == "string" and string.find(string.upper(v), string.upper(item))) then
				return true;
			elseif (v == item) then
				return true;
			end
		end
	else
		if (type(item) == "table") then
			return RS_tContains(item, cTable)
		elseif (type(cTable) == "string" and string.find(string.upper(cTable), string.upper(item))) then
			return true;
		elseif (cTable == item) then
			return true;
		end
	end
	
	return false;
end

local QTips = {}

local QUEST_TIMEOUT = 0.3
local function GetQTip()
	local now = GetTime()
	for i, tip in ipairs(QTips) do
		if not tip.npcID or now - tip.lastUpdate > QUEST_TIMEOUT + 0.2 then
			tip.lastUpdate = now
			return tip
		end
	end
	local tip = CreateFrame('GameTooltip',  'SemlarsQTip' .. (#QTips + 1), WorldFrame, 'GameTooltipTemplate')
	tip:Show()
	tip:SetHyperlink('unit:')
	tip.lastUpdate = now
	tinsert(QTips, tip)
	return tip
end

function RareScanner:GetObjectName(objectID)
	if (private.dbglobal.object_names and private.dbglobal.object_names[GetLocale()]) then
		return private.dbglobal.object_names[GetLocale()][objectID]
	end
end

function RareScanner:SetObjectName(objectID, name)
	if (not private.dbglobal.object_names) then
		private.dbglobal.object_names = {}
	end
	if (not private.dbglobal.object_names[GetLocale()]) then
		private.dbglobal.object_names[GetLocale()] = {}
	end
	if (not private.dbglobal.object_names[GetLocale()][objectID]) then
		private.dbglobal.object_names[GetLocale()][objectID] = name
	end
end

function RareScanner:GetEventName(eventID)
	if (private.dbglobal.event_names and private.dbglobal.event_names[GetLocale()]) then
		return private.dbglobal.event_names[GetLocale()][eventID]
	end
end

function RareScanner:SetEventName(eventID, name)
	if (not private.dbglobal.event_names) then
		private.dbglobal.event_names = {}
	end
	if (not private.dbglobal.event_names[GetLocale()]) then
		private.dbglobal.event_names[GetLocale()] = {}
	end
	if (not private.dbglobal.event_names[GetLocale()][eventID]) then
		private.dbglobal.event_names[GetLocale()][eventID] = name
	end
end

function RareScanner:GetNpcName(npcID)
	if (private.dbglobal.rare_names[GetLocale()][npcID]) then
		return private.dbglobal.rare_names[GetLocale()][npcID]
	end
	
	local tip = GetQTip()
	tip:SetOwner(WorldFrame, 'ANCHOR_NONE')
	tip.npcID = npcID or 0
	tip:SetScript('OnTooltipSetUnit', function(self) 
		local tipName = self:GetName()
		local name, description = _G[tipName .. 'TextLeft1']:GetText(), _G[tipName ..'TextLeft2']:GetText()
		if name then
			private.dbglobal.rare_names[GetLocale()][self.npcID] = name
		end
		self:SetScript('OnTooltipSetUnit', nil)
		self.npcID = nil
	end)
	tip:SetHyperlink('unit:Creature-0-0-0-0-' .. npcID .. '-0')
end

function RareScanner:GetServerOffset()
	local serverDate = C_Calendar.GetDate()
	local serverDay, serverWeekday, serverMonth, serverMinute, serverHour, serverYear = serverDate.monthDay, serverDate.weekday, serverDate.month, serverDate.minute, serverDate.hour, serverDate.year
	local localDay = tonumber(date("%w")) -- 0-based starts on Sun
	local localHour, localMinute = tonumber(date("%H")), tonumber(date("%M"))
	if (serverDay == (localDay + 1)%7) then -- server is a day ahead
		serverHour = serverHour + 24
	elseif (localDay == (serverDay + 1)%7) then -- local is a day ahead
		localHour = localHour + 24
	end
	
	local server = serverHour + serverMinute / 60
	local localT = localHour + localMinute / 60
	local offset = floor((server - localT) * 2 + 0.5) / 2
	return offset
end

function RareScanner:GetWarFrontResetTime()
	if (not self.resetDays) then
		local regionID = GetCurrentRegion()
		self.resetDays = {}  
		self.resetDays.DLHoffset = 0
		if (regionID == 2 or regionID == 4 or regionID == 5) then --KR, TW, CH
			self.resetDays["4"] = true -- thursday
		elseif (regionID == 3) then --EU
			self.resetDays["3"] = true -- wednesday
		else --US
			self.resetDays["2"] = true -- tuesday
			self.resetDays.DLHoffset = -3
		end
	end
	
	local offset = (self:GetServerOffset() + self.resetDays.DLHoffset) * 3600
	local nightlyReset = time() + GetQuestResetTime()
	while (not self.resetDays[date("%w",nightlyReset+offset)]) do
		nightlyReset = nightlyReset + 24 * 3600
	end

	return nightlyReset + (14 * 24 * 60 * 60) -- every 3 weeks
end