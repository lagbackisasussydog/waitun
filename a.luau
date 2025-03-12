local beta = getgenv().Kaitun = false

local function Initialize()
    local p = game.Players.LocalPlayer
    local w = workspace
    local rs = game:GetService("ReplicatedStorage")
    local tw = game:GetService("TweenService")
    local vim = game:GetService("VirtualInputManager")
    
    local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/lagbackisasussydog/ui_lib/refs/heads/main/main.lua"))()
    local win = lib:Init(Enum.KeyCode.LeftAlt)
    
    config = {
        ["Settings"] = {
            ["TweenSpeed"] = 250,
            ["NoClip"] = false
        },
    
        ["Sea"] = {
            ["1"] = false,
            ["2"] = false,
            ["3"] = false
        },
    
        ["AutoFarm"] = {
            ["LFarm"] = false,
            ["CFarm"] = false,
            ["MFarm"] = false,
        },

        ["Player"] = {
            ["AutoBounty"] = false
        },
    
        ["Render"] = {
            ["EntityESP"] = false,
            ["ChestESP"] = false,
            ["RenderDisabler"] = false,
        }
    }
    
    win:SetWindowIcon("11809086389")
    
    local af = win:CreateButton("AutoFarm","9695653110")
    local tv = win:CreateButton("Travel","6034483678")
    local rd = win:CreateButton("Render","6026568247")
    local pl = win:CreateButton("Player","6034418515")
    local st = win:CreateButton("Settings","6034418515")
    
    -- Functions
    
    function NoClip(state)
        local c = p.Character
        if state then
            for _,part in pairs(c:GetDescendants()) do
                if part:IsA("BasePart") and part.CanCollide == false then
                   part.CanCollide = true 
                end
            end
        else
           for _,part in pairs(c:GetDescendants()) do
                if part:IsA("BasePart") and part.CanCollide == true then
                   part.CanCollide = false
                end
            end
        end
    end
    
    function cf(x,y,z)
        return CFrame.new(x,y,z)
    end
    
    function v3(x,y,z)
        return Vector3.new(x,y,z)
    end
    
    function Anchor(state)
        local c = p.Character
        local r = c.PrimaryPart
    
        NoClip(state)
    
        if state then
            w.CurrentCamera.CameraType = Enum.CameraType.Follow
            local f = Instance.new("BodyVelocity",r)
            f.Name = "f"
            f.P = 15000
            f.Velocity = v3(0,0.001,0)
            f.MaxForce = v3(99999999999,99999999999,99999999999999)
        else
            w.CurrentCamera.CameraType = Enum.CameraType.Custom
            r:FindFirstChild("f"):Destroy()
        end
    end
    
    function AnchorMob(model)
        local f = Instance.new("BodyVelocity",model.PrimaryPart)
        f.Name = "f"
        f.P = 15000
        f.Velocity = v3(0,0.001,0)
        f.MaxForce = v3(99999999999,99999999999,99999999999999)
    end
    
    function Equip(tooltip)
        local bp = p.Backpack
    
        for _,tool in pairs(bp:GetChildren()) do
            if tool:IsA("Tool") and tool.ToolTip == tooltip then
                p.Character.Humnaoid:EquipTool(tool)
            end
        end
    end

    -- Player
    local status = win:CreateElement("Label",pl,"Status: Disabled")
    local target = win:CreateElement("Label",pl,"Target:")
    win:CreateElement("Toggle",pl,"Auto bounty").MouseButton1Up:Connect(function()
        local ps = game.Players
        local co = coroutine.create(function()
            local c = p.Character
            local r = c.PrimaryPart

            Anchor(true)
            while config.Player.AutoBounty do
                pcall(function()
                    for _,trg in ipairs(ps:GetPlayer()) do
                        if not config.Player.AutoBounty then break end
                        if trg.Level.Value < 20 then return end
                        local tc = trg.Character
                        local th = trg.Head
                        local thum = trg.Humanoid
                        local dist = p:DistanceFromCharacter(th.Position)

                        local t = tw:Create(r,TweenInfo.new(dist / config.Settings.TweenSpeed,Enum.EasingStyle.Linear),{CFrame = eh.CFrame})
                        t:Play()
                        t.Completed:Wait()
                        
                        th.Size = v3(20,20,20)
                        th.Transparency = 1
                        th.CanCollide = false

                        repeat
                            if not config.AutoFarm.MFarm then break end
                            Equip("Melee")
                            c:SetPrimaryPartCFrame(tc:GetPivot())
                            vim:SendMouseButtonEvent(0,0,0,true,game,1)
                        until thum.Health == 0 or thum.Died:Wait()
                    end
                end)
            end
        end)
    end)

    -- Settings

    local ts = win:CreateElement("TextBox",st,"Tween Speed")
    ts.FocusLost:Connect(function(e)
        if e then
            config.Settings.TweenSpeed = tonumber(ts.Text)
        end
    end)

    -- Auto Farm
    
    win:CreateElement("Button",af,"Destroy").MouseButton1Up:Connect(function()
        game.CoreGui.Gui.Parent = nil
        script.Parent = nil
    end)

    win:CreateElement("Button",af,"Kaitun (not reversable)").MouseButton1Up:Connect(function()
        local co = coroutine.create(function()
            while beta do
                local l = p.Level.Value
                local c = p.Character
                local r = c.PrimaryPart

                -- later
            end
        end)
    end)

    win:CreateElement("Toggle",af,"Mastery AutoFarm").MouseButton1Up:Connect(function()
        local co = coroutine.create(function()
            while config.AutoFarm.MFarm do
                local c = p.Character
                local r = c.PrimaryPart
                local es = w.Enemies
                
                Anchor(true)
                
                pcall(function()
                    for _,enemy in pairs(es:GetChildren()) do
                        if not config.AutoFarm.MFarm then break end

                        c.Humanoid.HealthChanged:Connect(function(h)
                            if h == 0 then
                                if config.AutoFarm.MFarm then
                                    wait(5)
                                    Anchor(true)
                                end
                            end
                        end)
    
                        local eh = enemy.Head
                        local ehum = enemy.Humanoid
                        local dist = p:DistanceFromCharacter(eh.Position)
    
                        local t = tw:Create(r,TweenInfo.new(dist / config.Settings.TweenSpeed,Enum.EasingStyle.Linear),{CFrame = eh.CFrame * cf(0,30,0)})
                        t:Play()
                        t.Completed:Wait()
    
                        AnchorMob(enemy)
                        eh.Size = v3(eh.Size.X,30,eh.Size.Z)
                        eh.CanCollide = false
                        eh.Transparency = 1
                        task.wait(.3)
                        enemy:SetPrimaryPartCFrame(r.CFrame * CFrame.new(0,-8,0))
                        AnchorMob(enemy)
                        repeat
                            if not config.AutoFarm.MFarm then break end 
                            Equip("Melee")
                            vim:SendMouseButtonEvent(0,0,0,true,game,1)
                        until ehum.Health == 0
                        wait(.5)
                    end
                end)
            end
        end)
    
        config.AutoFarm.MFarm = not config.AutoFarm.MFarm

        if config.AutoFarm.MFarm then
            coroutine.resume(co)
        else
            Anchor(false)
            coroutine.close(co)
        end
    end)
    
    win:CreateElement("Toggle",af,"AutoChest").MouseButton1Up:Connect(function()
        local co = coroutine.create(function()
            Anchor(true)
            while config.AutoFarm.CFarm do
                local pos = {}
                local c = p.Character
                local r = c.PrimaryPart
                local map = w.ChestModels
    
                for _,chest in pairs(map:GetDescendants()) do
                    if not config.AutoFarm.CFarm then break end
                    if (chest.Name == "Chest1" or chest.Name == "Chest2" or chest.Name == "Chest3") then
                        print(chest.Name)
                        print(chest.CFrame)
                        table.insert(pos,chest.CFrame)
                        task.wait(.2)
                    end
                end

                for _,a in pairs(pos) do
                    local dist = p:DistanceFromCharacter(pos[_].Position)
                    local t = tw:Create(r,TweenInfo.new(dist / config.Settings.TweenSpeed,Enum.EasingStyle.Linear),{CFrame = pos[_]})
                    t:Play()
                    t.Completed:Wait()
                end
            end
        end)
    
        config.AutoFarm.CFarm = not config.AutoFarm.CFarm
    
        if config.AutoFarm.CFarm then
            coroutine.resume(co)
        else
            coroutine.close(co)
            Anchor(false)
        end
    end)
    
    -- Travel
    
    -- Render
    
    win:CreateElement("Toggle",rd,"Entity ESP").MouseButton1Up:Connect(function()
        local function Enable(state)
            for _,entity in pairs(w:GetDescendants()) do
                if state then
                    if not entity:IsA("Model") and not entity:FindFirstChild("Humanoid") then return end
                    local Bg = Instance.new("BillboardGui",entity.PrimaryPart)
                    local frame = Instance.new("Frame",Bg)
                    
                    frame.BackgroundTransparency = .5
                    frame.Size = UDim2.new(0,400,0,300)
                else
                    entity.PrimaryPart:FindFirstChild("BillboardGui"):Destroy()    
                end
            end
        end
    
        Enable(not config.Render.EntityESP)
    end)
    
    win:CreateElement("Toggle",rd,"Chest ESP").MouseButton1Up:Connect(function()
        local function Enable(state)
            for _,chest in pairs(w.Map:GetDescendants()) do
                if state then
                    if chest:IsA("BasePart") and chest.Name == "Chest1" or chest.Name == "Chest2" or chest.Name == "Chest3" then
                        local Bg = Instance.new("BillboardGui",chest)
                        local frame = Instance.new("Frame",Bg)
                        
                        frame.BackgroundTransparency = .5
                        frame.Size = UDim2.new(0,100,0,100)
                    end
                else
                    chest:FindFirstChild("BillboardGui"):Destroy()    
                end
            end
        end
    
        Enable(not config.Render.ChestESP)
    end)
    
    win:CreateElement("Button",rd,"Disable rendering").MouseButton1Up:Connect(function()
        local function Enable()
            while task.wait(3) do
                for _,part in pairs(w:GetDescendants()) do
                    if part:IsA("BasePart") or part:IsA("MeshPart") then
                        part.Transparency = 1
                    end
                end
            end
        end

        Enable()
    end)
end

coroutine.wrap(Initialize)()
