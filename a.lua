local function Initialize()
    if game.CoreGui:FindFirstChild("Gui") then game.CoreGui:FindFirstChild("Gui").Parent = nil end
    local p = game.Players.LocalPlayer
    local w = workspace
    local rs = game:GetService("ReplicatedStorage")
    local tw = game:GetService("TweenService")
    local vim = game:GetService("VirtualInputManager")
    
    local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/lagbackisasussydog/ui_lib/refs/heads/main/main.lua"))()
    local win = lib:Init(Enum.KeyCode.LeftAlt)
	
	rs.Remotes.CommF_:InvokeServer("Buso")
    
    config = {
        ["Settings"] = {
            ["TweenSpeed"] = 250,
            ["NoClip"] = false
        },

        ["Tool"] = "Melee",
    
        ["Sea"] = {
            ["1"] = false,
            ["2"] = false,
            ["3"] = false
        },
    
        ["AutoFarm"] = {
            ["LFarm"] = false,
            ["CFarm"] = false,
            ["MFarm"] = false,
            ["GFarm"] = false,
            ["SeaEvent"] = false,
        },

        ["Player"] = {
            ["AutoBounty"] = false,
        },
    
        ["Render"] = {
            ["EntityESP"] = false,
            ["ChestESP"] = false,
            ["RenderDisabler"] = false,
        },

        ["Model"] = ""
    }
    
    win:SetWindowIcon("85872669922830")
    
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
        
        local hum = p.Character:FindFirstChild("Humanoid")

        for _,tool in pairs(bp:GetChildren()) do
            if tool.ToolTip == tooltip then
                hum:EquipTool(tool)
            end
        end
    end

    -- Settings

    local ts = win:CreateElement("TextBox",st,"Tween Speed")
    ts.FocusLost:Connect(function(e)
        if e then
            config.Settings.TweenSpeed = tonumber(ts.Text)
        end
    end)

    local wp = win:CreateElement("LetterBox",st,"Tool (Melee,Sword or Gun)")
    wp.TextWrapped = true
    wp.FocusLost:Connect(function(e)
        if e then
            config.Tool = wp.Text
        end
    end)
    

    -- Auto Farm
    
    win:CreateElement("Button",af,"Destroy").MouseButton1Up:Connect(function()
        game.CoreGui.Gui.Parent = nil
        script.Parent = nil
    end)

    win:CreateElement("Toggle",af,"Mastery AutoFarm").MouseButton1Up:Connect(function()
        local co = coroutine.create(function(character)
            while config.AutoFarm.MFarm do
                local c = character
                local r = c.PrimaryPart
                local es = w.Enemies
                
                Anchor(true)
                
                pcall(function()
                    for _,enemy in pairs(es:GetChildren()) do
                        if not config.AutoFarm.MFarm then break end

						repeat task.wait() until enemy

                        local eh = enemy.Head
                        local ehum = enemy.Humanoid
                        local dist = p:DistanceFromCharacter(eh.Position)
    
                        local t = tw:Create(r,TweenInfo.new(dist / config.Settings.TweenSpeed,Enum.EasingStyle.Linear),{CFrame = eh.CFrame * cf(0,30,0)})
                        t:Play()
                        t.Completed:Wait()

                        repeat
                            if not config.AutoFarm.MFarm then break end
                            wait(.01)
                            Equip(config.Tool)
                            enemy:SetPrimaryPartCFrame(r.CFrame * CFrame.new(0,-8,0))
                            AnchorMob(enemy)
                            vim:SendMouseButtonEvent(0,0,0,true,game,1)
                        until ehum.Health == 0
                    end
                end)
            end
        end)
    
        config.AutoFarm.MFarm = not config.AutoFarm.MFarm

        if config.AutoFarm.MFarm then
		
			p.CharacterAdded:Connect(function(c)
				rs.Remotes.CommF_:InvokeServer("Buso")
				coroutine.resume(co)(p.Character)
			end)
            coroutine.resume(co)(p.Character)
        else
            Anchor(false)
            coroutine.close(co)
        end
    end)

    win:CreateElement("Toggle",af,"AutoFarm gun mastery").MouseButton1Up:Connect(function()
        local co = coroutine.create(function()
            Anchor(true)
            while config.AutoFarm.GFarm do
                local c = p.Character
                local r = c.PrimaryPart
                local es = w.Enemies

                for _,e in pairs(es:GetChildren()) do
                   if not config.AutoFarm.GFarm then break end
                   local eh = e.Head
                   local ehum = e.Humanoid
                   local dist = p:DistanceFromCharacter(eh.Position)
                   
                   local t = tw:Create(r,TweenInfo.new(dist / config.Settings.TweenSpeed,Enum.EasingStyle.Linear),{CFrame = eh.CFrame * cf(0,30,0)})
                   t:Play()
                   t.Completed:Wait()

                   repeat
                    if not config.AutoFarm.GFarm then break end
                    w.CurrentCamera.CFrame = eh.CFrame
                    wait(.01)
                    Equip(config.Tool)
                    AnchorMob(e)
                    vim:SendMouseButtonEvent(0,0,0,true,game,1)
                   until ehum.Health == 0
                end
            end
        end)

        config.AutoFarm.GFarm = not config.AutoFarm.GFarm

        if config.AutoFarm.GFarm then
            coroutine.resume(co)
        else
            Anchor(false)
            coroutine.close(co)
        end
    end)
    
    -- Travel
    local pressed = false
    win:CreateElement("Label",tv,"Use dex to find more")
    local inp = win:CreateElement("LetterBox",tv,"Model")
    win:CreateElement("Button",tv,"Tween").MouseButton1Up:Connect(function()
        local c = p.Character or p.CharacterAdded:Wait()
        local r = c.PrimaryPart
        if pressed then return end
        if c.Humanoid.Health == 0 then pressed = false end
        pressed = true
        for _,m in pairs(w.Map:GetChildren()) do
            if m.Name == inp.Text then
                local dist = p:DistanceFromCharacter(m:GetPivot().Position)
                local t = tw:Create(r,TweenInfo.new(dist / config.Settings.TweenSpeed,Enum.EasingStyle.Linear),{CFrame = m:GetPivot()})
                t:Play()
                t.Completed:Wait()
                pressed = false
            end
        end
    end)

    -- Render
    
   -- win:CreateElement("Toggle",rd,"Player ESP").MouseButton1Up:Connect(function()
   --     local function Enable(state)
   --         for _,entity in pairs(w.Characters:GetChildren()) do
   --             if state then
   --                 local BillboardGui = Instance.new("BillboardGui")
   --                 local TextLabel = Instance.new("TextLabel")
   --                 local BillboardGui_2 = Instance.new("BillboardGui")
   --                 local Frame = Instance.new("Frame")
--
   --                 BillboardGui.Parent = entity.PrimaryPart
   --                 BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   --                 BillboardGui.Active = true
   --                 BillboardGui.AlwaysOnTop = true
   --                 BillboardGui.ExtentsOffset = Vector3.new(0, 3, 0)
   --                 BillboardGui.LightInfluence = 1.000
   --                 BillboardGui.Size = UDim2.new(4, 0, 1, 0)
--
   --                 TextLabel.Parent = BillboardGui
   --                 TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   --                 TextLabel.BackgroundTransparency = 1.000
   --                 TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
   --                 TextLabel.BorderSizePixel = 0
   --                 TextLabel.Size = UDim2.new(1, 0, 1, 0)
   --                 TextLabel.Font = Enum.Font.SourceSans
   --                 TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
   --                 TextLabel.TextScaled = true
   --                 TextLabel.TextSize = 14.000
   --                 TextLabel.TextWrapped = true
   --                 TextLabel.Text = entity.Name .. "[ Distance: " .. p:DistanceFromCharacter(entity:GetPivot().Position) .. " ]"
--
   --                 BillboardGui_2.Parent = entity.PrimaryPart
   --                 BillboardGui_2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   --                 BillboardGui_2.Active = true
   --                 BillboardGui_2.AlwaysOnTop = true
   --                 BillboardGui_2.LightInfluence = 1.000
   --                 BillboardGui_2.Size = UDim2.new(4, 0, 5, 0)
--
   --                 Frame.Parent = BillboardGui_2
   --                 Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   --                 Frame.BackgroundTransparency = 0.500
   --                 Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
   --                 Frame.BorderSizePixel = 0
   --                 Frame.Size = UDim2.new(1, 0, 1, 0)
   --             else
   --                 entity.PrimaryPart:FindFirstChild("BillboardGui"):Destroy()
   --                 wait(.2)
   --                 entity.PrimaryPart:FindFirstChild("BillboardGui"):Destroy()
   --             end
   --         end
   --     end
   -- 
   --     Enable(not config.Render.EntityESP)
   -- end)
    
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
    
    win:CreateElement("Toggle",rd,"Disable rendering (inefficient)").MouseButton1Up:Connect(function()
        local co = coroutine.create(function()
            game:GetService("RunService").Hearthbeat:Connect(function()
                if config.Render.RenderDisabler then
                    for _,part in pairs(w.Map:GetDescendants()) do
                        if part:IsA("BasePart") or part:IsA("MeshPart") then
                            part.Transparency = 1
                        end
                    end
                else
                    for _,part in pairs(w.Map:GetDescendants()) do
                        if part:IsA("BasePart") or part:IsA("MeshPart") then
                            part.Transparency = 0
                        end
                    end
                end
            end)
        end)

        config.Render.RenderDisabler = not config.Render.RenderDisabler

        if config.Render.RenderDisabler then
            coroutine.resume(co)
        else
            coroutine.close(co)
        end
    end)
end

return coroutine.wrap(Initialize)()
