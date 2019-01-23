local AS = unpack(AddOnSkins)

if not AS:CheckAddOn("MeetingStone") then
	return 
end

local skinned = false

--[[
local function checkWidget(obj, pathStr)
	local t = obj:GetObjectType()
	if t == "Frame" then
		table.insert(frames, pathStr)
	elseif t == "Button" then
		table.insert(buttons, pathStr)
	end
end

local incurN = 0
local function scanForWidgets(tbl)
	if incurN > 200 then return end
	incurN = incurN + 1
	local classAPI = LibStub:GetLibrary("LibClass-2.0")
	for k, v in pairs(tbl) do
		if classAPI:IsWidget(v) and not v.scanned_h then
			v.path_h = (tbl.path_h and (tbl.path_h.."."..k)) or k
			checkWidget(v, v.path_h)
			scanForWidgets(v)
			v.scanned_h = true
		end
	end
end
]]

local function strToPath(str)
	local path = {}
	for v in string.gmatch(str, "([^\.]+)") do 
		table.insert(path, v)
	end
	return path
end

local function getValue(pathStr, tbl)
	local keys = strToPath(pathStr) 
	local value
	for _, key in pairs(keys) do
		value = value and value[key] or tbl[key]
	end
	return value
end

--- bypass the "stack oveflow" error caused by the addonskins' own StripTextures()
local check_active = false
local function overflow_check(object)
	if not check_active then return end
	local name = object.GetName and object:GetName() 
	if name then print(name) end
end

local MS_Blizzard_Frames = {
	'inset',
	'InsetFrame',
	'LeftInset',
	'RightInset',
	'NineSlice',
	'BorderFrame',
	'bottomInset',
	'BottomInset',
	'bgLeft',
	'bgRight',
	'FilligreeOverlay',
}

local function MS_StripTextures(Object, Kill, Alpha)
	if Object:IsObjectType('Texture') then
		if Kill then
			AS:Kill(Object)
		elseif Alpha then
			Object:SetAlpha(0)
		else
			Object:SetTexture(nil)
		end
	else
		local FrameName = Object.GetName and Object:GetName()
		for _, Blizzard in pairs(MS_Blizzard_Frames) do
			local BlizzFrame = Object[Blizzard] or FrameName and _G[FrameName..Blizzard]
			if BlizzFrame then
				MS_StripTextures(BlizzFrame, Kill)
			end
		end

		if Object.GetNumRegions then
			for i = 1, Object:GetNumRegions() do
				local Region = select(i, Object:GetRegions())
				if Region and Region:IsObjectType('Texture') then
					if Kill then
						AS:Kill(Object)
					elseif Alpha then
						Region:SetAlpha(0)
					else
						Region:SetTexture(nil)
					end
				end
			end
		end
	end
end

--- Skinning process
function AS:MeetingStone(event, addon)
	
	if event == "ADDON_LOADED" then
		if skinned then return end
		local MSEnv = LibStub:GetLibrary("NetEaseEnv-1.0")._NSList.MeetingStone
		local GUI = LibStub("NetEaseGUI-2.0")
		local Panels = {
			"MainPanel",
			"ExchangePanel",
		--	"SettingPanel",
		--	"BrowsePanel",
			"BrowsePanel.AdvFilterPanel",
		--	"MainPanel.blockers.AnnBlocker",
		--	"BrowsePanel.SearchingBlocker",
		--	"CreatePanel",
		--	"DataBroker.BrokerPanel"
		}

		local Buttons = {
			"BrowsePanel.SignUpButton",
			"CreatePanel.CreateButton",
			"CreatePanel.DisbandButton",
			"BrowsePanel.NoResultBlocker.Button",
			"RecentPanel.BatchDeleteButton",
			"BrowsePanel.RefreshFilterButton",
			"BrowsePanel.ResetFilterButton"
		}

		local Dropdowns = {
			"BrowsePanel.ActivityDropdown",
			"CreatePanel.ActivityType",
			"RecentPanel.ActivityDropdown",
			"RecentPanel.ClassDropdown",
			"RecentPanel.RoleDropdown",
		}

		local GridViews = {
			"ApplicantPanel.ApplicantList",
			"BrowsePanel.ActivityList",
			"RecentPanel.MemberList"
		}

		local EditBoxes = {
		--	"CreatePanel.TitleBox",
		--	"CreatePanel.SummaryBox",
			"CreatePanel.HonorLevel",
		--	"CreatePanel.VoiceBox",
			"CreatePanel.ItemLevel",
			"RecentPanel.SearchInput",
		}

		-- Panel
		for _, v in pairs(Panels) do
			local frame = getValue(v, MSEnv)
			if frame then 
				if frame.Inset then MS_StripTextures(frame.Inset) end
				if frame.Inset2 then MS_StripTextures(frame.Inset2) end
				overflow_check(frame)
				MS_StripTextures(frame)
				AS:SetTemplate(frame)
			end
		end

		local titlePanel = MSEnv.DataBroker.BrokerPanel
		overflow_check(titlePanel)
		MS_StripTextures(titlePanel, false, true)
		AS:SetTemplate(titlePanel)
		MSEnv.DataBroker.BrokerIcon:SetAlpha(1)

		-- Button
		for _, v in pairs(Buttons) do
			local button = getValue(v, MSEnv)
			if button then
				overflow_check(button)
				MS_StripTextures(button)
				AS:SkinButton(button)
			end
		end

		-- DropDownBox
		for _, v in pairs(Dropdowns) do
			local frame = getValue(v, MSEnv)
			local text = frame.Text
			local button = frame.MenuButton
			overflow_check(frame)
			overflow_check(button)
			MS_StripTextures(frame)
	
			text:ClearAllPoints()
			text:Point("RIGHT", button, "LEFT", -2, 0)
	
			button:ClearAllPoints()
			button:SetPoint('TOPRIGHT', -14, 0)
			button:SetSize(16, 16)
			AS:SkinArrowButton(button, 'DOWN')
	
			AS:CreateBackdrop(frame)
			AS:SetTemplate(frame.Backdrop, 'Default')
	    	frame.Backdrop:Point("TOPLEFT", -2, 2)
			frame.Backdrop:Point("BOTTOMRIGHT", button, "BOTTOMRIGHT", 2, -2)

			AS:SecureHookScript(button, "OnClick", function(self) AS:SkinFrame(frame.DropMenu) end )
		end

		-- DropMenu
		local Menu = GUI:GetClass('DropMenu')
		local Original_DropMenu_Constructor = Menu.Constructor
		function Menu:Constructor(_, style, withOtherMenu, menuList, level)
			Original_DropMenu_Constructor(self, _, style, withOtherMenu, menuList, level)
			if self.skinned_h then return end
		--	overflow_check(self)
			AS:SkinFrame(self)
			self.skinned_h = true
		end

		-- Tab
		local TabView = GUI:GetClass('TabView')
		local Original_TabView_UpdateItems = TabView.UpdateItems
		function TabView:UpdateItems()
			self:SetItemSpacing(6)
			Original_TabView_UpdateItems(self)
			for i = 1, self:GetItemCount() do
				local tab = self:GetButton(i)
				if not tab.skinned_h then
					overflow_check(tab)
					tab:SetHeight(tab:GetHeight() - 2)
					MS_StripTextures(tab)
					AS:SetTemplate(tab, 'Default')
					tab.skinned_h = true
				end
			end
		end

		-- GridView
		for _, v in pairs(GridViews) do
			local grid = getValue(v, MSEnv)
			if not grid.skinned_h then  
				for _, button in pairs(grid.sortButtons) do
					overflow_check(button)
					MS_StripTextures(button, false, true)
					button.Arrow:SetAlpha(1)
					AS:SetTemplate(button)
				end
				AS:SkinScrollBar(grid:GetScrollBar())
				grid.skinned_h = true
			end
		end

		local ListView = GUI:GetClass('ListView')
		local Original_ListView_UpdateItems = ListView.UpdateItems
		function ListView:UpdateItems()
			Original_ListView_UpdateItems(self)
			for i = 1, #self.buttons do
				local button = self:GetButton(i)
				if not button.skinned_h and button:IsShown() then
					overflow_check(button)
					MS_StripTextures(button)
					AS:StyleButton(button)
					button:SetCheckedTexture(AS.Blank)
					button.SetCheckedTexture = AS.Noop
					button.skinned_h = true
				end
			end
		end

		-- EditBox
		for _, v in pairs(EditBoxes) do
			local edit = getValue(v, MSEnv)
			overflow_check(edit)
			MS_StripTextures(edit)
			AS:SkinEditBox(edit)
		end

		MSEnv.RecentPanel.SearchInput:ClearAllPoints()
		MSEnv.RecentPanel.SearchInput:SetPoint(
			'TOP', MSEnv.RecentPanel, 'TOP', 20, -20)
        MSEnv.RecentPanel.SearchInput:SetSize(150, 15)

		-- Tooltip
		AS:SkinTooltip(MSEnv.MainPanel.GameTooltip)

		-- misc
		MSEnv.MainPanel.PortraitFrame:Hide()
		local Original_BrowserPanel_OnShow = MSEnv.BrowsePanel.OnShow
		MSEnv.BrowsePanel:SetScript('OnShow',
									 function() 
										MSEnv.MainPanel:HideHelpButtons() 									
										Original_BrowserPanel_OnShow(MSEnv.BrowsePanel)
									end)
		MSEnv.ManagerPanel:SetScript('OnShow', function() MSEnv.MainPanel:HideHelpButtons() end)
		AS:SkinButton(MSEnv.CreatePanel.PrivateGroup)

		skinned = true
	end
end

AS:RegisterSkin("MeetingStone", AS.MeetingStone, 'ADDON_LOADED')