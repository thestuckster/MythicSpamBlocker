
local function filterChat(self, event, text, playerName, languageName, channelName, playerName2, sepcialFlags, zoneChannelId, channelIndex, channelBaseName, _, lineId, guid, bnSenderId, isMoble) 
    local filterFuncList = ChatFrame_GetMessageEventFilters(event)
    if(channelName == "2. Trade - City") then
        local wts = 'wts'
        local keywords = {'power leveling', 'powerleveling', 'm%+', 'mythic', 'carry', '10/15/20', 'gold only', 'boosting', 'any key', 'guarantee time'}
        
        if(text ~= nil) then
            local lowerText = string.lower(text)
            if(lowerText:find(wts) ~= nil or lowerText:find('selling')) then
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
