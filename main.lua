local function MyAddonCommands(msg, editbox)
    print("|cFF00FF00[MythicSpamBlocker]: |cFFFFFFFF version 2.0 https://www.curseforge.com/wow/addons/mythicspamblocker")    
end
  
SLASH_HELLOWORLD1, SLASH_HELLOWORLD2 = '/msb', '/mythicspamblocker'
  
SlashCmdList["HELLOWORLD"] = MyAddonCommands   -- add /hiw and /hellow to command list

local function filterChat(self, event, text, playerName, languageName, channelName, playerName2, sepcialFlags, zoneChannelId, channelIndex, channelBaseName, _, lineId, guid, bnSenderId, isMoble) 
    local filterFuncList = ChatFrame_GetMessageEventFilters(event)
    if(channelName == "2. Trade - City") then
        local wts = 'wts'
        local selling = 'selling'
        local keywords = {'gold only', 'power leveling', 'powerleveling', 'm%+', 'mythic', 'carry', '10/15/20', 'gold only%!', 'boosting', 'any key', 
        'guarantee time', 'pwrlvl', 'layer', 'carries', 'carry', 'keys', 'raid', 'incarnates', 'voti', 'crucible',  'aberrus', 'keep items', 'vault',
        'shadowed', 'sc'}

        if(text ~= nil) then
            local lowerText = string.lower(text)
            if(lowerText:find(wts) ~= nil or lowerText:find(selling)) ~= nil then
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