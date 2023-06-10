-- remove after debugging
filtering_enabled = false

local function MyAddonCommands(msg, editbox)
    print("|cFF00FF00[MythicSpamBlocker]: |cFFFFFFFF version 2.0 https://www.curseforge.com/wow/addons/mythicspamblocker")    
end

local function ToggleFiltering(msg, editbox) {
    filtering_enabled = !filtering_enabled
}

SLASH_HELLOWORLD1, SLASH_HELLOWORLD2 = '/msb', '/mythicspamblocker'
SLASH_TOGGLE = '/msb-filter'
  
SlashCmdList["HELLOWORLD"] = MyAddonCommands   -- add /hiw and /hellow to command list
SlashCmdList["MYTHICSPACBLOCKER"] = ToggleFiltering -- add /msb-filter to the command list

local function filterChat(self, event, text, playerName, languageName, channelName, playerName2, sepcialFlags, zoneChannelId, channelIndex, channelBaseName, _, lineId, guid, bnSenderId, isMoble) 
   if(!filtering_enabled) then 
    return
   end

    local filterFuncList = ChatFrame_GetMessageEventFilters(event)
    if(channelName == "2. Trade - City") then
        local wts = 'wts'
        local keywords = {'gold only', 'power leveling', 'powerleveling', 'm%+', 'mythic', 'carry', '10/15/20', 'gold only%!', 'boosting', 'any key', 
        'guarantee time', 'pwrlvl', 'layer', 'carries', 'carry', 'keys', 'raid', 'incarnates', 'voti', 'crucible',  'aberrus', 'keep items', 'vault',
        'shadowed'}
        
        if(text ~= nil) then
            local lowerText = string.lower(text)
            if(lowerText:find(wts) ~= nil or lowerText:find('selling')) ~= nil then
                for i, keyword in ipairs(keywords) do
                    if(lowerText:find(keyword) ~= nil) then
                        return true
                    end
                end
            end
        end
    end 
end

ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL", filterChat)