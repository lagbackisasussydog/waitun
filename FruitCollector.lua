local plr = game.Players.LocalPlayer

local function getFirstWord(inputString)
    if type(inputString) ~= "string" or #inputString == 0 then
        return ""
    end
    
    local startPos = 1
    local endPos = #inputString
    
    -- Skip leading whitespace
    while startPos <= endPos and inputString:sub(startPos, startPos):match("%s") do
        startPos = startPos + 1
    end
    
    if startPos > endPos then
        return ""
    end
    
    -- Find end of first word
    local wordEnd = startPos
    while wordEnd <= endPos and not inputString:sub(wordEnd, wordEnd):match("%s") do
        wordEnd = wordEnd + 1
    end
    
    return inputString:sub(startPos, wordEnd - 1)
end

function getSecondWord(inputString)
    -- Split the string into words using pattern matching
    local words = {}
    for word in inputString:gmatch("%S+") do
        table.insert(words, word)
    end
    
    -- Check if there is at least 2 words
    if #words >= 2 then
        return words[2]
    else
        return nil, "String doesn't contain a second word"
    end
end

local function Store(tool)
        local rs = game:GetService("ReplicatedStorage")
        local cm = rs.Remotes.CommF_

        local firstWord = getFirstWord(tool.Name)
        local arg2 = tostring(firstWord.."-"..firstWord)

        local args = {
            "StoreFruit",
            arg2,
            plr.Backpack:FindFirstChild(tool.Name)
        }

        local args2 = {
            "GetFruits",
            false
        }

        cm:InvokeServer(args)
        cm:InvokeServer(args2)
end

local function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    local File = pcall(function()
        AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
    end)
    if not File then
        table.insert(AllIDs, actualHour)
        writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
    end
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                delfile("NotSameServers.json")
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end

    function Teleport()
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end

    Teleport()
end

local function Tween(inst,info,prop)
    local r = plr.Character.PrimaryPart
    f = Instance.new("BodyVelocity")
    f.Parent = r
    f.MaxForce = Vector3.new(999999,99999,9999999)
    f.Velocity = Vector3.new(0,.001,0)

    local tw = game:GetService("TweenService")
    local t = tw:Create(inst,info,prop)
    t:Play()
    t.Completed:Wait()
end

game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SetTeam","Pirates")

while true do
    local c = plr.Character
    local r = c.PrimaryPart

    local w = workspace
    
    if c then
        for _,item in pairs(w:GetChildren()) do
            if item and item:IsA("Tool") and item.Handle then
                local handle = item.Handle
                Tween(r,TweenInfo.new(plr:DistanceFromCharacter(handle.Position) / 250,Enum.EasingStyle.Linear),{CFrame = handle.CFrame})
                task.wait(1)
                Store(item)
            elseif item and item:IsA("Model") and item.Name == "Fruit" then
                local handle = item.Handle
                Tween(r,TweenInfo.new(plr:DistanceFromCharacter(handle.Position) / 250,Enum.EasingStyle.Linear),{CFrame = handle.CFrame})
                task.wait(1)
                for _,tool in pairs(plr.Backpack:GetChildren()) do
                    if getSecondWord(tool.Name) == "Fruit" then
                        Store(tool)
                    end
                end
            end
        end
        Hop()
    end

    task.wait()
end
