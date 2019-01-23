local myname, ns = ...

ns.defaults = {
    profile = {
        show_on_world = true,
        show_on_minimap = false,
        show_junk = false,
        show_npcs = true,
        show_treasure = true,
        found = false,
        repeatable = true,
        icon_scale = 0.9,
        icon_alpha = 0.9,
        icon_item = false,
        tooltip_item = true,
        tooltip_questid = false,
    },
    char = {
        hidden = {
            ['*'] = {},
        },
    },
}


local L = {}
if GetLocale() == 'zhCN' then
	L["Icon settings"] = "ͼ������"
	L["These settings control the look and feel of the icon."] = "��Щ���ý�����ͼ������.";
	L["Icon Scale"] = "ͼ�����"
	L["Icon Alpha"] = "ͼ��͸����"
	L["Minimap"] = "С��ͼ"
	L["World Map"] = "�����ͼ"
	L["What to display"] = "��ʾ����"
	L["Use item icons"] = "ʹ����Ʒͼ��"
	L["Show the icons for items, if known; otherwise, the achievement icon will be used"] = "��ʾ��֪����Ʒͼ���ɾ�ͼ��"
	L["Use item tooltips"] = "ʹ����Ʒ��ʾ"
	L["Show the full tooltips for items"] = "��ʾ��������Ʒ��ʾ��Ϣ"
    L["Show found"] = "��ʾ���ҵ���"
    L["Show waypoints for items you've already found?"] = "��ʾ�ѷ��ֵ�·����?"
    L["Show NPCs"] = "��ʾϡ��"
    L["Show rare NPCs to be killed, generally for items or achievements"] = "��ʾ�ѱ���ɱ����ϡ��,ͨ��Ϊ��Ʒ�����ɾ�"
	L["Show treasure"] = "��ʾ����"
	L["Show treasure that can be looted"] = "��ʾ�ܱ�ʰȡ�ı���"
	L["Junk"] = "����"
	L["Show items which don't count for any achievement"] = "��ʾ���κγɾ͵���Ʒ"
	L["Show quest ids"] = "��ʾ����ID"
	L["Show the internal id of the quest associated with this node. Handy if you want to report a problem with it."] = "��ʾ���õ�·��������ID,ͨ��Ϊ�˷�������."
	L["Reset hidden nodes"] = "�������ص�·����"
	L["Show all nodes that you manually hid by right-clicking on them and choosing \"hide\"."] = "��ʾ���е�·���㣬�������ֹ����غ͹رյ�."
elseif GetLocale() == 'zhTW' then
	L["Icon settings"] = "�Dʾ�O��"
	L["These settings control the look and feel of the icon."] = "�@Щ�O�Ì����ƈDʾ�����^.";
	L["Icon Scale"] = "�Dʾ����"
	L["Icon Alpha"] = "�Dʾ͸����"
	L["Minimap"] = "С�؈D"
	L["World Map"] = "����؈D"
	L["What to display"] = "�@ʾ����"
	L["Use item icons"] = "ʹ����Ʒ�Dʾ"
	L["Show the icons for items, if known; otherwise, the achievement icon will be used"] = "�@ʾ��֪����Ʒ�Dʾ��ɾ͈Dʾ"
	L["Use item tooltips"] = "ʹ����Ʒ��ʾ"
	L["Show the full tooltips for items"] = "�@ʾ��������Ʒ��ʾ�YӍ"
    L["Show found"] = "�@ʾ���ҵ���"
    L["Show waypoints for items you've already found?"] = "�@ʾ�Ѱl�F��·���c?"
    L["Show NPCs"] = "�@ʾϡ��"
    L["Show rare NPCs to be killed, generally for items or achievements"] = "�@ʾ�ѱ������^��ϡ��,ͨ������Ʒ�����ɾ�"
	L["Show treasure"] = "�@ʾ����"
	L["Show treasure that can be looted"] = "�@ʾ�ܱ�ʰȡ�Č���"
	L["Junk"] = "����"
	L["Show items which don't count for any achievement"] = "�@ʾ�o�κγɾ͵���Ʒ"
	L["Show quest ids"] = "�@ʾ�΄�ID"
	L["Show the internal id of the quest associated with this node. Handy if you want to report a problem with it."] = "�@ʾ���õ�·���c�΄�ID,ͨ�����˻������}."
	L["Reset hidden nodes"] = "���O�[�ص�·���c"
	L["Show all nodes that you manually hid by right-clicking on them and choosing \"hide\"."] = "�@ʾ���е�·���c���������ֹ��[�غ��P�]��."
else
	L["Icon settings"] = "Icon settings"
	L["These settings control the look and feel of the icon."] = "These settings control the look and feel of the icon.";
	L["Icon Scale"] = "Icon Scale"
	L["Icon Alpha"] = "Icon Alpha"
	L["Minimap"] = "Minimap"
	L["World Map"] = "World Map"
	L["What to display"] = "What to display"
	L["Use item icons"] = "Use item icons"
	L["Show the icons for items, if known; otherwise, the achievement icon will be used"] = "Show the icons for items, if known; otherwise, the achievement icon will be used"
	L["Use item tooltips"] = "Use item tooltips"
	L["Show the full tooltips for items"] = "Show the full tooltips for items"
    L["Show found"] = "Show found"
    L["Show waypoints for items you've already found?"] = "Show waypoints for items you've already found?"
    L["Show NPCs"] = "Show NPCs"
    L["Show rare NPCs to be killed, generally for items or achievements"] = "Show rare NPCs to be killed, generally for items or achievements"
	L["Show treasure"] = "Show treasure"
	L["Show treasure that can be looted"] = "Show treasure that can be looted"
	L["Junk"] = "Junk"
	L["Show items which don't count for any achievement"] = "Show items which don't count for any achievement"
	L["Show quest ids"] = "Show quest ids"
	L["Show the internal id of the quest associated with this node. Handy if you want to report a problem with it."] = "Show the internal id of the quest associated with this node. Handy if you want to report a problem with it."
	L["Reset hidden nodes"] = "Reset hidden nodes"
	L["Show all nodes that you manually hid by right-clicking on them and choosing \"hide\"."] = "Show all nodes that you manually hid by right-clicking on them and choosing \"hide\"."
end

ns.options = {
    type = "group",
    name = myname:gsub("HandyNotes_", ""),
    get = function(info) return ns.db[info[#info]] end,
    set = function(info, v)
        ns.db[info[#info]] = v
        ns.HL:SendMessage("HandyNotes_NotifyUpdate", myname:gsub("HandyNotes_", ""))
    end,
    args = {
        icon = {
            type = "group",
            name = L["Icon settings"],
            inline = true,
            args = {
                desc = {
                    name = L["These settings control the look and feel of the icon."],
                    type = "description",
                    order = 0,
                },
                icon_scale = {
                    type = "range",
                    name = L["Icon Scale"],
                    desc = "The scale of the icons",
                    min = 0.25, max = 2, step = 0.01,
                    order = 20,
                },
                icon_alpha = {
                    type = "range",
                    name = L["Icon Alpha"],
                    desc = "The alpha transparency of the icons",
                    min = 0, max = 1, step = 0.01,
                    order = 30,
                },
                show_on_world = {
                    type = "toggle",
                    name = L["World Map"],
                    desc = "Show icons on world map",
                    order = 40,
                },
                show_on_minimap = {
                    type = "toggle",
                    name = L["Minimap"],
                    desc = "Show icons on the minimap",
                    order = 50,
                },
            },
        },
        display = {
            type = "group",
            name = L["What to display"],
            inline = true,
            args = {
                icon_item = {
                    type = "toggle",
                    name = L["Use item icons"],
                    desc = L["Show the icons for items, if known; otherwise, the achievement icon will be used"],
                    order = 0,
                },
                tooltip_item = {
                    type = "toggle",
                    name = L["Use item tooltips"],
                    desc = L["Show the full tooltips for items"],
                    order = 10,
                },
                found = {
                    type = "toggle",
                    name = L["Show found"],
                    desc = L["Show waypoints for items you've already found?"],
                    order = 20,
                },
                show_npcs = {
                    type = "toggle",
                    name = L["Show NPCs"],
                    desc = L["Show rare NPCs to be killed, generally for items or achievements"],
                    order = 30,
                },
                show_treasure = {
                    type = "toggle",
                    name = L["Show treasure"],
                    desc = L["Show treasure that can be looted"],
                    order = 30,
                },
                show_junk = {
                    type = "toggle",
                    name = L["Junk"],
                    desc = L["Show items which don't count for any achievement"],
                    order = 40,
                },
                -- repeatable = {
                --     type = "toggle",
                --     name = "Show repeatable",
                --     desc = "Show items which are repeatable? This generally means ones which have a daily tracking quest attached",
                --     order = 40,
                -- },
                tooltip_questid = {
                    type = "toggle",
                    name = L["Show quest ids"],
                    desc = L["Show the internal id of the quest associated with this node. Handy if you want to report a problem with it."],
                    order = 40,
                },
                unhide = {
                    type = "execute",
                    name = L["Reset hidden nodes"],
                    desc = L["Show all nodes that you manually hid by right-clicking on them and choosing \"hide\"."],
                    func = function()
                        for map,coords in pairs(ns.hidden) do
                            wipe(coords)
                        end
                        ns.HL:Refresh()
                    end,
                    order = 50,
                },
            },
        },
    },
}

local allQuestsComplete = function(quests)
    if type(quests) == 'table' then
        -- if it's a table, only count as complete if all quests are complete
        for _, quest in ipairs(quests) do
            if not IsQuestFlaggedCompleted(quest) then
                return false
            end
        end
        return true
    elseif IsQuestFlaggedCompleted(quests) then
        return true
    end
end

local player_faction = UnitFactionGroup("player")
local player_name = UnitName("player")
ns.should_show_point = function(coord, point, currentZone, isMinimap)
    if isMinimap and not ns.db.show_on_minimap and not point.minimap then
        return false
    elseif not isMinimap and not ns.db.show_on_world then
        return false
    end
    if ns.hidden[currentZone] and ns.hidden[currentZone][coord] then
        return false
    end
    if ns.outdoors_only and IsIndoors() then
        return false
    end
    if point.junk and not ns.db.show_junk then
        return false
    end
    if point.faction and point.faction ~= player_faction then
        return false
    end
    if (not ns.db.found) then
        if point.quest then
            if allQuestsComplete(point.quest) then
                return false
            end
        elseif point.achievement then
            local completedByMe = select(13, GetAchievementInfo(point.achievement))
            if completedByMe then
                return false
            end
            if point.criteria then
                local _, _, completed, _, _, completedBy = GetAchievementCriteriaInfoByID(point.achievement, point.criteria)
                if completed and completedBy == player_name then
                    return false
                end
            end
        end
        if point.follower and C_Garrison.IsFollowerCollected(point.follower) then
            return false
        end
        if point.toy and point.item and PlayerHasToy(point.item) then
            return false
        end
    end
    -- if (not ns.db.repeatable) and point.repeatable then
    --     return false
    -- end
    if not point.follower then
        if point.npc then
            if not ns.db.show_npcs then
                return false
            end
        else
            -- Not an NPC, not a follower, must be treasure
            if not ns.db.show_treasure then
                return false
            end
        end
    end
    if point.hide_before and not ns.db.upcoming and not allQuestsComplete(point.hide_before) then
        return false
    end
    return true
end
