-- Sends Pewpew message in guildchat when you level up.

CliffPewpew = CreateFrame("frame")
CliffPewpew_VERSION = GetAddOnMetadata("CliffPewpew", "Version") -- Grab version from .toc

CliffPewpew:RegisterEvent("ADDON_LOADED")
CliffPewpew:RegisterEvent("PLAYER_LEVEL_UP")

local function print(msg)
	if msg then
		DEFAULT_CHAT_FRAME:AddMessage("|cffFF7D0ACliff|cff00ff00Pewpew|r - "..msg)
	end
end

-- onEvent function
function CliffPewpew:OnEvent()
	if event == "ADDON_LOADED" and arg1 == "CliffPewpew" then
		print("Loaded!")
		print("Version: |cff00ccff"..CliffPewpew_VERSION.."|r")
    elseif event == "PLAYER_LEVEL_UP" then
        SendChatMessage("Pewpew, level "..arg1.."!","GUILD")
    end
end

CliffPewpew:SetScript("OnEvent", CliffPewpew.OnEvent) -- the OnEvent script