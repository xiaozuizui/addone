
BugGrabberDB = {
	["session"] = 172,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface\\FrameXML\\UnitPopup.lua:988: bad argument #1 to 'CanReportPlayer' (Usage: local canReport = C_ChatInfo.CanReportPlayer(playerLocation))",
			["time"] = "2018/09/06 10:51:03",
			["locals"] = "(*temporary) = <table> {\n IsBattleNetGUID = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:63\n SetGUID = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:47\n IsCommunityData = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:129\n IsBattlefieldScoreIndex = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:99\n SetUnit = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:71\n IsGUID = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:59\n chatLineID = \"1484\"\n IsChatLineID = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:87\n Clear = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:144\n IsValid = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:51\n SetVoiceID = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:107\n IsVoiceID = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:113\n GetBattlefieldScoreIndex = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:103\n IsUnit = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:75\n SetCommunityInvitation = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:133\n GetVoiceID = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:117\n IsCommunityInvitation = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:139\n GetChatLineID = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:91\n ClearAndSetField = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:158\n GetGUID = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:67\n GetUnit = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:79\n SetChatLineID = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:83\n SetBattlefieldScoreIndex = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:95\n SetCommunityData = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:121\n}\n",
			["stack"] = "[C]: in function `CanReportPlayer'\nInterface\\FrameXML\\UnitPopup.lua:988: in function `UnitPopup_HideButtons'\nInterface\\FrameXML\\UnitPopup.lua:306: in function <Interface\\FrameXML\\UnitPopup.lua:285>\n[C]: in function `UnitPopup_ShowMenu'\nInterface\\FrameXML\\FriendsFrame.lua:226: in function `initFunction'\nInterface\\FrameXML\\UIDropDownMenu.lua:77: in function `UIDropDownMenu_Initialize'\nInterface\\FrameXML\\UIDropDownMenu.lua:1085: in function `ToggleDropDownMenu'\nInterface\\FrameXML\\FriendsFrame.lua:197: in function <Interface\\FrameXML\\FriendsFrame.lua:174>\n[C]: in function `FriendsFrame_ShowDropdown'\nInterface\\FrameXML\\ItemRef.lua:60: in function <Interface\\FrameXML\\ItemRef.lua:1>\n...ace\\AddOns\\Blizzard_CombatLog\\Blizzard_CombatLog.lua:3510: in function <...ace\\AddOns\\Blizzard_CombatLog\\Blizzard_CombatLog.lua:3452>\n[C]: ?\n[C]: in function `SetItemRef'\nInterface\\FrameXML\\ChatFrame.lua:3630: in function <Interface\\FrameXML\\ChatFrame.lua:3629>\n[C]: ?\n[C]: in function `ChatFrame_OnHyperlinkShow'\n[string \"*:OnHyperlinkClick\"]:1: in function <[string \"*:OnHyperlinkClick\"]:1>",
			["session"] = 12,
			["counter"] = 3,
		}, -- [1]
		{
			["message"] = "Error loading Interface\\AddOns\\DBM-Uldir\\localization.es.lua",
			["time"] = "2018/09/08 19:26:12",
			["session"] = 29,
			["counter"] = 6,
		}, -- [2]
		{
			["message"] = "Error loading Interface\\AddOns\\DBM-Uldir\\localization.ru.lua",
			["time"] = "2018/09/08 19:26:12",
			["session"] = 29,
			["counter"] = 9,
		}, -- [3]
		{
			["message"] = "Interface\\AddOns\\DBM-Core\\DBM-Core-8.0.5-7-ga9778073c.lua:8106: attempt to index field '?' (a nil value)",
			["time"] = "2018/09/06 16:14:07",
			["locals"] = "self = <table> {\n timers = <table> {\n }\n categorySort = <table> {\n }\n instanceId = 1028\n modelId = 80964\n SyncThreshold = 8\n specwarns = <table> {\n }\n modId = \"DBM-KulTiras\"\n SPELL_CAST_START = <function> defined @Interface\\AddOns\\DBM-Azeroth-BfA\\HailstoneConstruct.lua:50\n OnCombatEnd = <function> defined @Interface\\AddOns\\DBM-Azeroth-BfA\\HailstoneConstruct.lua:44\n combatInfo = <table> {\n }\n inCombatOnlyEvents = <table> {\n }\n zones = <table> {\n }\n revision = 17692\n Options = <table> {\n }\n DefaultOptions = <table> {\n }\n id = \"2197\"\n OnCombatStart = <function> defined @Interface\\AddOns\\DBM-Azeroth-BfA\\HailstoneConstruct.lua:35\n countdowns = <table> {\n }\n iconRestore = <table> {\n }\n creatureId = 140252\n SPELL_CAST_SUCCESS = <function> defined @Interface\\AddOns\\DBM-Azeroth-BfA\\HailstoneConstruct.lua:66\n reCombatTime = 20\n localization = <table> {\n }\n announces = <table> {\n }\n vb = <table> {\n }\n optionCategories = <table> {\n }\n}\nflag = \"Tank\"\nflags = <table> {\n 1 = \"Tank\"\n}\n(for index) = 1\n(for limit) = 1\n(for step) = 1\ni = 1\nflagText = \"Tank\"\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"^-\"\n(*temporary) = nil\n(*temporary) = \"attempt to index field '?' (a nil value)\"\ncurrentSpecID = nil\nDBM = <table> {\n CHAT_MSG_ADDON_LOGGED = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:4983\n StopLogging = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:6320\n CheckVoicePackVersion = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:10074\n PLAY_MOVIE = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:7110\n GetUnitIdFromGUID = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:3143\n CopyProfile = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:1745\n CHAT_MSG_MONSTER_EMOTE = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:5547\n shortTermEventsRegistered = 1\n CHAT_MSG_WHISPER = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:6794\n DeleteProfile = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:1762\n DungeonMusic = <table> {\n }\n ShowUpdateReminder = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:5117\n lastAntiSpamFLASH = 110356.968\n PLAYER_REGEN_DISABLED = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:5347\n FireEvent = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:1402\n CreateModLocalization = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:11671\n SCENARIO_COMPLETED = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:3751\n IsEnabled = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:6880\n GetMyPlayerInfo = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:3004\n Capitalize = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:6985\n ADDON_LOADED = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:1151\n IconNumToTexture = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:7055\n BattleMusic = <table> {\n }\n ShowRaidIDRequestResults = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:4836\n INSTANCE_GROUP_SIZE_CHANGED = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:2931\n GetBossUnitId = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:3126\n AddDefaultOptions = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:3166\n UPDATE_MOUSEOVER_UNIT = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:4013\n InfoFrame = <table> {\n }\n FilterRaidBossEmote = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:982\n RequestTimers = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:6517\n RequestInstanceInfo = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:4905\n CHAT_MSG_MONSTER_YELL = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:5539\n LFG_PROPOSAL_SHOW = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:3627\n ShowNoteEditor = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:5267\n lastAntiSpamGCE = 111226.298\n RegisterShortTermEvents = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-Core.lua:929\n LOADING_SCREEN_DISABLED = <function> defined @Interface\\AddOns\\DB",
			["stack"] = "Interface\\AddOns\\DBM-Core\\DBM-Core-8.0.5-7-ga9778073c.lua:8106: in function `GetRoleFlagValue'\nInterface\\AddOns\\DBM-Core\\DBM-Core-8.0.5-7-ga9778073c.lua:3208: in function `LoadModOptions'\nInterface\\AddOns\\DBM-Core\\DBM-Core-8.0.5-7-ga9778073c.lua:3302: in function `SpecChanged'\nInterface\\AddOns\\DBM-Core\\DBM-Core-8.0.5-7-ga9778073c.lua:3663: in function `handler'\nInterface\\AddOns\\DBM-Core\\DBM-Core-8.0.5-7-ga9778073c.lua:676: in function <Interface\\AddOns\\DBM-Core\\DBM-Core.lua:663>",
			["session"] = 37,
			["counter"] = 2,
		}, -- [4]
		{
			["message"] = "[string \"<unnamed>:OnClick\"]:3: attempt to index field 'wIE' (a nil value)",
			["time"] = "2018/09/16 14:16:39",
			["locals"] = "self = <unnamed> {\n tmwClass = \"Config_Button\"\n Background = <unnamed> {\n }\n border = <unnamed> {\n }\n 0 = <userdata>\n}\nbutton = \"LeftButton\"\ndown = false\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = <userdata>\n(*temporary) = \"attempt to index field 'wIE' (a nil value)\"\n",
			["stack"] = "[string \"*:OnClick\"]:3: in function <[string \"*:OnClick\"]:1>",
			["session"] = 43,
			["counter"] = 1,
		}, -- [5]
		{
			["message"] = "Error loading Interface\\AddOns\\DBM-WorldEvents\\localization.ru.lua",
			["time"] = "2018/09/16 14:23:40",
			["session"] = 44,
			["counter"] = 1,
		}, -- [6]
		{
			["message"] = "Error loading Interface\\AddOns\\DBM-WorldEvents\\localization.fr.lua",
			["time"] = "2018/09/16 14:23:40",
			["session"] = 44,
			["counter"] = 1,
		}, -- [7]
		{
			["message"] = "Error loading Interface\\AddOns\\DBM-WorldEvents\\localization.kr.lua",
			["time"] = "2018/09/16 14:23:40",
			["session"] = 44,
			["counter"] = 1,
		}, -- [8]
		{
			["message"] = "Error loading Interface\\AddOns\\DBM-WorldEvents\\localization.de.lua",
			["time"] = "2018/09/16 14:23:40",
			["session"] = 44,
			["counter"] = 1,
		}, -- [9]
		{
			["message"] = "Error loading Interface\\AddOns\\DBM-WorldEvents\\localization.es.lua",
			["time"] = "2018/09/16 14:23:40",
			["session"] = 44,
			["counter"] = 1,
		}, -- [10]
		{
			["message"] = "Usage: local taskPOIs = C_TaskQuest.GetQuestsForPlayerByMapID(uiMapID)",
			["time"] = "2018/09/05 15:12:52",
			["stack"] = "[C]: in function `GetQuestsForPlayerByMapID'\nInterface\\AddOns\\EuiScript\\module\\AutoButton.lua:103: in function <Interface\\AddOns\\EuiScript\\module\\AutoButton.lua:99>\nInterface\\AddOns\\EuiScript\\module\\AutoButton.lua:295: in function `?'\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <Interface\\AddOns\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 45,
			["counter"] = 87,
		}, -- [11]
		{
			["message"] = "Error loading Interface\\AddOns\\DBM-Party-BfA\\localization.es.lua",
			["time"] = "2018/09/03 10:32:52",
			["session"] = 45,
			["counter"] = 20,
		}, -- [12]
		{
			["message"] = "Error loading Interface\\AddOns\\DBM-Party-BfA\\localization.kr.lua",
			["time"] = "2018/09/03 10:32:52",
			["session"] = 45,
			["counter"] = 30,
		}, -- [13]
		{
			["message"] = "Interface\\AddOns\\EuiScript\\module\\PRIEST.lua:108: attempt to index a nil value",
			["time"] = "2018/09/03 10:20:08",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\EuiScript\\module\\PRIEST.lua:108: in function <Interface\\AddOns\\EuiScript\\module\\PRIEST.lua:97>\nInterface\\AddOns\\EuiScript\\module\\PRIEST.lua:132: in function <Interface\\AddOns\\EuiScript\\module\\PRIEST.lua:127>",
			["session"] = 50,
			["counter"] = 465,
		}, -- [14]
		{
			["message"] = "...face\\AddOns\\Blizzard_GuildControlUI\\Localization.lua:4: attempt to index global 'GuildControlUIRankSettingsFrameRosterLabel' (a nil value)",
			["time"] = "2018/09/03 10:29:16",
			["locals"] = "(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"TOPLEFT\"\n(*temporary) = GuildControlUIRankSettingsFrameBankBg {\n 0 = <userdata>\n}\n(*temporary) = 7\n(*temporary) = -4\n(*temporary) = \"attempt to index global 'GuildControlUIRankSettingsFrameRosterLabel' (a nil value)\"\n",
			["stack"] = "...face\\AddOns\\Blizzard_GuildControlUI\\Localization.lua:4: in main chunk\n[C]: ?\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:446: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:692: in function `Communities_LoadUI'\nInterface\\FrameXML\\UIParent.lua:926: in function `ToggleCommunitiesFrame'\nInterface\\FrameXML\\UIParent.lua:813: in function `ToggleGuildFrame'\n[string \"TOGGLEGUILDTAB\"]:1: in function <[string \"TOGGLEGUILDTAB\"]:1>",
			["session"] = 50,
			["counter"] = 17,
		}, -- [15]
		{
			["message"] = "(null)",
			["time"] = "2018/09/03 10:29:17",
			["session"] = 50,
			["counter"] = 51,
		}, -- [16]
		{
			["message"] = "Interface\\AddOns\\EuiScript\\init.lua:120: attempt to concatenate local 'Realm' (a nil value)",
			["time"] = "2018/09/03 09:29:58",
			["stack"] = "Interface\\AddOns\\EuiScript\\init.lua:120: in function `?'\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <Interface\\AddOns\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 51,
			["counter"] = 206,
		}, -- [17]
		{
			["message"] = "...\\Blizzard_IslandsQueueUI\\Blizzard_IslandsQueueUI-1.0.lua:95: Usage: <unnamed>:SetMinMaxValues(min, max)",
			["time"] = "2018/10/19 03:19:08",
			["locals"] = "(*temporary) = <unnamed> {\n 0 = <userdata>\n BarTexture = <unnamed> {\n }\n backdrop = <unnamed> {\n }\n}\n(*temporary) = 0\n(*temporary) = nil\n",
			["stack"] = "[C]: in function `SetMinMaxValues'\n...\\Blizzard_IslandsQueueUI\\Blizzard_IslandsQueueUI-1.0.lua:95: in function `UpdateQuestProgressBar'\n...\\Blizzard_IslandsQueueUI\\Blizzard_IslandsQueueUI-1.0.lua:115: in function `Refresh'\n...\\Blizzard_IslandsQueueUI\\Blizzard_IslandsQueueUI-1.0.lua:32: in function <...\\Blizzard_IslandsQueueUI\\Blizzard_IslandsQueueUI.lua:30>",
			["session"] = 74,
			["counter"] = 1,
		}, -- [18]
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] 插件 'EuiInfoDB' 尝试调用保护功能 'ForceQuit()'。",
			["time"] = "2018/10/05 10:58:54",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:529: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:529>\n[C]: in function `ForceQuit'\nInterface\\AddOns\\EuiInfoDB\\core.lua:384: in function `OnAccept'\nInterface\\FrameXML\\StaticPopup.lua:4973: in function `StaticPopup_OnClick'\n[string \"*:OnClick\"]:1: in function <[string \"*:OnClick\"]:1>",
			["session"] = 74,
			["counter"] = 2,
		}, -- [19]
		{
			["message"] = "Interface\\AddOns\\ElvUI\\Modules\\datatexts\\e_coord.lua:32: attempt to concatenate field 'loc' (a nil value)",
			["time"] = "2018/09/16 12:04:17",
			["locals"] = "self = DataText1 {\n 0 = <userdata>\n timeSinceUpdate = 0.010000000707805\n name = \"E_Coord\"\n pointIndex = \"middle\"\n text = <unnamed> {\n }\n}\nbutton = \"LeftButton\"\nchattype = \"SAY\"\ntargetStr = \"石头傀儡@ \"\ncurrent = \"0 - 0.0%\"\n(*temporary) = \"石头傀儡@ \"\n(*temporary) = \"德鲁斯瓦\"\n(*temporary) = \": \"\n(*temporary) = nil\n(*temporary) = \" - 0 - 0.0%\"\n(*temporary) = \"0 - 0.0%\"\n(*temporary) = \"attempt to concatenate field 'loc' (a nil value)\"\nIsInRaid = <function> defined =[C]:-1\nIsInGroup = <function> defined =[C]:-1\nUnitName = <function> defined =[C]:-1\nE = <table> {\n GetTimeInfo = <function> defined @Interface\\AddOns\\ElvUI\\core\\math.lua:352\n mylevel = 120\n Bags = <table> {\n }\n privateVars = <table> {\n }\n modules = <table> {\n }\n CancelTimer = <function> defined @Interface\\AddOns\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:147\n FormatMoney = <function> defined @Interface\\AddOns\\ElvUI\\core\\math.lua:411\n ExitVehicleShowFrames = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:1184\n StaticPopup_EscapePressed = <function> defined @Interface\\AddOns\\ElvUI\\core\\staticpopups.lua:590\n CopyTable = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:692\n MassGuildKick = <function> defined @Interface\\AddOns\\ElvUI\\core\\commands.lua:78\n SetMoversPositions = <function> defined @Interface\\AddOns\\ElvUI\\core\\movers.lua:556\n ScheduleTimer = <function> defined @Interface\\AddOns\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:94\n PriestColors = <table> {\n }\n RegisterModule = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:1333\n SetupTheme = <function> defined @Interface\\AddOns\\ElvUI\\core\\install.lua:495\n media = <table> {\n }\n SetUpAnimGroup = <function> defined @Interface\\AddOns\\ElvUI\\core\\animation.lua:11\n bags = <table> {\n }\n data = <table> {\n }\n EnableBlizzardAddOns = <function> defined @Interface\\AddOns\\ElvUI\\core\\commands.lua:210\n UIScale = <function> defined @Interface\\AddOns\\ElvUI\\core\\pixelperfect.lua:50\n db = <table> {\n }\n FramesOverlap = <function> defined @Interface\\AddOns\\ElvUI\\core\\math.lua:113\n SetEnabledState = <function> defined @Interface\\AddOns\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:424\n Hook = <function> defined @Interface\\AddOns\\libs\\AceHook-3.0\\AceHook-3.0.lua:274\n Options = <table> {\n }\n GetServerName = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:1576\n Layout = <table> {\n }\n tDeleteItem = <function> defined @Interface\\AddOns\\ElvUI\\core\\animation.lua:320\n LoadCommands = <function> defined @Interface\\AddOns\\ElvUI\\core\\commands.lua:220\n UnregisterEventForObject = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:1282\n ValColor = \"|cff1784d1\"\n SendPluginVersionCheck = <function> defined @Interface\\AddOns\\libs\\LibElvUIPlugin-1.0\\LibElvUIPlugin-1.0.lua:145\n HiddenFrame = <unnamed> {\n }\n UnregisterAllEvents = <function> defined @Interface\\AddOns\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:174\n diffGetRight = 0\n UIFrameFade = <function> defined @Interface\\AddOns\\ElvUI\\core\\animation.lua:259\n MinimapWidth = 176\n StaticPopup_IsLastDisplayedFrame = <function> defined @Interface\\AddOns\\ElvUI\\core\\staticpopups.lua:651\n EuiAlertRun = <function> defined @Interface\\AddOns\\EuiScript\\module\\CombatNotification.lua:92\n ExecuteChatCommand = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:1615\n UpdateBackdropColors = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:481\n TimeThreshold = 3\n RemoveTableDuplicates = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:729\n name = \"ElvUI\"\n MinimapHeight = 176\n Disable = <function> defined @Interface\\AddOns\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:314\n DF = <table> {\n }\n SlideOut = <function> defined @Interface\\AddOns\\ElvUI\\core\\animation.lua:204\n Unhook = <function> defined @Interface\\AddOns\\libs\\AceHook-3.0\\AceHook-3.0.lua:418\n Print = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:195\n Install = <function> defined @Interface\\AddOns\\ElvUI\\core\\install.lua:1273\n UnregisterObjectForVehicleLock = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:1215\n LockedCVars = <table> {\n }\n TimeFormats = <table> {\n }\n RGBToHex = <function> defined @Inter",
			["stack"] = "Interface\\AddOns\\ElvUI\\Modules\\datatexts\\e_coord.lua:32: in function `onClick'\n...terface\\AddOns\\ElvUI\\Modules\\datatexts\\datatexts.lua:223: in function <...terface\\AddOns\\ElvUI\\Modules\\datatexts\\datatexts.lua:221>",
			["session"] = 81,
			["counter"] = 2,
		}, -- [20]
		{
			["message"] = "...nterface\\AddOns\\EuiScript\\module\\QuestLevelPatch.lua:114: attempt to concatenate a nil value",
			["time"] = "2018/11/05 11:40:26",
			["locals"] = "template = <table> {\n canHaveSealMaterial = true\n contentWidth = 244\n sealYOffset = -6\n questLog = true\n elements = <table> {\n }\n sealXOffset = 156\n}\nparentFrame = <unnamed> {\n 0 = <userdata>\n}\nacceptButton = nil\nmaterial = nil\nmapView = nil\nelementsTable = <table> {\n 1 = <function> defined @Interface\\FrameXML\\QuestInfo.lua:129\n 2 = 5\n 3 = -5\n 4 = <function> defined @Interface\\FrameXML\\QuestInfo.lua:147\n 5 = 0\n 6 = -5\n 7 = <function> defined @Interface\\FrameXML\\QuestInfo.lua:331\n 8 = 0\n 9 = -5\n 10 = <function> defined @Interface\\FrameXML\\QuestInfo.lua:270\n 11 = 0\n 12 = -10\n 13 = <function> defined @Interface\\FrameXML\\QuestInfo.lua:172\n 14 = 0\n 15 = -10\n 16 = <function> defined @Interface\\FrameXML\\QuestInfo.lua:216\n 17 = 0\n 18 = -10\n 19 = <function> defined @Interface\\FrameXML\\QuestInfo.lua:285\n 20 = 0\n 21 = 0\n 22 = <function> defined @Interface\\FrameXML\\QuestInfo.lua:305\n 23 = 0\n 24 = -10\n 25 = <function> defined @Interface\\FrameXML\\QuestInfo.lua:323\n 26 = 0\n 27 = -10\n 28 = <function> defined @Interface\\FrameXML\\QuestInfo.lua:160\n 29 = 0\n 30 = -5\n 31 = <function> defined @Interface\\FrameXML\\QuestInfo.lua:356\n 32 = 0\n 33 = 0\n 34 = <function> defined @Interface\\FrameXML\\QuestInfo.lua:343\n 35 = 0\n 36 = 0\n}\n(for index) = 1\n(for limit) = 36\n(for step) = 3\ni = 1\nquestLogIndex = 0\nlevel = 0\n(*temporary) = \"[\"\n(*temporary) = 0\n(*temporary) = \"] \"\n(*temporary) = nil\n(*temporary) = QuestInfoTitleHeader {\n 0 = <userdata>\n}\n(*temporary) = \"attempt to concatenate a nil value\"\nGetQuestLogSelection = <function> defined =[C]:-1\nselect = <function> defined =[C]:-1\nGetQuestLogTitle = <function> defined =[C]:-1\n",
			["stack"] = "...nterface\\AddOns\\EuiScript\\module\\QuestLevelPatch.lua:114: in function <...nterface\\AddOns\\EuiScript\\module\\QuestLevelPatch.lua:107>\n[C]: ?\n[C]: ?\n[C]: in function `QuestInfo_Display'\nInterface\\FrameXML\\QuestMapFrame.lua:277: in function `QuestMapFrame_ShowQuestDetails'\nInterface\\FrameXML\\QuestMapFrame.lua:247: in function `QuestMapFrame_UpdateAll'\nInterface\\FrameXML\\QuestMapFrame.lua:136: in function <Interface\\FrameXML\\QuestMapFrame.lua:77>",
			["session"] = 94,
			["counter"] = 1,
		}, -- [21]
		{
			["message"] = "integer overflow attempting to store 163590163590",
			["time"] = "2018/09/25 15:12:53",
			["locals"] = "(*temporary) = 163590163590\n",
			["stack"] = "[C]: in function `GetItemInfo'\n...erface\\AddOns\\RareScanner\\LootPlugin\\RSLootMixin.lua:51: in function `RSGetItemInfo'\n...erface\\AddOns\\RareScanner\\LootPlugin\\RSLootMixin.lua:120: in function `AddItem'\nInterface\\AddOns\\RareScanner\\Core.lua:863: in function `LoadLootBar'\nInterface\\AddOns\\RareScanner\\Core.lua:841: in function `ShowButton'\nInterface\\AddOns\\RareScanner\\Core.lua:705: in function `CheckNotificationCache'\nInterface\\AddOns\\RareScanner\\Core.lua:268: in function <Interface\\AddOns\\RareScanner\\Core.lua:265>",
			["session"] = 102,
			["counter"] = 18,
		}, -- [22]
		{
			["message"] = "...AddOns\\ElvUI\\Modules\\unitframes\\elements\\castbar.lua:482: Usage: UnitBuff(\"unit\", [index][, \"filter\"])",
			["time"] = "2018/09/05 09:58:49",
			["locals"] = "InCombatSkipped",
			["stack"] = "[C]: ?\n...AddOns\\ElvUI\\Modules\\unitframes\\elements\\castbar.lua:482: in function <...AddOns\\ElvUI\\Modules\\unitframes\\elements\\castbar.lua:435>\n(tail call): ?\n(tail call): ?",
			["session"] = 102,
			["counter"] = 66,
		}, -- [23]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'ElvUI' 尝试调用保护功能 '<unnamed>:ClearAllPoints()'。",
			["time"] = "2018/11/30 16:31:23",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:529: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:529>\n[C]: in function `ClearAllPoints'\n...\\AddOns\\ElvUI\\Modules\\unitframes\\elements\\health-生命值.lua:96: in function `Configure_HealthBar'\n...dOns\\ElvUI\\Modules\\unitframes\\elements\\classbars.lua:298: in function <...dOns\\ElvUI\\Modules\\unitframes\\elements\\classbars.lua:272>\n[C]: ?\n[C]: in function `Hide'\nInterface\\AddOns\\libs\\oUF\\elements\\runes-符文.lua:197: in function <Interface\\AddOns\\libs\\oUF\\elements\\runes.lua:193>\nInterface\\AddOns\\libs\\oUF\\elements\\runes-符文.lua:220: in function <Interface\\AddOns\\libs\\oUF\\elements\\runes.lua:208>\n(tail call): ?\nInterface\\AddOns\\libs\\oUF\\ouf.lua:229: in function `UpdateAllElements'\nInterface\\AddOns\\libs\\oUF\\ouf.lua:65: in function <Interface\\AddOns\\libs\\oUF\\ouf.lua:46>\n(tail call): ?",
			["session"] = 109,
			["counter"] = 2,
		}, -- [24]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'ElvUI' 尝试调用保护功能 'RaidFrame:Hide()'。",
			["time"] = "2018/12/03 11:21:41",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:529: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:529>\n[C]: in function `Hide'\nInterface\\FrameXML\\FriendsFrame.lua:86: in function `FriendsFrame_ShowSubFrame'\nInterface\\FrameXML\\FriendsFrame.lua:331: in function <Interface\\FrameXML\\FriendsFrame.lua:316>\n[C]: in function `FriendsFrame_Update'\nInterface\\FrameXML\\FriendsFrame.lua:308: in function <Interface\\FrameXML\\FriendsFrame.lua:306>\n[C]: in function `Show'\nInterface\\FrameXML\\UIParent.lua:2614: in function `SetUIPanel'\nInterface\\FrameXML\\UIParent.lua:2459: in function `ShowUIPanel'\nInterface\\FrameXML\\UIParent.lua:2320: in function <Interface\\FrameXML\\UIParent.lua:2316>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\UIParent.lua:3141: in function `ShowUIPanel'\nInterface\\FrameXML\\FriendsFrame.lua:1053: in function `ToggleFriendsFrame'\n[string \"TOGGLESOCIAL\"]:1: in function <[string \"TOGGLESOCIAL\"]:1>",
			["session"] = 116,
			["counter"] = 1,
		}, -- [25]
		{
			["message"] = "Interface\\FrameXML\\StaticPopup.lua:4447: bad argument #2 to 'SetFormattedText' (number expected, got nil)",
			["time"] = "2018/09/06 10:43:58",
			["locals"] = "(*temporary) = StaticPopup1Text {\n 0 = <userdata>\n}\n(*temporary) = \"针对此项活动，你的队伍人数已满（%d），将被移出列表。\"\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"number expected, got nil\"\n",
			["stack"] = "[C]: in function `SetFormattedText'\nInterface\\FrameXML\\StaticPopup.lua:4447: in function <Interface\\FrameXML\\StaticPopup.lua:4298>\n[C]: in function `StaticPopup_Show'\nInterface\\FrameXML\\LFGList.lua:165: in function <Interface\\FrameXML\\LFGList.lua:110>",
			["session"] = 123,
			["counter"] = 2,
		}, -- [26]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'HandyNotes' 尝试调用保护功能 'MainMenuBar:ClearAllPoints()'。",
			["time"] = "2018/12/05 20:04:55",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:529: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:529>\n[C]: in function `ClearAllPoints'\nInterface\\FrameXML\\MainMenuBar.lua:43: in function `SetPositionForStatusBars'\nInterface\\FrameXML\\MainMenuBar.lua:122: in function <Interface\\FrameXML\\MainMenuBar.lua:65>",
			["session"] = 129,
			["counter"] = 1,
		}, -- [27]
		{
			["message"] = "...rface\\AddOns\\ElvUI\\Modules\\nameplates\\nameplates.lua:1326: hooksecurefunc(): SetupClassNameplateBar is not a function",
			["time"] = "2018/12/13 14:23:53",
			["stack"] = "[C]: ?\n...rface\\AddOns\\ElvUI\\Modules\\nameplates\\nameplates.lua:1326: in function `Initialize'\n...rface\\AddOns\\ElvUI\\Modules\\nameplates\\nameplates.lua:1352: in function <...rface\\AddOns\\ElvUI\\Modules\\nameplates\\nameplates.lua:1351>\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:129: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:129>\n[C]: ?\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\ElvUI\\core\\core.lua:1480: in function `InitializeModules'\nInterface\\AddOns\\ElvUI\\core\\core.lua:1753: in function `Initialize'\nInterface\\AddOns\\ElvUI\\init.lua:154: in function <Interface\\AddOns\\ElvUI\\init.lua:153>",
			["session"] = 132,
			["counter"] = 1,
		}, -- [28]
		{
			["message"] = "...ce\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\flightmap.lua:18: attempt to index field 'FlightMapFramePortraitFrame' (a nil value)",
			["time"] = "2018/12/13 14:23:53",
			["stack"] = "...ce\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\flightmap.lua:18: in function <...ce\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\flightmap.lua:13>\n[C]: ?\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1485: in function `Initialize'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1519: in function <Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1518>\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:129: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:129>\n[C]: ?\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\ElvUI\\core\\core.lua:1480: in function `InitializeModules'\nInterface\\AddOns\\ElvUI\\core\\core.lua:1753: in function `Initialize'\nInterface\\AddOns\\ElvUI\\init.lua:154: in function <Interface\\AddOns\\ElvUI\\init.lua:153>",
			["session"] = 132,
			["counter"] = 1,
		}, -- [29]
		{
			["message"] = "...AddOns\\ElvUI\\Modules\\skins\\blizzard\\dressingroom.lua:20: attempt to index global 'DressUpFramePortraitFrame' (a nil value)",
			["time"] = "2018/12/13 14:23:53",
			["stack"] = "...AddOns\\ElvUI\\Modules\\skins\\blizzard\\dressingroom.lua:20: in function <...AddOns\\ElvUI\\Modules\\skins\\blizzard\\dressingroom.lua:12>\n[C]: ?\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1493: in function `Initialize'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1519: in function <Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1518>\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:129: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:129>\n[C]: ?\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\ElvUI\\core\\core.lua:1480: in function `InitializeModules'\nInterface\\AddOns\\ElvUI\\core\\core.lua:1753: in function `Initialize'\nInterface\\AddOns\\ElvUI\\init.lua:154: in function <Interface\\AddOns\\ElvUI\\init.lua:153>",
			["session"] = 132,
			["counter"] = 1,
		}, -- [30]
		{
			["message"] = "...nterface\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\lfg.lua:33: attempt to index global 'PVEFrameTitleBg' (a nil value)",
			["time"] = "2018/12/13 14:23:53",
			["stack"] = "...nterface\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\lfg.lua:33: in function <...nterface\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\lfg.lua:25>\n[C]: ?\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1493: in function `Initialize'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1519: in function <Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1518>\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:129: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:129>\n[C]: ?\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\ElvUI\\core\\core.lua:1480: in function `InitializeModules'\nInterface\\AddOns\\ElvUI\\core\\core.lua:1753: in function `Initialize'\nInterface\\AddOns\\ElvUI\\init.lua:154: in function <Interface\\AddOns\\ElvUI\\init.lua:153>",
			["session"] = 132,
			["counter"] = 1,
		}, -- [31]
		{
			["message"] = "...e\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\tradeskill.lua:140: attempt to index field 'LeftSeparator' (a nil value)",
			["time"] = "2018/12/13 14:27:39",
			["stack"] = "...e\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\tradeskill.lua:140: in function <...e\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\tradeskill.lua:14>\n[C]: ?\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1389: in function `?'\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <Interface\\AddOns\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>\n[C]: ?\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:449: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:532: in function `TradeSkillFrame_LoadUI'\nInterface\\FrameXML\\UIParent.lua:1700: in function <Interface\\FrameXML\\UIParent.lua:1093>",
			["session"] = 132,
			["counter"] = 1,
		}, -- [32]
		{
			["message"] = "Error loading Interface\\AddOns\\DBM-Azeroth-BfA\\localization.kr.lua",
			["session"] = 132,
			["time"] = "2018/09/06 13:00:05",
			["counter"] = 11,
		}, -- [33]
		{
			["message"] = "Error loading Interface\\AddOns\\DBM-Azeroth-BfA\\localization.de.lua",
			["time"] = "2018/12/13 14:30:49",
			["session"] = 132,
			["counter"] = 3,
		}, -- [34]
		{
			["message"] = "...rface\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\talent-天赋.lua:289: attempt to index field 'MyTopLeftCorner' (a nil value)",
			["time"] = "2018/12/13 14:32:51",
			["stack"] = "...rface\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\talent-天赋.lua:289: in function <...rface\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\talent.lua:24>\n[C]: ?\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1389: in function `?'\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <Interface\\AddOns\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>\n[C]: ?\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:449: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:528: in function <Interface\\FrameXML\\UIParent.lua:527>\n[C]: in function `TalentFrame_LoadUI'\nInterface\\FrameXML\\UIParent.lua:760: in function `ToggleTalentFrame'\nInterface\\AddOns\\EuiScript\\module\\TalentProfiles.lua:471: in function <Interface\\AddOns\\EuiScript\\module\\TalentProfiles.lua:469>\n(tail call): ?\n[string \"TOGGLETALENTS\"]:1: in function <[string \"TOGGLETALENTS\"]:1>",
			["session"] = 132,
			["counter"] = 1,
		}, -- [35]
		{
			["message"] = "...ace\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\garrison.lua:416: attempt to index field 'CloseButtonBorder' (a nil value)",
			["time"] = "2018/12/13 14:39:18",
			["stack"] = "...ace\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\garrison.lua:416: in function <...ace\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\garrison.lua:14>\n[C]: ?\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1389: in function `?'\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <Interface\\AddOns\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>\n[C]: ?\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:449: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:639: in function `Garrison_LoadUI'\nInterface\\FrameXML\\UIParent.lua:1737: in function <Interface\\FrameXML\\UIParent.lua:1093>",
			["session"] = 132,
			["counter"] = 1,
		}, -- [36]
		{
			["message"] = "...e\\AddOns\\ElvUI\\Modules\\nameplates\\elements\\auras-光环.lua:270: attempt to perform arithmetic on field 'mult' (a nil value)",
			["time"] = "2018/12/13 14:24:01",
			["stack"] = "...e\\AddOns\\ElvUI\\Modules\\nameplates\\elements\\auras-光环.lua:270: in function `Auras_SizeChanged'\n...e\\AddOns\\ElvUI\\Modules\\nameplates\\elements\\auras-光环.lua:293: in function `UpdateAuraIcons'\n...rface\\AddOns\\ElvUI\\Modules\\nameplates\\nameplates.lua:490: in function `?'\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <Interface\\AddOns\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 132,
			["counter"] = 177,
		}, -- [37]
		{
			["message"] = "...rface\\AddOns\\ElvUI\\Modules\\nameplates\\nameplates.lua:544: <unnamed>:SetText(): Font not set",
			["time"] = "2018/12/13 14:24:11",
			["stack"] = "[C]: in function `SetText'\n...rface\\AddOns\\ElvUI\\Modules\\nameplates\\nameplates.lua:544: in function `?'\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <Interface\\AddOns\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 132,
			["counter"] = 102,
		}, -- [38]
		{
			["message"] = "Interface\\FrameXML\\EquipmentManager.lua:330: attempt to index local 'action' (a nil value)",
			["time"] = "2018/12/13 18:23:48",
			["locals"] = "action = nil\n(*temporary) = <function> defined @Interface\\FrameXML\\EquipmentManager.lua:19\n(*temporary) = <table> {\n 1 = <table> {\n }\n 2 = <table> {\n }\n 3 = <table> {\n }\n 4 = <table> {\n }\n -2 = <table> {\n }\n 0 = <table> {\n }\n}\n(*temporary) = 4\n(*temporary) = 4\n(*temporary) = 1\n(*temporary) = \"attempt to index local 'action' (a nil value)\"\nEQUIP_ITEM = 1\nSWAP_ITEM = 3\nSLOT_EMPTY = -2\nUNEQUIP_ITEM = 2\n",
			["stack"] = "Interface\\FrameXML\\EquipmentManager.lua:330: in function `EquipmentManager_RunAction'\nInterface\\FrameXML\\PaperDollFrame.lua:1948: in function `onClickFunc'\nInterface\\FrameXML\\EquipmentFlyout.lua:479: in function <Interface\\FrameXML\\EquipmentFlyout.lua:476>",
			["session"] = 134,
			["counter"] = 1,
		}, -- [39]
		{
			["message"] = "Interface\\AddOns\\EuiScript\\module\\TalentProfiles.lua:387: attempt to index global 'PlayerTalentFrameTopTileStreaks' (a nil value)",
			["time"] = "2018/12/13 15:18:59",
			["locals"] = "btn_sepX = 10\nbtn_offsetY = 0\nbtn_width = 80\nbtn_height = 23\nmainFrame = TalentProfiles_main {\n 0 = <userdata>\n}\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = TalentProfiles_main {\n 0 = <userdata>\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"Frame\"\n(*temporary) = \"TalentProfiles_main\"\n(*temporary) = PlayerTalentFrame {\n 0 = <userdata>\n TitleText = PlayerTalentFrameTitleText {\n }\n portrait = PlayerTalentFramePortrait {\n }\n frameToMove = PlayerTalentFrame {\n }\n basePanelWidth = 666\n talentGroup = 1\n superExpandedPanelWidth = 987\n inspect = false\n Bg = PlayerTalentFrameBg {\n }\n numTabs = 2\n oborder = <unnamed> {\n }\n onCloseCallback = <function> defined @Interface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:295\n NineSlice = <unnamed> {\n }\n TopTileStreaks = <unnamed> {\n }\n TitleBg = <unnamed> {\n }\n lastSelectedTab = 1\n expandedPanelWidth = 797\n selectedTab = 2\n template = \"Transparent\"\n CloseButton = PlayerTalentFrameCloseButton {\n }\n iborder = <unnamed> {\n }\n primaryTree = 1\n selectedPlayerSpec = \"spec1\"\n layoutType = \"PortraitFrameTemplate\"\n hasBeenShown = true\n Inset = PlayerTalentFrameInset {\n }\n}\n(*temporary) = \"TalentProfiles_main\"\n(*temporary) = 2\n(*temporary) = \"Frame\"\n(*temporary) = \"TalentProfiles_main\"\n(*temporary) = \"attempt to index global 'PlayerTalentFrameTopTileStreaks' (a nil value)\"\nisElvUILoaded = true\nS = <table> {\n SetDefaultModuleLibraries = <function> defined @Interface\\AddOns\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:367\n Blizzard = <table> {\n }\n HandleDropDownBox = <function> defined @Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:621\n ArrowRotation = <table> {\n }\n EnableModule = <function> defined @Interface\\AddOns\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:332\n modules = <table> {\n }\n CancelTimer = <function> defined @Interface\\AddOns\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:147\n IterateEmbeds = <function> defined @Interface\\AddOns\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:442\n SecureHook = <function> defined @Interface\\AddOns\\libs\\AceHook-3.0\\AceHook-3.0.lua:336\n AudioOptionsVoicePanel_InitializeCommunicationModeUI = <function> defined @Interface\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\BlizzardOptions.lua:729\n RawHookScript = <function> defined @Interface\\AddOns\\libs\\AceHook-3.0\\AceHook-3.0.lua:395\n HandleTexture = <function> defined @Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:775\n SetDefaultModulePrototype = <function> defined @Interface\\AddOns\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:409\n defaultModuleState = true\n addonsToLoad = <table> {\n }\n ScheduleTimer = <function> defined @Interface\\AddOns\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:94\n DisableModule = <function> defined @Interface\\AddOns\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:350\n db = <table> {\n }\n SkinLibDropDownMenu = <function> defined @Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:163\n HandleSliderFrame = <function> defined @Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:853\n RegisterMessage = <function> defined @Interface\\AddOns\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:90\n UnregisterMessage = <function> defined @Interface\\AddOns\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:153\n HandleTooltipBorderedFrame = <function> defined @Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1149\n SkinTalentListButtons = <function> defined @Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:196\n IsHooked = <function> defined @Interface\\AddOns\\libs\\AceHook-3.0\\AceHook-3.0.lua:493\n HandleEditBox = <function> defined @Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:591\n StatusBarColorGradient = <function> defined @Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:153\n WidgetSkinningFuncs = <table> {\n }\n PVPHonorXPBarSkinned = true\n baseName = \"ElvUI\"\n SetModifiedBackdrop = <function> defined @Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:74\n HandleShipFollowerPage = <function> defined @Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:993\n SetEnabledState = <function> defined @Interface\\AddOns\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:424\n Hook = <function> defined @Interface\\AddOns\\libs\\AceHook-3.0\\AceHook-3.0.lua:274\n enabledState = true\n SkinAce3 = <function> defined @Interface",
			["stack"] = "Interface\\AddOns\\EuiScript\\module\\TalentProfiles.lua:387: in function `BuildFrame'\nInterface\\AddOns\\EuiScript\\module\\TalentProfiles.lua:498: in function <Interface\\AddOns\\EuiScript\\module\\TalentProfiles.lua:487>\n(tail call): ?\n...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:804: in function `PlayerTalentFrameTab_OnClick'\n...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:837: in function `PlayerTalentTab_OnClick'\n[string \"*:OnClick\"]:1: in function <[string \"*:OnClick\"]:1>",
			["session"] = 135,
			["counter"] = 2,
		}, -- [40]
		{
			["message"] = "Interface\\AddOns\\Ellipsis\\Core.lua:4: Usage: EmbedLibrary(addon, libname, silent, offset): 'libname' - Library 'LibSink-2.0-90103' is not Embed capable",
			["time"] = "2018/12/14 21:40:30",
			["locals"] = "(*temporary) = \"Usage: EmbedLibrary(addon, libname, silent, offset): 'libname' - Library 'LibSink-2.0' is not Embed capable\"\n",
			["stack"] = "[C]: ?\nInterface\\AddOns\\libs\\AceAddon-3.0\\AceAddon-3.0-12.lua:195: in function `EmbedLibrary'\nInterface\\AddOns\\libs\\AceAddon-3.0\\AceAddon-3.0-12.lua:171: in function `EmbedLibraries'\nInterface\\AddOns\\libs\\AceAddon-3.0\\AceAddon-3.0-12.lua:138: in function `NewAddon'\nInterface\\AddOns\\Ellipsis\\Core.lua:4: in main chunk",
			["session"] = 139,
			["counter"] = 1,
		}, -- [41]
		{
			["message"] = "Interface\\AddOns\\Ellipsis\\Defaults-默认设置.lua:8: attempt to index local 'Ellipsis' (a nil value)",
			["time"] = "2018/12/14 21:40:30",
			["locals"] = "Ellipsis = nil\nLSM = <table> {\n OverrideMedia = <table> {\n }\n callbacks = <table> {\n }\n LOCALE_BIT_zhTW = 8\n SetDefault = <function> defined @Interface\\AddOns\\libs\\LibSharedMedia-3.0\\LibSharedMedia-3.0.lua:289\n GetDefault = <function> defined @Interface\\AddOns\\libs\\LibSharedMedia-3.0\\LibSharedMedia-3.0.lua:285\n LOCALE_BIT_ruRU = 2\n UnregisterAllCallbacks = <function> defined @Interface\\AddOns\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:174\n MediaType = <table> {\n }\n LOCALE_BIT_western = 128\n SetGlobal = <function> defined @Interface\\AddOns\\libs\\LibSharedMedia-3.0\\LibSharedMedia-3.0.lua:276\n GetGlobal = <function> defined @Interface\\AddOns\\libs\\LibSharedMedia-3.0\\LibSharedMedia-3.0.lua:272\n List = <function> defined @Interface\\AddOns\\libs\\LibSharedMedia-3.0\\LibSharedMedia-3.0.lua:262\n HashTable = <function> defined @Interface\\AddOns\\libs\\LibSharedMedia-3.0\\LibSharedMedia-3.0.lua:258\n MediaTable = <table> {\n }\n RegisterCallback = <function> defined @Interface\\AddOns\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:90\n IsValid = <function> defined @Interface\\AddOns\\libs\\LibSharedMedia-3.0\\LibSharedMedia-3.0.lua:254\n LOCALE_BIT_zhCN = 4\n UnregisterCallback = <function> defined @Interface\\AddOns\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:153\n Fetch = <function> defined @Interface\\AddOns\\libs\\LibSharedMedia-3.0\\LibSharedMedia-3.0.lua:247\n DefaultMedia = <table> {\n }\n Register = <function> defined @Interface\\AddOns\\libs\\LibSharedMedia-3.0\\LibSharedMedia-3.0.lua:221\n MediaList = <table> {\n }\n LOCALE_BIT_koKR = 1\n}\n(*temporary) = <function> defined @Interface\\AddOns\\Ellipsis\\Defaults.lua:8\n(*temporary) = \"attempt to index local 'Ellipsis' (a nil value)\"\n",
			["stack"] = "Interface\\AddOns\\Ellipsis\\Defaults-默认设置.lua:8: in main chunk",
			["session"] = 139,
			["counter"] = 1,
		}, -- [42]
		{
			["message"] = "Interface\\AddOns\\Ellipsis\\Anchor.lua:15: attempt to index local 'Ellipsis' (a nil value)",
			["time"] = "2018/12/14 21:40:30",
			["locals"] = "Ellipsis = nil\nL = <table> {\n BlacklistCooldownAdd = \"Cooldown Added To The Blacklist: %s [|cffffd100%d|r]\"\n Alert_PrematureCool = \"%s cooldown completed early!\"\n Announce_ExpiredAura = \"My [%s] has expired on [%s]!\"\n OverlayTooltipHelp = \"<Left Click> to move window\n<Mousewheel> to set opacity (|cffffffff%d|r)\n<Shift-Mousewheel> to set scale (|cffffffff%.2f|r)\"\n Aura_Unknown = \"Unknown Aura\"\n Announce_PassiveAura_NoTarget = \"My [%s] is active.\"\n CooldownTimerTooltipNoBlock = \"|cff67b1e9<Left Click> to announce cooldown\n<Right Click> to cancel cooldown timer|r\n|cffd0d0d0Can only block using Blacklist options|r\"\n FilterBlackAdd = \"Aura Added To The Blacklist: %s [|cffffd100%d|r]\"\n AuraTooltipNoBlock = \"|cff67b1e9<Left Click> to announce duration\n<Right Click> to cancel aura timer|r\n|cffd0d0d0Manual block only using options|r\"\n Alert_BrokenAura = \"%s has BROKEN on %s!\"\n OverlayCooldown = \"Cooldown Bar\"\n UnitGroup_notarget = \"Non-Targeted\"\n Announce_ActiveAura_NoTarget = \"My [%s] will expire in %s.\"\n FilterWhiteAdd = \"Aura Added To The Whitelist: %s [|cffffd100%d|r]\"\n UnitGroup_none = \"None\"\n Announce_ActiveAura = \"My [%s] will expire on [%s] in %s.\"\n FilterWhiteRemove = \"Aura Removed From The Whitelist: %s [|cffffd100%d|r]\"\n UnitGroup_harmful = \"Harmful\"\n Announce_PassiveAura = \"My [%s] is active on [%s].\"\n VersionUpdated = \"Version updated to v%s\"\n Alert_CompleteCool = \"%s cooldown has completed!\"\n FilterBlackRemove = \"Aura Removed From The Blacklist: %s [|cffffd100%d|r]\"\n UnitGroup_player = \"Player\"\n UnitGroup_focus = \"Focus\"\n CooldownTimerTooltip = \"|cff67b1e9<Left Click> to announce cooldown\n<Right Click> to cancel cooldown timer\n<Shift-Right Click> to block this cooldown|r\"\n AuraTooltip = \"|cff67b1e9<Left Click> to announce duration\n<Right Click> to cancel aura timer\n<Shift-Right Click> to block this aura|r\"\n UnitGroup_target = \"Target\"\n OverlayTooltipAuras = \"Unit Groups: %s\"\n UnitName_NoTarget = \"Non-Targeted\"\n UnitLevel_Boss = \"B\"\n OverlayTooltipHeader = \"Aura Frame [|cffffd200%d|r]\"\n UnitGroup_pet = \"Pet\"\n Aura_Passive = \"\"\n VersionUpdatedNew = \"Version updated to v%s - New settings are available!\"\n BlacklistCooldownRemove = \"Cooldown Removed From The Blacklist: %s [|cffffd100%d|r]\"\n UnitGroup_helpful = \"Helpful\"\n Alert_ExpiredAura = \"%s has EXPIRED on %s!\"\n Announce_ActiveCooldown = \"My [%s] is on cooldown for %s.\"\n CannotLoadOptions = \"Failed to load Ellipsis_Options, cannot open settings. Error returned: |cffff2020%s|r\"\n OverlayHelperText = \"Frames unlocked for positioning, scaling and opacity changes. Click below for full options or Exit to lock frame positions and hide overlays.\"\n Announce_ExpiredAura_NoTarget = \"My [%s] has expired!\"\n ChatUsage = \"Usage - /ellipsis [lock|unlock]\n   With no argument to open options, or lock or unlock to control positioning of the display windows.\"\n}\nLSM = <table> {\n OverrideMedia = <table> {\n }\n callbacks = <table> {\n }\n LOCALE_BIT_zhTW = 8\n SetDefault = <function> defined @Interface\\AddOns\\libs\\LibSharedMedia-3.0\\LibSharedMedia-3.0.lua:289\n GetDefault = <function> defined @Interface\\AddOns\\libs\\LibSharedMedia-3.0\\LibSharedMedia-3.0.lua:285\n LOCALE_BIT_ruRU = 2\n UnregisterAllCallbacks = <function> defined @Interface\\AddOns\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:174\n MediaType = <table> {\n }\n LOCALE_BIT_western = 128\n SetGlobal = <function> defined @Interface\\AddOns\\libs\\LibSharedMedia-3.0\\LibSharedMedia-3.0.lua:276\n GetGlobal = <function> defined @Interface\\AddOns\\libs\\LibSharedMedia-3.0\\LibSharedMedia-3.0.lua:272\n List = <function> defined @Interface\\AddOns\\libs\\LibSharedMedia-3.0\\LibSharedMedia-3.0.lua:262\n HashTable = <function> defined @Interface\\AddOns\\libs\\LibSharedMedia-3.0\\LibSharedMedia-3.0.lua:258\n MediaTable = <table> {\n }\n RegisterCallback = <function> defined @Interface\\AddOns\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:90\n IsValid = <function> defined @Interface\\AddOns\\libs\\LibSharedMedia-3.0\\LibSharedMedia-3.0.lua:254\n LOCALE_BIT_zhCN = 4\n UnregisterCallback = <function> defined @Interface\\AddOns\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:",
			["stack"] = "Interface\\AddOns\\Ellipsis\\Anchor.lua:15: in main chunk",
			["session"] = 139,
			["counter"] = 1,
		}, -- [43]
		{
			["message"] = "Interface\\AddOns\\Ellipsis\\Overlays.lua:280: attempt to index local 'Ellipsis' (a nil value)",
			["time"] = "2018/12/14 21:40:30",
			["locals"] = "Ellipsis = nil\nL = <table> {\n BlacklistCooldownAdd = \"Cooldown Added To The Blacklist: %s [|cffffd100%d|r]\"\n Alert_PrematureCool = \"%s cooldown completed early!\"\n Announce_ExpiredAura = \"My [%s] has expired on [%s]!\"\n OverlayTooltipHelp = \"<Left Click> to move window\n<Mousewheel> to set opacity (|cffffffff%d|r)\n<Shift-Mousewheel> to set scale (|cffffffff%.2f|r)\"\n Aura_Unknown = \"Unknown Aura\"\n Announce_PassiveAura_NoTarget = \"My [%s] is active.\"\n CooldownTimerTooltipNoBlock = \"|cff67b1e9<Left Click> to announce cooldown\n<Right Click> to cancel cooldown timer|r\n|cffd0d0d0Can only block using Blacklist options|r\"\n FilterBlackAdd = \"Aura Added To The Blacklist: %s [|cffffd100%d|r]\"\n AuraTooltipNoBlock = \"|cff67b1e9<Left Click> to announce duration\n<Right Click> to cancel aura timer|r\n|cffd0d0d0Manual block only using options|r\"\n Alert_BrokenAura = \"%s has BROKEN on %s!\"\n OverlayCooldown = \"Cooldown Bar\"\n UnitGroup_notarget = \"Non-Targeted\"\n Announce_ActiveAura_NoTarget = \"My [%s] will expire in %s.\"\n FilterWhiteAdd = \"Aura Added To The Whitelist: %s [|cffffd100%d|r]\"\n UnitGroup_none = \"None\"\n Announce_ActiveAura = \"My [%s] will expire on [%s] in %s.\"\n FilterWhiteRemove = \"Aura Removed From The Whitelist: %s [|cffffd100%d|r]\"\n UnitGroup_harmful = \"Harmful\"\n Announce_PassiveAura = \"My [%s] is active on [%s].\"\n VersionUpdated = \"Version updated to v%s\"\n Alert_CompleteCool = \"%s cooldown has completed!\"\n FilterBlackRemove = \"Aura Removed From The Blacklist: %s [|cffffd100%d|r]\"\n UnitGroup_player = \"Player\"\n UnitGroup_focus = \"Focus\"\n CooldownTimerTooltip = \"|cff67b1e9<Left Click> to announce cooldown\n<Right Click> to cancel cooldown timer\n<Shift-Right Click> to block this cooldown|r\"\n AuraTooltip = \"|cff67b1e9<Left Click> to announce duration\n<Right Click> to cancel aura timer\n<Shift-Right Click> to block this aura|r\"\n UnitGroup_target = \"Target\"\n OverlayTooltipAuras = \"Unit Groups: %s\"\n UnitName_NoTarget = \"Non-Targeted\"\n UnitLevel_Boss = \"B\"\n OverlayTooltipHeader = \"Aura Frame [|cffffd200%d|r]\"\n UnitGroup_pet = \"Pet\"\n Aura_Passive = \"\"\n VersionUpdatedNew = \"Version updated to v%s - New settings are available!\"\n BlacklistCooldownRemove = \"Cooldown Removed From The Blacklist: %s [|cffffd100%d|r]\"\n UnitGroup_helpful = \"Helpful\"\n Alert_ExpiredAura = \"%s has EXPIRED on %s!\"\n Announce_ActiveCooldown = \"My [%s] is on cooldown for %s.\"\n CannotLoadOptions = \"Failed to load Ellipsis_Options, cannot open settings. Error returned: |cffff2020%s|r\"\n OverlayHelperText = \"Frames unlocked for positioning, scaling and opacity changes. Click below for full options or Exit to lock frame positions and hide overlays.\"\n Announce_ExpiredAura_NoTarget = \"My [%s] has expired!\"\n ChatUsage = \"Usage - /ellipsis [lock|unlock]\n   With no argument to open options, or lock or unlock to control positioning of the display windows.\"\n}\nunitGroupsShown = <table> {\n}\ndropOverlay = <table> {\n insets = <table> {\n }\n bgFile = \"Interface\\ChatFrame\\ChatFrameBackground\"\n edgeSize = 1.500000\n edgeFile = \"Interface\\ChatFrame\\ChatFrameBackground\"\n}\nGetEdgeRelativePosition = <function> defined @Interface\\AddOns\\Ellipsis\\Overlays.lua:17\nSetTooltip = <function> defined @Interface\\AddOns\\Ellipsis\\Overlays.lua:56\nOnMouseDown = <function> defined @Interface\\AddOns\\Ellipsis\\Overlays.lua:91\nOnMouseUp = <function> defined @Interface\\AddOns\\Ellipsis\\Overlays.lua:100\nOnMouseWheel = <function> defined @Interface\\AddOns\\Ellipsis\\Overlays.lua:115\nOnEnter = <function> defined @Interface\\AddOns\\Ellipsis\\Overlays.lua:154\nOnLeave = <function> defined @Interface\\AddOns\\Ellipsis\\Overlays.lua:165\nCreateOverlay = <function> defined @Interface\\AddOns\\Ellipsis\\Overlays.lua:180\nCreateHelpDialog = <function> defined @Interface\\AddOns\\Ellipsis\\Overlays.lua:207\n(*temporary) = <function> defined @Interface\\AddOns\\Ellipsis\\Overlays.lua:280\n(*temporary) = \"attempt to index local 'Ellipsis' (a nil value)\"\n",
			["stack"] = "Interface\\AddOns\\Ellipsis\\Overlays.lua:280: in main chunk",
			["session"] = 139,
			["counter"] = 1,
		}, -- [44]
		{
			["message"] = "...face\\AddOns\\MeetingStone\\Module\\ActivitiesParent.lua:65: attempt to call method 'SetText' (a nil value)",
			["time"] = "2018/12/21 15:43:48",
			["locals"] = "InCombatSkipped",
			["stack"] = "...face\\AddOns\\MeetingStone\\Module\\ActivitiesParent.lua:65: in function <...face\\AddOns\\MeetingStone\\Module\\ActivitiesParent.lua:59>\n(tail call): ?\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:9: in function <[string \"safecall Dispatcher[1]\"]:5>\n(tail call): ?\n...\\AddOns\\MeetingStone\\Libs\\LibClass-2.0-7\\Class-2.0.lua:156: in function `Fire'\n...s\\MeetingStone\\Libs\\NetEaseGUI-2.0-2\\Embed\\Blocker.lua:43: in function `UpdateBlockers'\nInterface\\AddOns\\MeetingStone\\Module\\MainPanel.lua:23: in function <Interface\\AddOns\\MeetingStone\\Module\\MainPanel.lua:21>\n[C]: ?\n[C]: in function `Show'\nInterface\\FrameXML\\UIParent.lua:2635: in function `SetUIPanel'\nInterface\\FrameXML\\UIParent.lua:2480: in function `ShowUIPanel'\nInterface\\FrameXML\\UIParent.lua:2348: in function <Interface\\FrameXML\\UIParent.lua:2344>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\UIParent.lua:3176: in function `ShowUIPanel'\n...ns\\MeetingStone\\Libs\\LibModule-1.0\\LibModule-1.0-2.lua:131: in function `ShowModule'\nInterface\\AddOns\\MeetingStone\\Main.lua:86: in function `Toggle'\nInterface\\AddOns\\MeetingStone\\Module\\DataBroker.lua:48: in function <Interface\\AddOns\\MeetingStone\\Module\\DataBroker.lua:43>",
			["session"] = 150,
			["counter"] = 2,
		}, -- [45]
		{
			["message"] = "Usage: local spellID = C_SpecializationInfo.GetSpellsDisplay(specializationID)",
			["time"] = "2018/10/24 04:46:07",
			["locals"] = "(*temporary) = \"Usage: local spellID = C_SpecializationInfo.GetSpellsDisplay(specializationID)\"\n",
			["stack"] = "[C]: in function `GetSpellsDisplay'\n...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:1247: in function <...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:1099>\n[C]: in function `PlayerTalentFrame_UpdateSpecFrame'\n...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:417: in function `PlayerTalentFrame_Refresh'\n...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:306: in function <...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:299>",
			["session"] = 153,
			["counter"] = 7,
		}, -- [46]
		{
			["message"] = "Interface\\FrameXML\\SocialQueue.lua:60: attempt to index local 'searchResultInfo' (a nil value)",
			["time"] = "2018/12/30 14:26:33",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\FrameXML\\SocialQueue.lua:60: in function `SocialQueueUtil_GetQueueName'\nInterface\\FrameXML\\QuickJoin.lua:425: in function `Update'\nInterface\\FrameXML\\QuickJoin.lua:361: in function `UpdateEntry'\nInterface\\FrameXML\\QuickJoin.lua:86: in function `UpdateEntry'\nInterface\\FrameXML\\QuickJoin.lua:48: in function <Interface\\FrameXML\\QuickJoin.lua:45>",
			["session"] = 155,
			["counter"] = 1,
		}, -- [47]
		{
			["message"] = "Interface\\AddOns\\MeetingStone\\Module\\OptionPanel.lua:342: attempt to index field 'InputSpamWord' (a nil value)",
			["time"] = "2018/12/30 16:26:27",
			["stack"] = "Interface\\AddOns\\MeetingStone\\Module\\OptionPanel.lua:342: in function `AddSpamWord'\nInterface\\AddOns\\MeetingStone\\Module\\BrowsePanel.lua:1006: in function `func'\n...MeetingStone\\Libs\\NetEaseGUI-2.0-2\\Widget\\DropMenu.lua:208: in function <...MeetingStone\\Libs\\NetEaseGUI-2.0\\Widget\\DropMenu.lua:191>\n(tail call): ?\n[C]: ?\n[string \"safecall Dispatcher[3]\"]:9: in function <[string \"safecall Dispatcher[3]\"]:5>\n(tail call): ?\n...\\AddOns\\MeetingStone\\Libs\\LibClass-2.0-7\\Class-2.0.lua:156: in function `Fire'\n...etingStone\\Libs\\NetEaseGUI-2.0-2\\Widget\\ItemButton.lua:28: in function `FireHandler'\n...ingStone\\Libs\\NetEaseGUI-2.0-2\\Widget\\DropMenuItem.lua:88: in function <...ingStone\\Libs\\NetEaseGUI-2.0\\Widget\\DropMenuItem.lua:86>",
			["session"] = 155,
			["counter"] = 2,
		}, -- [48]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'ElvUI' 尝试调用保护功能 'MainMenuBar:ClearAllPoints()'。",
			["time"] = "2018/09/11 15:01:12",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:529: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:529>\n[C]: in function `ClearAllPoints'\nInterface\\FrameXML\\MainMenuBar.lua:43: in function `SetPositionForStatusBars'\nInterface\\FrameXML\\MainMenuBar.lua:122: in function <Interface\\FrameXML\\MainMenuBar.lua:65>",
			["session"] = 161,
			["counter"] = 6,
		}, -- [49]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'ElvUI' 尝试调用保护功能 'MainMenuBar:SetPoint()'。",
			["time"] = "2018/09/06 16:09:48",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:529: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:529>\n[C]: in function `SetPoint'\nInterface\\FrameXML\\UIParent.lua:2946: in function `UIParentManageFramePositions'\nInterface\\FrameXML\\UIParent.lua:2329: in function <Interface\\FrameXML\\UIParent.lua:2316>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\UIParent.lua:3118: in function <Interface\\FrameXML\\UIParent.lua:3116>\n[C]: in function `UIParent_ManageFramePositions'\n...ard_UIWidgets\\Blizzard_UIWidgetBelowMinimapFrame.lua:25: in function <...ard_UIWidgets\\Blizzard_UIWidgetBelowMinimapFrame.lua:3>\n[C]: in function `layoutFunc'\n...dOns\\Blizzard_UIWidgets\\Blizzard_UIWidgetManager.lua:225: in function `UpdateWidgetSetContainerLayout'\n...dOns\\Blizzard_UIWidgets\\Blizzard_UIWidgetManager.lua:318: in function `ProcessWidgetSet'\n...dOns\\Blizzard_UIWidgets\\Blizzard_UIWidgetManager.lua:340: in function `UpdateAllWidgets'\n...dOns\\Blizzard_UIWidgets\\Blizzard_UIWidgetManager.lua:33: in function <...dOns\\Blizzard_UIWidgets\\Blizzard_UIWidgetManager.lua:31>",
			["session"] = 162,
			["counter"] = 5,
		}, -- [50]
		{
			["message"] = "[string \"--[[ Error in '虚空形态':'condition' ]]...\"]:1: attempt to call global 'UintPower' (a nil value)",
			["time"] = "2018/12/30 14:18:47",
			["stack"] = "[C]: in function `xpcall'\n...ace\\AddOns\\WeakAuras\\RegionTypes\\RegionPrototype.lua:199: in function `RunCode'\n[string \"--[[ Error in '虚空形态' ]] local newAc...\"]:31: in function `?'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.9.lua:4557: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:4544>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.9.lua:4635: in function `UpdatedTriggerState'\nInterface\\AddOns\\WeakAuras\\BuffTrigger2.lua:1040: in function <Interface\\AddOns\\WeakAuras\\BuffTrigger2.lua:880>\nInterface\\AddOns\\WeakAuras\\BuffTrigger2.lua:1197: in function <Interface\\AddOns\\WeakAuras\\BuffTrigger2.lua:1193>\nInterface\\AddOns\\WeakAuras\\BuffTrigger2.lua:1469: in function <Interface\\AddOns\\WeakAuras\\BuffTrigger2.lua:1462>",
			["session"] = 168,
			["counter"] = 238,
		}, -- [51]
		{
			["message"] = "...face\\AddOns\\Blizzard_Deprecated\\Deprecated_8_1_0.lua:173: attempt to index local 'info' (a nil value)",
			["time"] = "2019/01/10 12:58:31",
			["locals"] = "index = 1\ninfo = nil\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = 1\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index local 'info' (a nil value)\"\n",
			["stack"] = "...face\\AddOns\\Blizzard_Deprecated\\Deprecated_8_1_0.lua:173: in function <...face\\AddOns\\Blizzard_Deprecated\\Deprecated_8_1_0.lua:171>\nInterface\\AddOns\\EuiScript\\module\\ClassColors.lua:144: in function <Interface\\AddOns\\EuiScript\\module\\ClassColors.lua:130>\n[C]: in function `WhoList_Update'\nInterface\\FrameXML\\FriendsFrame.lua:348: in function <Interface\\FrameXML\\FriendsFrame.lua:316>\n[C]: in function `FriendsFrame_Update'\nInterface\\FrameXML\\FriendsFrame.lua:308: in function `FriendsFrame_OnShow'\n[string \"*:OnClick\"]:2: in function <[string \"*:OnClick\"]:1>",
			["session"] = 171,
			["counter"] = 3,
		}, -- [52]
		{
			["message"] = "...ace\\AddOns\\Ellipsis\\Libs\\LibSink-2.0\\LibSink-2.0-90103.lua:278: table index is nil",
			["time"] = "2018/12/14 19:48:45",
			["locals"] = "(for index) = 15\n(for limit) = 15\n(for step) = 2\ni = 15\nid = false\nname = nil\n(*temporary) = <table> {\n  = \"综合\"\n 2 = false\n EUIGVC = 1\n 大脚世界频道 = 5\n 4 = true\n 交易 = 3\n  = \"本地防务\"\n}\n(*temporary) = \"table index is nil\"\nwipe = <function> defined =[C]:-1\nsink = <table> {\n SetSinkStorage = <function> defined @Interface\\AddOns\\Ellipsis\\Libs\\LibSink-2.0\\LibSink-2.0.lua:690\n RegisterSink = <function> defined @Interface\\AddOns\\Ellipsis\\Libs\\LibSink-2.0\\LibSink-2.0.lua:652\n handlers = <table> {\n }\n SetSinkOverride = <function> defined @Interface\\AddOns\\Ellipsis\\Libs\\LibSink-2.0\\LibSink-2.0.lua:697\n channelMapping = <table> {\n }\n embeds = <table> {\n }\n stickyAddons = <table> {\n }\n registeredScrollAreaFunctions = <table> {\n }\n GetSinkAce3OptionsDataTable = <function> defined @Interface\\AddOns\\Ellipsis\\Libs\\LibSink-2.0\\LibSink-2.0.lua:533\n Embed = <function> defined @Interface\\AddOns\\Ellipsis\\Libs\\LibSink-2.0\\LibSink-2.0.lua:731\n override = <table> {\n }\n channelMappingIds = <table> {\n }\n storageForAddon = <table> {\n }\n msbt_registered_fonts = <table> {\n }\n frame = <unnamed> {\n }\n Pour = <function> defined @Interface\\AddOns\\Ellipsis\\Libs\\LibSink-2.0\\LibSink-2.0.lua:393\n GetSinkAce2OptionsDataTable = <function> defined @Interface\\AddOns\\Ellipsis\\Libs\\LibSink-2.0\\LibSink-2.0.lua:469\n}\nselect = <function> defined =[C]:-1\nnext = <function> defined =[C]:-1\n",
			["stack"] = "...ace\\AddOns\\Ellipsis\\Libs\\LibSink-2.0\\LibSink-2.0-90103.lua:278: in function <...ace\\AddOns\\Ellipsis\\Libs\\LibSink-2.0\\LibSink-2.0.lua:274>\n...ace\\AddOns\\Ellipsis\\Libs\\LibSink-2.0\\LibSink-2.0-90103.lua:287: in function <...ace\\AddOns\\Ellipsis\\Libs\\LibSink-2.0\\LibSink-2.0.lua:287>",
			["session"] = 172,
			["counter"] = 578,
		}, -- [53]
		{
			["message"] = "...erface\\AddOns\\MeetingStone\\Module\\ApplicantPanel.lua:228: attempt to compare two nil values",
			["time"] = "2018/12/14 20:16:56",
			["stack"] = "...erface\\AddOns\\MeetingStone\\Module\\ApplicantPanel.lua:228: in function <...erface\\AddOns\\MeetingStone\\Module\\ApplicantPanel.lua:224>\n[C]: in function `sort'\n...erface\\AddOns\\MeetingStone\\Module\\ApplicantPanel.lua:243: in function `UpdateApplicantsList'\n...erface\\AddOns\\MeetingStone\\Module\\ApplicantPanel.lua:211: in function `?'\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...Ons\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <Interface\\AddOns\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 172,
			["counter"] = 1079,
		}, -- [54]
		{
			["message"] = "Interface\\AddOns\\TrufiGCD\\TrufiGCD.lua:1001: attempt to perform arithmetic on a nil value",
			["time"] = "2018/12/14 19:48:43",
			["locals"] = "self = <unnamed> {\n 0 = <userdata>\n}\nevent = \"UNIT_SPELLCAST_SUCCEEDED\"\narg1 = \"player\"\n_ = \"Cast-3-3054-1861-5108-836-0000939959\"\n_ = 836\n_ = nil\narg5 = nil\nspellicon = nil\n(*temporary) = nil\n(*temporary) = 4\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to perform arithmetic on a nil value\"\nTrGCDEnable = true\nInnerBL = <table> {\n 1 = 61391\n 2 = 5374\n 3 = 27576\n 4 = 88263\n 5 = 98057\n 6 = 32175\n 7 = 32176\n 8 = 96103\n 9 = 85384\n 10 = 57794\n 11 = 52174\n 12 = 135299\n 13 = 121473\n 14 = 121474\n 15 = 114093\n 16 = 114089\n 17 = 115357\n 18 = 115360\n 19 = 127797\n 20 = 102794\n 21 = 50622\n 22 = 122128\n 23 = 110745\n 24 = 120696\n 25 = 120692\n 26 = 115464\n 27 = 126526\n 28 = 132951\n 29 = 107270\n 30 = 137584\n 31 = 137585\n 32 = 117993\n 33 = 124040\n}\ntrinket = \"Interface\\Icons\\inv_jewelry_trinketpvp_01\"\nTrGCDAddGcdSpell = <function> defined @Interface\\AddOns\\TrufiGCD\\TrufiGCD.lua:987\n",
			["stack"] = "Interface\\AddOns\\TrufiGCD\\TrufiGCD.lua:1001: in function <Interface\\AddOns\\TrufiGCD\\TrufiGCD.lua:998>",
			["session"] = 172,
			["counter"] = 351953,
		}, -- [55]
	},
}
