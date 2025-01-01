local function load()
    local Configs = {

        ["Main"] = {
            ["LevelGrinder"] = {
                ["Enabled"] = false,
                ["Weapon"] = "Melee",
            },
            ["MobGrinder"] = {
                ["Enabled"] = false,
                ["Weapon"] = "Melee",
            },

            ["Functions"] = {
                ["Buso"] = false,
                ["AutoChest"] = false
            },
        },
        
        ["Settings"] = {
            ["TweenSpeed"] = 100,
            ["GroupMob"] = false
        },
        
        ["Place"] = {
            ["First Sea"] = false,
            ["Second Sea"] = false,
            ["Third Sea"] = false,
        },
    }
    local p = game.Players.LocalPlayer
    local rs  = game:GetService("ReplicatedStorage")
    local vim = game:GetService("VirtualInputManager")
    local tw  = game:GetService("TweenService")
    
    local w       = workspace
    local enemies = w.Enemies
    local map     = w.Map
    local chests  = w.ChestModels
    
    local cmf = rs.Remotes.CommF_
    local net = rs.Modules.Net

    if p.Team.Name == "Neutral" then
        cmf:InvokeServer("SetTeam","Pirates")
    end
        
    repeat
        wait()
    until p.Character
    
    local c = p.Character
    local r = c.PrimaryPart

    local function setPartCollide(e)
        if e then
            for _,part in c:GetChildren() do   
                if part:IsA("BasePart") then part.CanCollide = false end
            end
        else
            for _,part in c:GetChildren() do   
                if part:IsA("BasePart") then part.CanCollide = true end
            end
        end
    end
    
    local function tp(inst,info,prop)
        local t = tw:Create(inst,info,prop)
        t:Play()
        t.Completed:Wait()
    end
    
    local function att(model)
        vim:SendMouseButtonEvent(0,0,0,true,game,1)
        
        for _,part in model:GetChildren() do
           if part:IsA("BasePart") then
               net["RE/RegisterHit"]:FireServer(part,{})
           end
        end
    end
    
    local function attackSelected(e)
        local speed = Configs.Settings.TweenSpeed
        local er = e.Head
        local eh = e.Humanoid
                            
        local dist = p:DistanceFromCharacter(er.Position)
                            
        er.Size = Vector3.new(50,50,50)
        eh.WalkSpeed = 0
        tp(r,TweenInfo.new(dist / speed,style),{CFrame = er.CFrame * CFrame.new(0,30,0)})
                            
        repeat
            wait(.5)
            e.Head.CFrame = r.CFrame
            att(e)
        until eh.Health == 0
    end
   
    local function MobAura()
        setPartCollide(true)
        local force    = Instance.new("BodyVelocity",r)
        force.Name     = "Force"
        force.MaxForce = Vector3.new(1000000000,1000000000,1000000000)
        
        pcall(function()
            while wait(.1) do
                if Configs.Main.MobGrinder.Enabled == false then setPartCollide(false) force:Destroy() return end
                for _,e in enemies:GetChildren() do
                    attackSelected(e)
                end
            end
        end)

        p.CharacterAdded:Connect(MobAura)
    end

    local function AutoChest()
        if Configs.Main.LevelGrinder == true or Configs.Main.MobGrinder == true then
            game.StarterGui:SetCore("SendNotification",{
                 Title = "Notification",
                 Text = "This function is NOT STACKABLE. please try turn off every grinder function",
                 Duration = 5,
                 Button1 = "ok"
            })
        end
    end
    
    local Luxtl = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Luxware-UI-Library/main/Source.lua"))()

    local Luxt = Luxtl.CreateWindow("Waitun - " .. tostring(identifyexecutor()), 6105620301)

    local GrinderTab  = Luxt:Tab("Grinder")
    local FunctionTab = Luxt:Tab("Function")
    local FruitTab    = Luxt:Tab("Fruit")
    local RaidTab     = Luxt:Tab("Raid")
    local Teleport    = Luxt:Tab("Teleport")
    local SettingsTab = Luxt:Tab("Settings")
    local creditsTab  = Luxt:Tab("Credits")
    
    local GrinderSection = GrinderTab:Section("Level grinder")
    
    GrinderSection:Toggle("Enable",function(toggled)
        
    end)

    GrinderSection:Label("Weapon")
    GrinderSection:DropDown("Melee",{"Melee","Sword"},function()
        
    end)
    
    local MobAuraSection = GrinderTab:Section("Mob grinder")
    
    MobAuraSection:Toggle("Enable",function(t)
        local e = Configs.Main.MobGrinder.Enabled
        e = t
    end)

    MobAuraSection:Label("Weapon")
    MobAuraSection:DropDown("Melee",{"Melee","Sword"},function(weapon)
        
    end)
    
    MobAuraSection:DropDown("Mob",{},function()
    
    end)

    local FunctionSection = FunctionTab:Section("General")
    FunctionSection:Toggle("Enable Armanent",function(t)
        p.CharacterAdded:Connect(function(char)
            repeat wait() until char

            if Configs.Main.Functions.Buso == true then
                cmf:InvokeServer("Buso")
            end        
        end)
    end)
    
    local TweenSection = SettingsTab:Section("Tween")

    TweenSection:Label("Tween speed")    
    TweenSection:Slider("",1,350,function(v)
        Configs.Settings.TweenSpeed = v
    end)

    local MobSection = SettingsTab:Section("Mob")
    TweenSection:Toggle("Group mob",function(t)

    end)

    TweenSection:Toggle("Anchor mob",function(t) 
        
    end)

    local Misc = SettingsTab:Section("Miscellaneous")
    Misc:Toggle("KillInsult",function(t)
        
    end)
    
    local GrinderSettings = SettingsTab:Section("Grinder")
end
coroutine.wrap(load)()
