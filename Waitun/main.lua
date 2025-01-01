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
        
        ["Place"] = {
            ["First Sea"] = false,
            ["Second Sea"] = false,
            ["Third Sea"] = false,
        },
    } 
    local rs  = game:GetService("ReplicatedStorage")
    local vim = game:GetService("VirtualInputManager")
    local tw  = game:GetService("TweenService")
    
    local w       = workspace
    local enemies = w.Enemies
    local map     = w.Map
    local chests  = w.ChestModels
    
    local cmf = rs.Remotes.CommF_
    local net = rs.Modules.Net
    
    cmf:InvokeServer("SetTeam","Pirates")
    repeat
        wait()
    until game.Players.LocalPlayer.Character
    
    local p = game.Players.LocalPlayer
    local c = p.Character
    local r = c.PrimaryPart
    
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
    
    local function MobAura()
        local force    = Instance.new("BodyVelocity",r)
        force.Name     = "Force"
        force.MaxForce = Vector3.new(1000000000,1000000000,1000000000)
        
        cmf:InvokeServer("Buso")
        
        pcall(function()
              for _,e in enemies:GetChildren() do
                  if enabled == false then
                      force:Destroy()
                      break
                  end
                  
                  local er   = e.Head
                  local eh   = e.Humanoid
                        
                  local dist = p:DistanceFromCharacter(er.Position)
                        
                  er.Size      = Vector3.new(50,50,50)
                  eh.WalkSpeed = 0
                  tp(r,TweenInfo.new(dist / 350,Enum.EasingStyle.Linear),{CFrame = er.CFrame * CFrame.new(0,30,0)})
                        
                  repeat
                       wait(.5)
                       e.Head.CFrame = r.CFrame
                       att(e)
                  until eh.Health == 0
               end
        end)
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
    
    MobAuraSection:Toggle("Enable",function(t)
        coroutine.wrap(function()
            local thread = coroutine.create(MobAura)
            
            while wait(.1) do
                if t == true then
                    coroutine.resume(thread)
                else
                    coroutine.close(thread)
                end
            end
        end)()
    end)
    
    MobAuraSection:DropDown("Weapon",{"Melee","Sword"},function(weapon)
        Configs.Grinder.MobGrinder.Weapon = weapon
    end)
    
    MobAuraSection:DropDown("Mob",{},function()
    
    end)
    
    local TpSection = Teleport:Section("Tween to destination")
    
    TpSection:DropDown("Islands",{},function(m) end)
    
    local cf = creditsTab:Section("Main Credits")
    cf:Credit("Luxt: UI library")
end
coroutine.wrap(load)()
