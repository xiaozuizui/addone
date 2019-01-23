﻿-- Locale
local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local AL = AceLocale:NewLocale("RareScanner", "enUS", true, true);

if AL then
	AL["ALARM_MESSAGE"] = "A rare NPC just showed up, check your map!"
	AL["ALARM_SOUND"] = "Warning sound for rare NPCs"
	AL["ALARM_SOUND_DESC"] = "Sound played when a rare NPC shows up in your minimap"
	AL["ALARM_TREASURES_SOUND"] = "Warning sound for events/treasures"
	AL["ALARM_TREASURES_SOUND_DESC"] = "Sound played when a treasure/chest or event shows up in your minimap"
	AL["AUTO_HIDE_BUTTON"] = "Autohide button and miniature"
	AL["AUTO_HIDE_BUTTON_DESC"] = "Hides the button and the miniature automatically after the time selected (in seconds). If you select zero seconds the button and the miniature won't autohide"
	AL["CLASS_HALLS"] = "Class Halls"
	AL["CLEAR_FILTERS_SEARCH"] = "Clear"
	AL["CLEAR_FILTERS_SEARCH_DESC"] = "Resets the form to the initial state"
	AL["CLICK_TARGET"] = "Click to target NPC"
	AL["CONTAINER"] = "Container"
	AL["DATABASE_HARD_RESET"] = "Since the most recient expansion and with the last version of RareScanner big changes have occured in the database, which required a database reset in order to avoid inconsistencies. Sorry for the inconvenience."
	AL["DISABLE_SEARCHING_RARE_TOOLTIP"] = "Disable alerts for this rare NPC"
	AL["DISABLE_SOUND"] = "Disable audio alerts"
	AL["DISABLE_SOUND_DESC"] = "When this is activated you won't receive audio alerts"
	AL["DISABLED_SEARCHING_RARE"] = "Disabled alerts for this rare NPC: "
	AL["DISPLAY"] = "Display"
	AL["DISPLAY_BUTTON"] = "Toggle showing the button and the miniature"
	AL["DISPLAY_BUTTON_CONTAINERS"] = "Toggle showing the button for treasures/chests"
	AL["DISPLAY_BUTTON_CONTAINERS_DESC"] = "Toggle showing the button for treasures/chests. It doesn't affect the alarm sound and the chat alerts"
	AL["DISPLAY_BUTTON_DESC"] = "When disabled the button and the miniature won't be shown again. It doesn't affect the alarm sound and the chat alerts"
	AL["DISPLAY_LOG_WINDOW"] = "Toggle showing the log window"
	AL["DISPLAY_LOG_WINDOW_DESC"] = "When disabled the log window won't be shown again."
	AL["DISPLAY_LOOT_ON_MAP"] = "Display loot on map tooltips"
	AL["DISPLAY_LOOT_ON_MAP_DESC"] = "Toggle showing NPC/containers loot on the tooltip that shows up when you move the mouse over the icons"
	AL["DISPLAY_LOOT_PANEL"] = "Toggle showing loot bar"
	AL["DISPLAY_LOOT_PANEL_DESC"] = "When this is activated it will show a bar with the loot dropped by the NPC found"
	AL["DISPLAY_MAP_ICONS"] = "Toggle showing icons on the world map"
	AL["DISPLAY_MAP_ICONS_DESC"] = "When disabled, icons of NPCs, containers or events won't be shown on the world map"
	AL["DISPLAY_MAP_NOT_DISCOVERED_ICONS"] = "Toggle showing not discovered icons on the map."
	AL["DISPLAY_MAP_NOT_DISCOVERED_ICONS_DESC"] = "When disabled, icons of not discovered rare NPCs (the red and orange icons), containers or events won't be shown on the world map"
	AL["DISPLAY_MAP_OLD_NOT_DISCOVERED_ICONS"] = "Toggle showing not discovered icons on the map for older expansions."
	AL["DISPLAY_MAP_OLD_NOT_DISCOVERED_ICONS_DESC"] = "When disabled, icons of not discovered rare NPCs (the red and orange icons), containers or events won't be shown on the world map for areas that belong to older expansions."
	AL["DISPLAY_MINIATURE"] = "Toggle showing the miniature"
	AL["DISPLAY_MINIATURE_DESC"] = "When disabled the miniature won't be shown again."
	AL["DISPLAY_OPTIONS"] = "Display options"
	AL["DUNGEONS_SCENARIOS"] = "Dungeons/Scenarios"
	AL["ENABLE_SCAN_CONTAINERS"] = "Toggle searching treasures or chests"
	AL["ENABLE_SCAN_CONTAINERS_DESC"] = "When this is activated you will be warned visually and with a sound everytime a treasure or chest shows up in your minimap"
	AL["ENABLE_SCAN_EVENTS"] = "Toggle searching events"
	AL["ENABLE_SCAN_EVENTS_DESC"] = "When this is activated you will be warned visually and with a sound everytime an event shows up in your minimap"
	AL["ENABLE_SCAN_GARRISON_CHEST"] = "Toggle searching garrison treasure"
	AL["ENABLE_SCAN_GARRISON_CHEST_DESC"] = "When this is activated you will be warned visually and with a sound everytime your garrison chest shows up in your minimap"
	AL["ENABLE_SCAN_IN_INSTANCE"] = "Toggle scanning in instances"
	AL["ENABLE_SCAN_IN_INSTANCE_DESC"] = "When this is activated the addon will work as usual while you are in an instance (dungeon, raid, etc)"
	AL["ENABLE_SCAN_RARES"] = "Toggle searching rare NPCs"
	AL["ENABLE_SCAN_RARES_DESC"] = "When this is activated you will be warned visually and with a sound everytime a rare NPC shows up in your minimap"
	AL["ENABLE_SEARCHING_RARE_TOOLTIP"] = "Enable alerts for this rare NPC"
	AL["ENABLED_SEARCHING_RARE"] = "Enabled alerts for this rare NPC: "
	AL["EVENT"] = "Event"
	AL["FILTER"] = "NPC filters"
	AL["FILTER_CONTINENT"] = "Continent/Category"
	AL["FILTER_CONTINENT_DESC"] = "Continent or category name"
	AL["FILTER_RARE_LIST"] = "Filter searching for rare NPCs"
	AL["FILTER_RARE_LIST_DESC"] = "Toggle searching for this rare NPC. When disabled you won't get an alert when this NPC is found."
	AL["FILTER_ZONE"] = "Zone"
	AL["FILTER_ZONE_DESC"] = "Zone inside the continent or category"
	AL["FILTER_ZONES_LIST"] = "Zone list"
	AL["FILTER_ZONES_LIST_DESC"] = "Toggle alerts in this zone. When disabled you won't get an alert when a rare NPC, event or treasure is found in this zone."
	AL["FILTERS"] = "Rare NPCs filters"
	AL["FILTERS_SEARCH"] = "Search"
	AL["FILTERS_SEARCH_DESC"] = "Type the name of the NPC to filter the list below"
	AL["GENERAL_OPTIONS"] = "General options"
	AL["JUST_SPAWNED"] = "%s just showed up. Check your map!"
	AL["LEFT_BUTTON"] = "Left-click"
	AL["LOG_WINDOW_AUTOHIDE"] = "Autohide logged NPC buttons"
	AL["LOG_WINDOW_AUTOHIDE_DESC"] = "Hides each NPC button after the time selected (in minutes). If you select zero minutes the buttons will remain until you close the log window, or it reaches the maximun number of buttons (in which case the oldest will be replaced)."
	AL["LOG_WINDOW_OPTIONS"] = "Log window options"
	AL["LOOT_CATEGORY_FILTERED"] = "Filter enabled for the category/subcategory: %s/%s. You can disable this filter by clicking again on the loot icon or from the RareScanner addon's menu"
	AL["LOOT_CATEGORY_FILTERS"] = "Category filters"
	AL["LOOT_CATEGORY_FILTERS_DESC"] = "Filter the loot shown by category"
	AL["LOOT_CATEGORY_NOT_FILTERED"] = "Filter disabled for the category/subcategory: %s/%s"
	AL["LOOT_DISPLAY_OPTIONS"] = "Display options"
	AL["LOOT_DISPLAY_OPTIONS_DESC"] = "Display options for the loot bar"
	AL["LOOT_FILTER_COLLECTED"] = "Filter collected pets, mounts and toys."
	AL["LOOT_FILTER_COLLECTED_DESC"] = "When activated, only mounts, pets and toys that you haven't collected yet will be show on the loot bar. This filter doesn't affect other kinds of lootable items, whatsoever."
	AL["LOOT_FILTER_NOT_EQUIPABLE"] = "Filter non-equipable items"
	AL["LOOT_FILTER_NOT_EQUIPABLE_DESC"] = "When disabled, armor and weapons that this character cannot wear won't show up on the loot bar. This filter doesn't affect other kinds of lootable items, whatsoever."
	AL["LOOT_FILTER_NOT_TRANSMOG"] = "Show only transmog armor and weapons"
	AL["LOOT_FILTER_NOT_TRANSMOG_DESC"] = "When activated, only armor and weapons that you haven't collected yet will be shown on the loot bar. This filter doesn't affect other kinds of lootable items, whatsoever."
	AL["LOOT_FILTER_SUBCATEGORY_DESC"] = "Toggle showing this kind of loot on the loot bar. When disabled you won't see any item that matches this category on the loot shown when you find a rare NPC."
	AL["LOOT_FILTER_SUBCATEGORY_LIST"] = "Subcategories"
	AL["LOOT_ITEMS_PER_ROW"] = "Number of items per row to display"
	AL["LOOT_ITEMS_PER_ROW_DESC"] = "Sets the number of items to display per row on the loot bar. If the number is less than the maximum several rows will be displayed."
	AL["LOOT_MAIN_CATEGORY"] = "Main category"
	AL["LOOT_MAX_ITEMS"] = "Number of items to display"
	AL["LOOT_MAX_ITEMS_DESC"] = "Sets the maximum number of items to display on the loot bar."
	AL["LOOT_MIN_QUALITY"] = "Minimum loot quality"
	AL["LOOT_MIN_QUALITY_DESC"] = "Defines the minimum loot quality to show in the loot bar"
	AL["LOOT_OPTIONS"] = "Loot options"
	AL["LOOT_OTHER_FILTERS"] = "Other filters"
	AL["LOOT_OTHER_FILTERS_DESC"] = "Other filters"
	AL["LOOT_PANEL_OPTIONS"] = "Loot bar options"
	AL["LOOT_SUBCATEGORY_FILTERS"] = "Subcategory filters"
	AL["LOOT_TOGGLE_FILTER"] = "Click to toggle filter"
	AL["LOOT_TOOLTIP_POSITION"] = "Loot tooltip position"
	AL["LOOT_TOOLTIP_POSITION_DESC"] = "Defines where to show the loot tooltip that appears when you move the mouse over an icon, in respect to the button"
	AL["MAIN_BUTTON_OPTIONS"] = "Main button options"
	AL["MAP_MENU_DISABLE_LAST_SEEN_FILTER"] = "Show alive rare NPCs even if they where seen a long time ago"
	AL["MAP_MENU_SHOW_ALL"] = "Show icons on map"
	AL["MAP_MENU_SHOW_NOT_DISCOVERED"] = "Not discovered entities"
	AL["MAP_MENU_SHOW_NOT_DISCOVERED_OLD"] = "Not discovered entities (older expansions)"
	AL["MAP_NEVER"] = "Never"
	AL["MAP_OPTIONS"] = "Map options"
	AL["MAP_SHOW_ICON_AFTER_COLLECTED"] = "Keep showing container icons after looted"
	AL["MAP_SHOW_ICON_AFTER_COLLECTED_DESC"] = "When disabled the icon will disappear after you loot the container."
	AL["MAP_SHOW_ICON_AFTER_DEAD"] = "Keep showing NPC icons after death"
	AL["MAP_SHOW_ICON_AFTER_DEAD_DESC"] = "When disabled the icon will disappear after you kill the NPC. The icon will reappear as soon as you find the NPC again. This option only works with NPCs that keep being rares after killing them."
	AL["MAP_SHOW_ICON_CONTAINER_MAX_SEEN_TIME"] = "Timer to hide container icons (in minutes)"
	AL["MAP_SHOW_ICON_CONTAINER_MAX_SEEN_TIME_DESC"] = "Sets the maximum number of minutes since you have seen the container. After that time, the icon won't be shown on the world map until you find the container again. If you select zero minutes the icons will be shown regardless of how long since you have seen the container. This filter doesn't apply to containers that are part of an achievement."
	AL["MAP_SHOW_ICON_MAX_SEEN_TIME"] = "Timer to hide rare NPC icons (in hours)"
	AL["MAP_SHOW_ICON_MAX_SEEN_TIME_DESC"] = "Sets the maximum number of hours since you have seen the NPC. After that time, the icon won't be shown on the world map until you find the NPC again. If you select zero hours the icons will be shown regardless of how long since you have seen the rare NPC."
	AL["MAP_TOOLTIP_ACHIEVEMENT"] = "This is an objective of the achievement %s"
	AL["MAP_TOOLTIP_ALREADY_KILLED"] = "This NPC is already killed. Restart on: %s"
	AL["MAP_TOOLTIP_ALREADY_OPENED"] = "This container is already opened. Restart on: %s"
	AL["MAP_TOOLTIP_CONTAINER_LOOTED"] = "Shift-Left-Click to set as looted."
	AL["MAP_TOOLTIP_DAYS"] = "days"
	AL["MAP_TOOLTIP_EVENT_DONE"] = "Shift-Left-Click to set as completed"
	AL["MAP_TOOLTIP_IGNORE_ICON"] = "Shift-Left-Click to hide this icon forever if it shouldn't be here."
	AL["MAP_TOOLTIP_KILLED"] = "Shift-Left-Click to set as killed"
	AL["MAP_TOOLTIP_NOT_FOUND"] = "You haven't seen this NPC and no one has shared it with you yet."
	AL["MAP_TOOLTIP_SEEN"] = "Seen before: %s"
	AL["MESSAGE_OPTIONS"] = "Messages options"
	AL["MIDDLE_BUTTON"] = "Middle-click"
	AL["NOT_TARGETEABLE"] = "Not targeteable"
	AL["NOTE_130350"] = "You have to ride this rare to the container that you will find by following the path to the right of this position."
	AL["NOTE_131453"] = "You have to ride [Guardian of the Spring] to this position. The horse is a friendly rare that you will find by following the path to the left of this container."
	AL["NOTE_280951"] = "Follow the railway until you find a cart. Ride it to discover the treasure."
	AL["NOTE_287239"] = "If you are horde you have to complete Vol'dun campaign in order to have access to the temple."
	AL["NOTE_289647"] = "The treasure is in a cave. The entrance is at the coordinates 65.11, between some trees almost on top of the mountain."
	AL["NOTE_292673"] = "1 of 5 scrolls. Read all of them to discover the treasure [Secret of the Depths]. It is in the basement. Hide this icon manually once you read it."
	AL["NOTE_292674"] = "2 of 5 scrolls. Read all of them to discover the treasure [Secret of the Depths]. It is under the wood floor, in the corner beside a bunch of candles. Hide this icon manually once you read it."
	AL["NOTE_292675"] = "3 of 5 scrolls. Read all of them to discover the treasure [Secret of the Depths]. It is in the basement. Hide this icon manually once you read it."
	AL["NOTE_292676"] = "4 of 5 scrolls. Read all of them to discover the treasure [Secret of the Depths]. It is in the top floor. Hide this icon manually once you read it."
	AL["NOTE_292677"] = "5 of 5 scrolls. Read all of them to discover the treasure [Secret of the Depths]. It is in an underground cave. The entrance is under water at the coordinates 72.40 (water pool at the monastery). Hide this icon manually once you read it."
	AL["NOTE_292686"] = "After reading the 5 scrolls, use the [Ominous Altar] to obtain [Secret of the Depths]. Warning: Using the altar will teleport you to the middle of the sea. Hide this icon manually once you use it."
	AL["NOTE_293349"] = "It is inside the shed, on top of a shelf."
	AL["NOTE_293350"] = "This treasure is hidden in a cave underneath. Go to the coordinates 61.38, and set the camera on top, then jump backwards through the little crack on the floor and land on the ledge."
	AL["NOTE_293852"] = "You won't see this until you collect [Soggy Treasure Map] from the pirates at Freehold"
	AL["NOTE_293880"] = "You won't see this until you collect [Fading Treasure Map] from the pirates at Freehold"
	AL["NOTE_293881"] = "You won't see this until you collect [Yellowed Treasure Map] from the pirates at Freehold"
	AL["NOTE_293884"] = "You won't see this until you collect [Singed Treasure Map] from the pirates at Freehold"
	AL["NOTE_297828"] = "The raven flying on top holds the key. Kill it."
	AL["NOTE_297891"] = "You have to disable the runes in this order: Left, Down, Up, Right"
	AL["NOTE_297892"] = "You have to disable the runes in this order: Left, Right, Down, Up"
	AL["NOTE_297893"] = "You have to disable the runes in this order: Right, Up, Left, Down"
	AL["PROFILES"] = "Profiles"
	AL["RAIDS"] = "Raids"
	AL["SHOW_CHAT_ALERT"] = "Toggle showing chat alerts"
	AL["SHOW_CHAT_ALERT_DESC"] = "Shows a private message in the chat every time a treasure, chest or NPC is found"
	AL["SHOW_RAID_WARNING"] = "Toggle showing raid warnings"
	AL["SHOW_RAID_WARNING_DESC"] = "Shows a raid warning on your screen every time a treasure, chest or NPC is found"
	AL["SOUND"] = "Sound"
	AL["SOUND_OPTIONS"] = "Sound options"
	AL["SOUND_VOLUME"] = "Volume"
	AL["SOUND_VOLUME_DESC"] = "Sets the sound volume level"
	AL["SYNCRONIZATION_COMPLETED"] = "Syncronization completed"
	AL["SYNCRONIZE"] = "Sync database"
	AL["SYNCRONIZE_DESC"] = "This will analize which rare NPCs and treasures that are part of an achievement you have killed/collected already, and they will disappear from your map. There is no way to know the state of non-achievement rare NPCs and treasures, so they will remain in your map as they are currently shown."
	AL["TEST"] = "Launch Test"
	AL["TEST_DESC"] = "Press the button to show an alert example. You can drag and drop the panel to another position where it will be shown from now on."
	AL["TOC_NOTES"] = "Minimap scanner. Warns you visually with a button and a miniature and plays a sound everytime a rare NPC, treasure/chest or event shows up in your minimap"
	AL["TOGGLE_FILTERS"] = "Toggle filters"
	AL["TOGGLE_FILTERS_DESC"] = "Toggle all filters at once"
	AL["TOOLTIP_BOTTOM"] = "Lower side"
	AL["TOOLTIP_CURSOR"] = "Follow cursor"
	AL["TOOLTIP_LEFT"] = "Left side"
	AL["TOOLTIP_RIGHT"] = "Right side"
	AL["TOOLTIP_TOP"] = "Upper side"
	AL["UNKNOWN"] = "Unknown"
	AL["UNKNOWN_TARGET"] = "Unknown target"
	AL["ZONES_FILTER"] = "Zone filters"
	AL["ZONES_FILTERS_SEARCH_DESC"] = "Type the name of the zone to filter the list below"

	-- CONTINENT names
	AL["ZONES_CONTINENT_LIST"] = {
		[9999] = "Class Halls"; --Class Halls
		[9998] = "Darkmoon Island"; --Darkmoon Island
		[9997] = "Dungeons/Scenarios"; --Dungeons/Scenarios
		[9996] = "Raids"; --Raids
		[9995] = "Unknown"; --Unknown
	}
end