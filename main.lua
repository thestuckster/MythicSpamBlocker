
--  TODO: see if filter api is still valid and transform code to be a real filter
-- local function filterChat(self, event, text, playerName, languageName, channelName, playerName2, sepcialFlags, zoneChannelId, channelIndex, channelBaseName, _, lineId, guid, bnSenderId, isMoble) 
--     message('filtering chat')
--     if(channelName == "2. Trade - City") then
--         local powerLevel = 'power leveling'
--         local powerLevel2 = 'powerleveling'
--         local wts = 'wts'
--         local m = 'm%+'
--         local mythic = 'mythic'
--         local carry = 'carry'
--         local mythicNumbers = '10/15/20'
--         local goldOnly = 'gold only'

--         local lowerText = string.lower(text)
        
--         if(lowerText:find(wts) ~= nil) then
--             -- message('someone is selling')

--             if(lowerText:find(powerLevel) ~= nil) then 
--                 return true
--             end

--             if(lowerText:find(powerLevel2) ~= nil) then 
--                 return true
--             end

--             if(lowerText:find(m) ~= nil) then
--                 return true
--             end

--             if(lowerText:find(mythic) ~= nil) then
--                 return true
--             end

--             if(lowerText:find(carry) ~= nil) then
--                 return true
--             end

--             if(lowertText:find(mythicNumbers) ~= nil) then
--                 return true
--             end

--             if(lowerText:find(goldOnly) ~= nil) then
--                 return true
--             end
            
--             return false
--         end

--         return false
--     end

--     return false
-- end

local chatFrame = CreateFrame("Frame")
chatFrame:RegisterEvent("CHAT_MSG_CHANNEL")
chatFrame:SetScript("OnEvent", function(self, event, text, playerName, languageName, channelName, playerName2, specialFlags, zoneChannelId, channelIndex, channelBaseName, _, lineId, guid, bnSenderId, isMobile)

    if(channelName == "2. Trade - City") then
        local powerLevel = 'power leveling'
        local powerLevel2 = 'powerleveling'
        local wts = 'wts'
        local m = 'm%+'
        local mythic = 'mythic'
        local carry = 'carry'
        local mythicNumbers = '10/15/20'
        local goldOnly = 'gold only'

        local lowerText = string.lower(text)
        
        if(lowerText:find(wts) ~= nil) then
            -- message('someone is selling')

            if(lowerText:find(powerLevel) ~= nil) then 
                message('powerLevel')
            end

            if(lowerText:find(powerLevel2) ~= nil) then 
                message('power level 2')
            end

            if(lowerText:find(m) ~= nil) then
                message('mythics')
            end

            if(lowerText:find(mythic) ~= nil) then
            end

            if(lowerText:find(carry) ~= nil) then
                message('carries')
            end

            if(lowertText:find(mythicNumbers) ~= nil) then
                message(mythicNumbers)
            end

            if(lowerText:find(goldOnly) ~= nil) then
                message(goldOnly)
            end
            
        end
    end
end)