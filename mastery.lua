game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SetTeam","Pirates")
local function load()
	repeat
		wait()
	until game.Players.LocalPlayer.Character
	
	local w = Workspace
	
	local plr = game.Players.LocalPlayer
	local char = plr.Character
	local root = char.PrimaryPart
	local es = w:WaitForChild("Enemies")
	
	local tweensvc = game:GetService("TweenService")
	
	local force = Instance.new("BodyVelocity",root)
	force.Name = "Force"
	force.MaxForce = Vector3.new(1000000,100000000,1000000000)
	
	function tween(inst,info,property)
	    local track = tweensvc:Create(inst,info,property)
	    track:Play()
	    track.Completed:Wait()
	end
	
	function fireEvent(model)
	   for _,v in pairs(model:GetChildren()) do
	       if v:IsA("BasePart") then
	           game.ReplicatedStorage.Modules.Net["RE/RegisterHit"]:FireServer(v)
	       end
	   end
	end
	
	game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Buso")
	char.Humanoid:EquipTool(plr.Backpack:GetChildren()[1])

	for _,part in char:GetChildren() do
		if part:IsA("BasePart") then
			part.CanCollide = false
		end
	end
	
	while task.wait(.1) do
	    pcall(function()
	        for i,v in pairs(es:GetChildren()) do
	            local hum = v.Humanoid
	            local eroot = v:FindFirstChild("Head")
	
	            eroot.Anchored = true
	            tween(root,TweenInfo.new(plr:DistanceFromCharacter(eroot.Position) / 350,Enum.EasingStyle.Linear),{CFrame = eroot.CFrame * CFrame.new(0,30,0)})
	            eroot.Size = Vector3.new(50,50,50)
	            repeat
			wait(.5)
			v:PivotTo(root.CFrame)
	                game:GetService("VirtualInputManager"):SendMouseButtonEvent(0,0,0,true,game,1)
	                fireEvent(v)
	            until hum.Health == 0
	        end
	    end)
	end
end

coroutine.wrap(load)();
game.Players.LocalPlayer.CharacterAdded:Connect(load)
