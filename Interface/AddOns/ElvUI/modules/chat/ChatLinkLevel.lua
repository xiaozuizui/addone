local E = unpack(select(2, ...));------------------------------------------------ 聊天超鏈接增加物品等級 (支持大祕境鑰匙等級)-- @Author:M----------------------------------------------local tooltip = CreateFrame("GameTooltip", "ChatLinkLevelTooltip", UIParent, "GameTooltipTemplate")local ItemLevelPattern = gsub(ITEM_LEVEL, "%%d", "(%%d+)")local ARMOR = ARMOR or "Armor"local WEAPON = WEAPON or "Weapon"local RELICSLOT = RELICSLOT or "Relic"local GetItemInfo = GetItemInfolocal match, find = string.match, string.find--获取物品实际等级local function GetItemLevelAndTexture(ItemLink)    local _, _, _, _, _, class, subclass, _, equipSlot, texture = GetItemInfo(ItemLink)    if (not texture) then return end    local text, level, slotText    tooltip:SetOwner(UIParent, "ANCHOR_NONE")    tooltip:ClearLines()    tooltip:SetHyperlink(ItemLink)    for i = 2, 4 do        text = _G[tooltip:GetName().."TextLeft"..i]:GetText() or ""        level = match(text, ItemLevelPattern)        if (level) then break end    end    if (equipSlot and find(equipSlot, "INVTYPE_")) then        slotText = _G[equipSlot]    elseif (class == ARMOR) then        slotText = class    elseif (subclass and find(subclass, RELICSLOT)) then        slotText = RELICSLOT    end    if (level and slotText) then        level = level .. "(" .. slotText .. ")"    end    return level, textureend--等级图标显示local function SetChatLinkLevel(Hyperlink)    local link = match(Hyperlink, "|H(.-)|h")    local level, texture = GetItemLevelAndTexture(link)    if (level) then        Hyperlink = Hyperlink:gsub("|h%[(.-)%]|h", "|h["..level..":%1]|h")    end    return Hyperlinkend--鑰匙等級local function SetChatLinkKeystoneLevel(Hyperlink)    local map, level, name = string.match(Hyperlink, "|Hkeystone:(%d+):(%d+):.-|h(.-)|h")    if (map and level and not string.find(name, level)) then        local name = C_Map.GetMapInfo(map)        Hyperlink = Hyperlink:gsub("|h%[(.-)%]|h", "|h["..level..":"..name.."]|h")    end    return Hyperlinkend--过滤器local function filter(self, event, msg, ...)    if (E.db.chat.chatItemLevel) then        msg = msg:gsub("(|Hitem:%d+:.-|h.-|h)", SetChatLinkLevel)    --    msg = msg:gsub("(|Hkeystone:%d+:.-|h.-|h)", SetChatLinkKeystoneLevel)    end    return false, msg, ...endChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL", filter)ChatFrame_AddMessageEventFilter("CHAT_MSG_SAY", filter)ChatFrame_AddMessageEventFilter("CHAT_MSG_YELL", filter)ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER", filter)ChatFrame_AddMessageEventFilter("CHAT_MSG_BN_WHISPER", filter)ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER_INFORM", filter)ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID", filter)ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID_LEADER", filter)ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY", filter)ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY_LEADER", filter)ChatFrame_AddMessageEventFilter("CHAT_MSG_GUILD", filter)ChatFrame_AddMessageEventFilter("CHAT_MSG_BATTLEGROUND", filter)ChatFrame_AddMessageEventFilter("CHAT_MSG_LOOT", filter)