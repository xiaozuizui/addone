local E, L, V, P, G, _ = unpack(ElvUI); --Engine

local AD = LibStub('AceAddon-3.0')
local ACD = LibStub("AceConfigDialog-3.0-ElvUI")
local DisableAddOn = DisableAddOn
local EnableAddOn = EnableAddOn
local IsAddOnLoaded = IsAddOnLoaded
local SetCVar = SetCVar
local InterfaceOptionsFrame_OpenToCategory = InterfaceOptionsFrame_OpenToCategory
local ENABLE, DISABLE = ENABLE, DISABLE

local temToggle = {
--	["EuiGarrison"] = true,
--	["ExtraCD"] = true,
	["HandyNotes_BattleForAzerothTreasures"] = true,
	["MikScrollingBattleText"] = true,
	["OfflineDataCenter"] = true,
	["MeetingStone"] = true,
	["Skada"] = true,
--	["Rematch"] = false,
	["RareScanner"] = true,
--	["TinyInspect"] = true,
	["Mapster"] = true,
	["Capping"] = false,
--	["WorldQuestTracker"] = false,
	["AngryKeystones"] = true,
	["HPetBattleAny"] = true,
}
for k, v in pairs(temToggle) do
	temToggle[k] = IsAddOnLoaded(k)
end

local function ToggleAddOnMsg(info, value)
	if value then
		E:Print(ENABLE..L[info]);
		EnableAddOn(info);
	else
		E:Print(DISABLE..L[info]);
		DisableAddOn(info);
	end
	E:StaticPopup_Show("CONFIG_RL");
end

E.Options.args.singleFunc = {
	type = "group",
	name = '17.'..L['singleFunc'],
	desc = L['singleFunc desc'],
	childGroups = 'tree',
	get = function(info) return temToggle[ info[#info] ]; end,
	set = function(info, value)	temToggle[ info[#info] ] = value; ToggleAddOnMsg(info[#info], value); end,
	args = {
		APIInterface = {
			order = 0,
			type = "execute",
			name = "API Interface",
			func = function() SlashCmdList["APIISLASH"](); E:ToggleConfig(); end
		},
		ClearLuaError = {
			order = 0,
			type = "execute",
			name = "Clear Lua Error",
			func = function() wipe(E.global.luaError); end
		},
		HandyNotes_BattleForAzerothTreasuresHeader = {
			order = 9,
			type = "header",
			name = L['HandyNotes_BattleForAzerothTreasures'],
		},		
		HandyNotes_BattleForAzerothTreasures = {
			order = 10,
			type = 'toggle',
			name = L["HandyNotes_BattleForAzerothTreasures"],
			desc = L["Enable/Disable"]..L["HandyNotes_BattleForAzerothTreasures"],
			disabled = function() return not E:IsConfigurableAddOn('HandyNotes_BattleForAzerothTreasures'); end,
		},
		ShowHandyNotes_BattleForAzerothTreasuresCfg = {
			order = 12,
			type = 'execute',
			name = L['Show HandyNotes_BattleForAzerothTreasures Config'],
			disabled = function() return not IsAddOnLoaded('HandyNotes_BattleForAzerothTreasures'); end,
			func = function()
				ACD:Open("HandyNotes");
				E:ToggleConfig();
			end,
		},	
		MikScrollingBattleTextHeader = {
			order = 13,
			type = "header",
			name = L['MikScrollingBattleText'],
		},		
		MikScrollingBattleText = {
			order = 14,
			type = 'toggle',
			name = L["MikScrollingBattleText"],
			desc = L["Enable/Disable"]..L["MikScrollingBattleText"],
			disabled = function() return not E:IsConfigurableAddOn('MikScrollingBattleText'); end,
		},
		UseEUINumberFormat = {
			order= 15,
			type = 'toggle',
			name = L["Use Eui's number format"],
			get = function() return MikSBT and MikSBT.Profiles.currentProfile.groupNumbers or false; end,
			set = function(info, value) if MikSBT then MikSBT.Profiles.currentProfile.groupNumbers = value; end; end,
			disabled = function() return not E:IsConfigurableAddOn('MikScrollingBattleText'); end,
		},
		ShowMSBTOpt = {
			order = 16,
			type = 'execute',
			name = L['Show MikScrollingBattleText Config'],
			disabled = function() return not IsAddOnLoaded('MikScrollingBattleText'); end,
			func = function()
				if E:IsDisabledAddon('MSBTOptions') then
					EnableAddOn('MSBTOptions')
					E:StaticPopup_Show("CONFIG_RL");
				end
				if (not IsAddOnLoaded('MSBTOptions')) then
					LoadAddOn('MSBTOptions');
				end
				if (IsAddOnLoaded('MSBTOptions')) then
					MSBTOptions.Main.ShowMainFrame();
					E:ToggleConfig();
				end
			end,					
		},		
		ToggleBlzCombat = {
			order = 17,
			type = 'toggle',
			name = L['Disable Blz CombatText'],
			get = function(info) return E.db.euiscript.disableBLZCombatText; end,
			set = function(info, value)
				E.db.euiscript.disableBLZCombatText = value;
				local toggle = "1"
				if value then toggle = "0"; end
				SetCVar("floatingCombatTextCombatHealing", toggle) --(此为治疗数字，把0改成1)
				SetCVar("floatingCombatTextCombatDamage", toggle) --(此为伤害数字，把0改成1)
				SetCVar("enableFloatingCombatText", toggle)
			end,
		},
		DBM_CoreHeader = {
			order = 18,
			type = "header",
			name = L['DBM-Core'],
		},			
--[[	DBM_Core = {
			order = 16,
			type = 'toggle',
			name = L['DBM-Core'],
			set = function(info, value)
				E.db.single.DBM_Core = value;
				if value then
					if E:IsConfigurableAddOn('DBM-Core') then
						if (not IsAddOnLoaded('DBM-Core')) then
							LoadAddOn('DBM-Core');
							LoadAddOn('DBM-StatusBarTimers')
							LoadAddOn('DBM-DefaultSkin')
						end
						if AddOnSkins then
							E.private.addonskins.DBM = true;
						end
					end
				else
					if E:IsConfigurableAddOn('DBM-Core') then
						if IsAddOnLoaded('DBM-Core') then
							E:StaticPopup_Show("CONFIG_RL");
							E.private.addonskins.DBM = false
						end
					end					
				end
			end,
		},]]
		ShowDBMOpt = {
			order = 19,
			type = 'execute',
			name = L['Show DBM Config'],
			disabled = function() return not IsAddOnLoaded('DBM-Core'); end,
			func = function()
				DBM:LoadGUI();
				E:ToggleConfig();
			end,					
		},
		TestDBMSound = {
			order = 20,
			type = 'execute',
			name = L['Test DBM Sound'],
			disabled = function() return not IsAddOnLoaded('DBM-Core'); end,
			func = function()
				if E:IsConfigurableAddOn('DBM-Core') then
					DBM:DemoMode();
					E:ToggleConfig();
				end
			end,
		},	
		OfflineDataCenterHeader = {
			order = 21,
			type = "header",
			name = L['OfflineDataCenter'],
		},		
		OfflineDataCenter = {
			order = 22,
			type = 'toggle',
			name = L["OfflineDataCenter"],
			desc = L["Enable/Disable"]..L["OfflineDataCenter"],
			disabled = function() return not E:IsConfigurableAddOn('OfflineDataCenter'); end,
		},
		ShowODCFrame = {
			order = 23,
			type = 'execute',
			name = L['Show OfflineDataCenter Frame'],
			disabled = function() return not IsAddOnLoaded('OfflineDataCenter'); end,
			func = function()
				AD:GetAddon("OfflineDataCenter"):ToggleWindow();
				E:ToggleConfig();
			end,
		},
		ShowODCCfg = {
			order = 24,
			type = 'execute',
			name = L['Show OfflineDataCenter Config Frame'],
			disabled = function() return not IsAddOnLoaded('OfflineDataCenter'); end,
			func = function()
				local ODC = LibStub("AceAddon-3.0"):GetAddon("OfflineDataCenter")
				if ODC then
					ODC:GetModule("Setting"):CreateOrShowSubFrame("settings");
					ODCFrameSettingSubFrame.configdialog:Click();
					E:ToggleConfig();
				end
			end,
		},
		MeetingStoneHeader = {
			order = 25,
			type = "header",
			name = L['MeetingStone'],
		},		
		MeetingStone = {
			order = 26,
			type = 'toggle',
			name = L["MeetingStone"],
			desc = L["Enable/Disable"]..L["MeetingStone"],
			disabled = function() return not E:IsConfigurableAddOn('MeetingStone'); end,
		},
		ShowMeetingStoneFrame = {
			order = 27,
			type = 'execute',
			name = L['Show MeetingStone Config Frame'],
			disabled = function() return not IsAddOnLoaded('MeetingStone'); end,
			func = function()
				AD:GetAddon('MeetingStone'):ToggleModule('MainPanel');
				E:ToggleConfig();
			end,
		},
		ToggleMeetingStoneBrokerPanel = {
			order = 28,
			type = 'execute',
			name = L['Toggle MeetingStone BrokerPanel'],
			disabled = function() return not IsAddOnLoaded('MeetingStone'); end,
			func = function()
				if AD:GetAddon('MeetingStone'):GetModule('DataBroker').BrokerPanel:IsShown() then
					AD:GetAddon('MeetingStone'):GetModule('DataBroker').BrokerPanel:Hide()
				else
					AD:GetAddon('MeetingStone'):GetModule('DataBroker').BrokerPanel:Show()
				end
			end,
		},		
		SkadaHeader = {
			order = 29,
			type = "header",
			name = L['Skada'],
		},
		Skada = {
			order = 30,
			type = 'toggle',
			name = L["Skada"],
			desc = L["Enable/Disable"]..L["Skada"],
			disabled = function() return not E:IsConfigurableAddOn('Skada'); end,
		},			
		ShowSkadaConfig = {
			order = 31,
			type = 'execute',
			name = L['Show Skada Config Frame'],
			disabled = function() return not IsAddOnLoaded('Skada'); end,
			func = function()
				InterfaceOptionsFrame_OpenToCategory(Skada.optionsFrame)
				InterfaceOptionsFrame_OpenToCategory(Skada.optionsFrame)
				E:ToggleConfig();
			end,
		},
		ToggleSkadaWindow = {
			order = 32,
			type = 'execute',
			name = L['Toggle Skada Window'],
			disabled = function() return not IsAddOnLoaded('Skada'); end,
			func = function()
				Skada:ToggleWindow();
				E:ToggleConfig();
			end,
		},
		ResetSkadaProfile = {
			order = 33,
			type = 'execute',
			width = 'full',
			name = L['Reset Skada Profile'],
			disabled = function() return not IsAddOnLoaded('Skada'); end,
			func = function()
				Skada.db:ResetProfile();
				E:ToggleConfig();
			end,
		},
		-- CappingHeader = {
			-- order = 35,
			-- type = "header",
			-- name = L["Capping"],
		-- },
		-- CappingFrame = {
			-- order = 36,
			-- type = "execute",
			-- name = L["Capping Config Frame"],
			-- disabled = function() return not IsAddOnLoaded('Capping'); end,
			-- func = function()
				-- if E:IsConfigurableAddOn('Capping') then
					-- SlashCmdList.Capping()
					-- E:ToggleConfig();
				-- end
			-- end,
		-- },
		RareScannerHeader = {
			order = 51,
			type = "header",
			name = L['RareScanner'],
		},	
		RareScanner = {
			order = 52,
			type = 'toggle',
			name = L["RareScanner"],
			desc = L["Enable/Disable"]..L["RareScanner"],
			disabled = function() return not E:IsConfigurableAddOn('RareScanner'); end,
		},	
		RareScannerConfigFrame = {
			order = 53,
			type = 'execute',
			name = L['RareScanner Config Frame'],
			disabled = function() return not IsAddOnLoaded('RareScanner'); end,
			func = function()
				if E:IsConfigurableAddOn('RareScanner') then
					InterfaceOptionsFrame_OpenToCategory(AD:GetAddon("RareScanner").optionsFrame)
					InterfaceOptionsFrame_OpenToCategory(AD:GetAddon("RareScanner").optionsFrame)
					E:ToggleConfig();
				end
			end,
		},	
		-- TinyInspectHeader = {
			-- order = 57,
			-- type = "header",
			-- name = L['TinyInspect'],
		-- },
		-- TinyInspect = {
			-- order = 58,
			-- type = 'toggle',
			-- name = L["TinyInspect"],
			-- desc = L["Enable/Disable"]..L["TinyInspect"],
			-- disabled = function() return not E:IsConfigurableAddOn('TinyInspect'); end,
		-- },
		-- TinyInspectConfig = {
			-- order = 59,
			-- type = 'execute',
			-- name = L['Show TinyInspect Option'],
			-- disabled = function() return not IsAddOnLoaded('TinyInspect'); end,
			-- func = function()
				-- SlashCmdList.TinyInspect();
				-- E:ToggleConfig();
			-- end,
		-- },
		MapsterHeader = {
			order = 67,
			type = "header",
			name = L['Mapster'],
		},		
		Mapster = {
			order = 68,
			type = 'toggle',
			name = L["Mapster"],
			desc = L["Enable/Disable"]..L["Mapster"],
			disabled = function() return not E:IsConfigurableAddOn('Mapster'); end,
		},
		ShowMapsterFrame = {
			order = 69,
			type = 'execute',
			name = L['Show Mapster Frame'],
			disabled = function() return not IsAddOnLoaded('Mapster'); end,
			func = function()
				if not WorldMapFrame:IsShown() then
					ToggleWorldMap()
				end
				E:ToggleConfig();
			end,
		},	
		ToggleWorldFlightMap = {
			order = 70,
			type = 'toggle',
			name = L['Toggle World Flight Map'],
			disabled = function() return not IsAddOnLoaded('Mapster'); end,
			get = function() return E.db.SingleAddons.WorldFlightMap; end,
			set = function(info,value)
				if E:IsConfigurableAddOn('Mapster') then
					E.db.SingleAddons.WorldFlightMap = value;
					E:StaticPopup_Show("CONFIG_RL");
				end
			end,
		},
	--[[	WorldQuestTrackerHeader = {
			order = 75,
			type = "header",
			name = L['WorldQuestTracker'],
		},		
		WorldQuestTracker = {
			order = 76,
			type = 'toggle',
			name = L["WorldQuestTracker"],
			desc = L["Enable/Disable"]..L["WorldQuestTracker"],
			disabled = function() return not E:IsConfigurableAddOn('WorldQuestTracker'); end,
		},]]
		AngryKeystonesHeader = {
			order = 77,
			type = "header",
			name = L['AngryKeystones'],
		},		
		AngryKeystones = {
			order = 78,
			type = 'toggle',
			name = L["AngryKeystones"],
			desc = L["Enable/Disable"]..L["AngryKeystones"],
			disabled = function() return not E:IsConfigurableAddOn('AngryKeystones'); end,
		},
		AngryKeystonesConfig = {
			order = 79,
			type = 'execute',
			name = L['Show AngryKeystones Option'],
			disabled = function() return not IsAddOnLoaded('AngryKeystones'); end,
			func = function()
				SlashCmdList.AngryKeystones();
				E:ToggleConfig();
			end,
		},
		HPetBattleAnyHeader = {
			order = 80,
			type = "header",
			name = L['HPetBattleAny'],
		},		
		HPetBattleAny = {
			order = 81,
			type = 'toggle',
			name = L["HPetBattleAny"],
			desc = L["Enable/Disable"]..L["HPetBattleAny"],
			disabled = function() return not E:IsConfigurableAddOn('HPetBattleAny'); end,
		},
		HPetBattleAnyConfig = {
			order = 82,
			type = 'execute',
			name = L['Show HPetBattleAny Option'],
			disabled = function() return not IsAddOnLoaded('HPetBattleAny'); end,
			func = function()
				if HPetOption then
					HPetOption:Toggle()
					E:ToggleConfig();
				end
			end,
		},
	},
}