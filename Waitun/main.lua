local function load()
    local w = workspace
    local enemies = w.Enemies
    local map = w.Map

    local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    local tw = game.TweenService
    local vim = game:GetService("VirtualInputManager")

    local p = game.Players.LocalPlayer

    local rs = game:GetService("ReplicatedStorage")
    local cmf = rs.Remotes.CommF_
    local net = rs.Modules.Net

    if p.Team = game.Teams.Neutral then cmf:InvokeServer("SetTeam","Pirates") end

    repeat wait() until p.Character

    local c = p.Character
    local r = c.PrimaryPart

    local window = Fluent:CreateWindow({
        Title = "Waitun - " .. tostring(identifyexecutor()),
        SubTitle  = "By lgb",
        TabWidth = 200,
        Size = UDim2.fromOffset(500, 350),
        Acrylic = true,
        Theme = "Aqua",
        MinimizeKey = Enum.KeyCode.LeftAlt,
    })

    local opt = Fluent.Options

    local Tabs = {
        General = window:AddTab({Title = "General",Icon = "house"}),
        Grinder = window:AddTab({Title = "Grinder",Icon = "grip"}),
        Functions = window:AddTab({Title = "Functions", Icon = "arrow-up"}),
        Travel = window:AddTab({Title = "Travel",Icon = "earth"}),
        Fruit = window:AddTab({Title = "Fruit",Icon = "apple"}),
        Settings = window:AddTab({Title = "Settings",Icon = "settings"}),
    }

    local LevelGrinder = Tabs.Grinder:AddToggle("LevelGrinder",{Title = "Enable level grinder", Default = false})
    local MobGrinder = Tabs.Grinder:AddToggle("MobGrinder",{Title = "Enable mob grinder",Default = false})

    LevelGrinder:OnChanged(function()
        print(opt.LevelGrinder.Value)
    end)

    opt.LevelGrinder:SetValue(false)

    MobGrinder:OnChanged(function()
        while opt.MobGrinder.Value do
            
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
