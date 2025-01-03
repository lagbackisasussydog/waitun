local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local function load()
    local w = workspace
    local enemies = w.Enemies
    local map = w.Map

    local tw = game.TweenService
    local vim = game:GetService("VirtualInputManager")

    local p = game.Players.LocalPlayer

    local rs = game:GetService("ReplicatedStorage")
    local cmf = rs.Remotes.CommF_
    local net = rs.Modules.Net

    local second = 0

    repeat wait() until p.Character

    local function v3(x,y,z)
        return vector3.new(x,y,z)
    end

    local function att()
        vim:SendMouseButtonEvent(0,0,0,true,game,1)
    end

    local function nocdtp(inst,info,prop)
        local t = tw:Create(inst,info,prop)
        t:Play()
    end

    local function tp(inst,info,prop)
        local t = tw:Create(inst,info,prop)
        t:Play()
        t.Completed:Wait()
    end

    local function anchor(state)
        if state then
            local f = Instance.new("BodyVelocity",p.Character.PrimaryPart)
            f.Name = "F"
            f.MaxForce = v3(1000000,10000000000,10000000000)
        else
            r:FindFirstChild("F"):Destroy()
        end
    end

    local window = Fluent:CreateWindow({
        Title = "Waitun - " .. tostring(identifyexecutor()),
        SubTitle  = "By lgb",
        TabWidth = 200,
        Size = UDim2.fromOffset(500, 350),
        Acrylic = false,
        Theme = "Aqua",
        MinimizeKey = Enum.KeyCode.LeftAlt,
    })

    local opt = Fluent.Options

    local Tabs = {
        General = window:AddTab({Title = "General",Icon = ""}),
        Grinder = window:AddTab({Title = "Grinder",Icon = ""}),
        Functions = window:AddTab({Title = "Functions", Icon = ""}),
        Travel = window:AddTab({Title = "Travel",Icon = ""}),
        Fruit = window:AddTab({Title = "Fruit",Icon = ""}),
        Settings = window:AddTab({Title = "Settings",Icon = ""}),
    }

    local LevelGrinder = Tabs.Grinder:AddToggle("LevelGrinder",{Title = "Enable level grinder", Default = false})
    local MobGrinder = Tabs.Grinder:AddToggle("MobGrinder",{Title = "Enable mob grinder",Default = false})

    LevelGrinder:OnChanged(function()
        
    end)

    opt.LevelGrinder:SetValue(false)

    MobGrinder:OnChanged(function()
        while opt.MobGrinder.Value do
            local c = p.Character
            local r = c.PrimaryPart
            for _,e in pairs(enemies:GetChildren()) do
                local head = e.Head
                local hum = e.Humanoid
                local dist = p:DistanceFromCharacter(head.Position)

                anchor(true)
                head.Size = Vector3.new(50,50,50)
                tp(r,TweenInfo.new(dist / 350),{CFrame = head.CFrame})

                repeat
                    wait(.5)
                    e:PivotTo(r.CFrame)
                    att()
                until hum.Heath == 0
            end
        end
    end)

    opt.MobGrinder:SetValue(false)

    Fluent:Notify({
        Title = "Waitun",
        Content = "Script has been loaded!",
        Duration = 5
    })
end

coroutine.wrap(load)()
