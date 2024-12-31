local function load()
    local Configs = {
        ["Grinder"] = {
            ["LevelGrinder"] = {
                ["Enabled"] = false,
                ["Weapon"] = "Melee"
            },
            ["MobGrinder"] = {
                ["Enabled"] = false,
                ["Weapon"] = "Melee"
            }
        },
        ["Function"] = {},
        ["Fruit"] = {},
        ["Raid"] = {},
        ["Teleport"] = {},
    } 
    local rs  = game:GetService("ReplicatedStorage")
    local vim = game:GetService("VirtualInputManager")
    local tw  = game:GetService("TweenService")
    
    local w       = workspace
    local enemies = w.Enemies
    local map     = w.Map
    local chests  = w.ChestModels
    
    local p = game.Players.LocalPlayer
    local c = p.Character
    local r = c.PrimaryPart
    
    local cmf = rs.Remotes.CommF_
    local net = rs.Modules.Net
    
    local function tp(inst,info,prop)
        local t = tw:Create(inst,info,prop)
        t:Play()
        t.Completed:Wait()
    end
    
    local function att(model)
        vim:SendMouseButtonEvent(0,0,0,true,game,1)
    end
    
    local function MobAura()
    
        local enabled = Configs.Grinder.MobGrinder.Enabled
        
        local force = Instance.new("BodyVelocity",r)
        force.Name  = "Force"
        
        if enabled == true then
            force.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
            repeat
                wait(.5)
                pcall(function()
                    for _,e in enemies:GetChildren() do
                        local er = e.PrimaryPart
                        local eh = e.Humanoid
                        
                        local dist = p:DistanceFromCharacter(er.Position)
                        
                        er.Size     = Vector3.new(50,50,50)
                        er.Anchored = true
                        tp(r,TweenInfo.new(dist / 350,Enum.EasingStyle.Linear),{CFrame = er.CFrame * CFrame.new(0,30,0)
                        
                        repeat
                            wait(.5)
                            att(e)
                        until eh.Health == 0
                    end
                end)
            until enabled == false
        else
            force:Destroy()
        end
    
    end
    local Luxtl = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Luxware-UI-Library/main/Source.lua"))()

    local Luxt = Luxtl.CreateWindow("Waitun - " .. tostring(identifyexecutor()), 6105620301)

    local GrinderTab  = Luxt:Tab("Grinder")
    local FunctionTab = Luxt:Tab("Function")
    local FruitTab    = Luxt:Tab("Fruit")
    local RaidTab     = Luxt:Tab("Raid")
    local Teleport    = Luxt:Tab("Teleport") 
    local creditsTab  = Luxt:Tab("Credits")
    
    local GrinderSection = GrinderTab:Section("Level grinder")
    
    GrinderSection:Toggle("Enable",function(toggled)
        Configs.Grinder.LevelGrinder.Enabled = toggled
    end)
    GrinderSection:DropDown("Weapon",{"Melee","Sword"},function()
        
    end)
    
    local MobAuraSection = GrinderTab:Section("Mob grinder")
    
    MobAuraSection:Toggle("Enable",function(toggled)
        Configs.Grinder.MobGrinder.Enabled = toggled
        MobAura()
    end)
    MobAuraSection:DropDown("Weapon",{"Melee","Sword"},function(weapon)
        Configs.Grinder.MobGrinder.Weapon = weapon
    end)
    MobAuraSection:DropDown("Mob",{},function()
    
    end)

    local cf = creditsTab:Section("Main Credits")
    cf:Credit("Luxt: UI library")
end
coroutine.wrap(load)()
