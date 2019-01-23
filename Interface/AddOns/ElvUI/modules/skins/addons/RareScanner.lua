local E, L, V, P, G = unpack(select(2, ...)); --Import: Engine, Locales, PrivateDB, ProfileDB, GlobalDB
local S = E:GetModule('Skins')

local function attemptSkin()
	if scanner_button then
		scanner_button:SetTemplate("Default")
		S:HandleCloseButton(scanner_button.CloseButton)
		S:HandleCloseButton(scanner_button.FilterDisabledButton, nil, '-')
	end
end

local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", attemptSkin)

S:AddCallback("RareScanner", attemptSkin)