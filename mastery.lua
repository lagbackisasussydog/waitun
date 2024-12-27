local function load()
	game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SetTeam","Pirates")
	wait(5)
	
	local w = Workspace
	
	local plr = game.Players.LocalPlayer
	local char = plr.Character
	local root = char.PrimaryPart
	local es = w:WaitForChild("Enemies")
	
	local tweensvc = game:GetService("TweenService")
	
	local att         = Instance.new("Attachment",root)
	local align       = Instance.new("AlignPosition",att)
	align.Mode        = Enum.PositionAlignmentMode.OneAttachment
	align.Attachment0 = att
	align.MaxForce    = math.huge
	align.MaxVelocity = math.huge
	align.Position    = root.Position
	
	function tween(inst,info,property)
	    local track = tweensvc:Create(inst,info,property)
	    track:Play()
	    track.Completed:Wait()
	    align.Position = root.Position
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
	
	while task.wait(.1) do
	    pcall(function()
	        for i,v in pairs(es:GetChildren()) do
	            local hum = v.Humanoid
	            local eroot = v:FindFirstChild("HumanoidRootPart")
	
	            eroot.Anchored = true
	            tween(root,TweenInfo.new(2,Enum.EasingStyle.Linear),{CFrame = eroot.CFrame * CFrame.new(0,30,0)})
	            eroot.Size = Vector3.new(50,50,50)
	            repeat
	                mouse1click()
	                fireEvent(v)
	            until hum.Health == 0
	        end
	    end)
	end
end

coroutine.wrap(load)();
