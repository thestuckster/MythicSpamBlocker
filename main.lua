
local function filterChat(self, event, text, playerName, languageName, channelName, playerName2, sepcialFlags, zoneChannelId, channelIndex, channelBaseName, _, lineId, guid, bnSenderId, isMoble) 
    local filterFuncList = ChatFrame_GetMessageEventFilters(event)

    if(channelName == "2. Trade - City") then
        local powerLevel = 'power leveling'
        local powerLevel2 = 'powerleveling'
        local wts = 'wts'
        local m = 'm%+'
        local mythic = 'mythic'
        local carry = 'carry'
        local mythicNumbers = '10/15/20'
        local goldOnly = 'gold only'
        local boosting = 'boosting'

        -- local keywords = {'power leveling', 'powerleveling', 'wts', 'm%+', 'mythic', 'carry', '10/15/20' 'gold only', 'boosting'}

        if(text ~= nil) then
            local lowerText = string.lower(text)
            if(lowerText:find(wts) ~= nil or lowerText:find('selling')) then
                
                if(lowerText:find(powerLevel) ~= nil) then 
                    print('power level')
                    return true
                end
    
                if(lowerText:find(powerLevel2) ~= nil) then 
                    print('power level2')
                    return true
                end
    
                if(lowerText:find(m) ~= nil) then
                    print('m')
                    return true
                end
    
                if(lowerText:find(mythic) ~= nil) then
                    print('mythic')
                    return true
                end
    
                if(lowerText:find(carry) ~= nil) then
                    print('carry')
                    return true
                end
    
                if(lowertText:find(mythicNumbers) ~= nil) then
                    print('numbers')
                    return true
                end
    
                if(lowerText:find(goldOnly) ~= nil) then
                    print('gold only')
                    return true
                end
            end
        end

    end 
end

ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL", filterChat)