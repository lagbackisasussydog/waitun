local auto = _G.auto
local function load()
	auto = true
	local w = Workspace
	
	local plr = game.Players.LocalPlayer
	local char = plr.Character or plr.CharacterAdded:Wait()
	local root = char.PrimaryPart
	local es = w:WaitForChild("Enemies")
	
	local tweensvc = game:GetService("TweenService")

	function Anchor(state)
		if state then
			local force = Instance.new("BodyVelocity",root)
			force.Name = "Force"
			force.MaxForce = Vector3.new(1000000,100000000,1000000000)
			force.Velocity = Vector3.new(0,.001,0)
		else
			root:FindFirstChild("Force").Parent = nil
		end
	end
	
	function AnchorMob(model)
		local force = Instance.new("BodyVelocity",model:PrimaryPart)
		force.Name = "Force"
		force.MaxForce = Vector3.new(1000000,100000000,1000000000)
		force.Velocity = Vector3.new(0,.001,0)
	end

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

	local tool = nil
	
	for _,toolz in pairs(plr.Backpack:GetChildren()) do
	   if toolz.ToolTip == "Melee" then
	       tool = toolz
	   end
	end

	local co = coroutine.create(function()
		Anchor(true)
		while auto do
		    pcall(function()
		        for i,v in pairs(es:GetChildren()) do
			    if not auto then break end
		            local hum = v.Humanoid
		            local eroot = v:FindFirstChild("Head")
	
		            tween(root,TweenInfo.new(plr:DistanceFromCharacter(eroot.Position) / 350,Enum.EasingStyle.Linear),{CFrame = eroot.CFrame * CFrame.new(0,30,0)})
		            eroot.Size = Vector3.new(eroot.Size.X,40,eroot.Size.Z)
			    eroot.CanCollide = false
			    AnchorMob(v)
		            repeat
				if not auto then break end
				wait(.1)
	                    	char.Humanoid:EquipTool(tool)
		                game:GetService("VirtualInputManager"):SendMouseButtonEvent(0,0,0,true,game,1)
		                fireEvent(v)
		            until hum.Health == 0
		        end
		    end)
		end
	end)

	game.UserInputService.InputBegan:Connect(function(i,p)
		if p then return end

		if i.KeyCode == Enum.KeyCode.LeftAlt then
			auto = not auto
		end

		if auto then coroutine.resume(co) else Anchor(false) coroutine.close(co) end
	end)
end

game.Players.LocalPlayer.CharacterAdded:Connect(load)
return coroutine.wrap(load)()
