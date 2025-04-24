workspace.CurrentCamera.CameraType = Enum.CameraType.Follow
local function Initialize()
	local plr = game.Players.LocalPlayer

	local rs = game:GetService("ReplicatedStorage")
	local cm = rs.Remotes.CommF_
	local vim = game:GetService("VirtualInputManager")

	local started = false
	local hasBought = false
	local tool = nil
	
	local function Init(c)
		f = Instance.new("BodyVelocity",c.PrimaryPart)
		f.Name = "f"
		f.P = 15000
		f.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		f.Velocity = Vector3.new(0,.001,0)
		
		for _,part in pairs(c:GetChildren()) do
			if part:IsA("BasePart") then
				if part.CanCollide then
					part.CanCollide = false
				end
			end
		end
		
		cm:InvokeServer("Buso")
	end

	local function Tween(inst,info,prop)
		local tw = game:GetService("TweenService")
		local t = tw:Create(inst,info,prop)
		t:Play()
		t.Completed:Wait()
	end
	
	local function noCDTween(inst,info,prop)
		local tw = game:GetService("TweenService")
		local t = tw:Create(inst,info,prop)
		t:Play()
	end
	
	local function getTweenDistance(pos)
		return tonumber(plr:DistanceFromCharacter(pos) / 300)
	end

	local function startQuest(quest,section,pos,c)
		if started then return end
		local questFrame = plr.PlayerGui.Main.Quest
		questFrame:GetPropertyChangedSignal("Visible"):Connect(function()
			if questFrame.Visible == false and started then
				started = false
				Tween(c.PrimaryPart,TweenInfo.new(getTweenDistance(pos),Enum.EasingStyle.Linear),{CFrame = CFrame.new(pos)})
				cm:InvokeServer("StartQuest",quest,section)
				started = true
			end
		end)
		
		started = false
		Tween(plr.Character.PrimaryPart,TweenInfo.new(getTweenDistance(pos),Enum.EasingStyle.Linear),{CFrame = CFrame.new(pos)})
		cm:InvokeServer("StartQuest",quest,section)
		started = true
	end

	local function Attack(current,c)
		for _,toolz in plr.Backpack:GetChildren() do
			if toolz.ToolTip == "Melee" then
				tool = toolz
			end
		end
		
		local Enemies = workspace.Enemies
		local r = c or plr.CharacterAdded:Wait()
		local gui = Instance.new("ScreenGui",game.CoreGui)
			
		for _,e in Enemies:GetChildren() do
			if e.Name == current and e:FindFirstChild("Humanoid") and e:FindFirstChild("Head") then
				local head = e.Head
				local hum = e.Humanoid

				Tween(plr.Character.PrimaryPart,TweenInfo.new(getTweenDistance(e.Head.Position),Enum.EasingStyle.Linear),{CFrame = head.CFrame * CFrame.new(0,10,0)})
				
				head.Size = Vector3.new(45,45,45)
				head.Shape = Enum.PartType.Block
				head.Transparency = 1
					
				repeat task.wait()
					tool.Parent = c
					vim:SendMouseButtonEvent(0,0,0,true,game,1)		
				until hum.Health <= 0
				task.wait(.5)
				e:Destroy()
			end
		end
	end

	local function getQuest(lv)
		if (lv == 1 or lv <= 9) then
			return {
				[1] = "Bandit",
				[2] = "BanditQuest1",
				[3] = 1,
				[4] = Vector3.new(1059.8369140625, 16.3978214263916, 1549.392333984375),
			}
		elseif (lv == 10 or lv <= 14) then
			return {
				[1] = "Monkey",
				[2] = "JungleQuest",
				[3] = 1,
				[4] = Vector3.new(-1599.4718017578125, 36.88078308105469, 152.9871063232422),
			}
		elseif (lv == 15 or lv <= 29) then
			return {
				[1] = "Gorilla",
				[2] = "JungleQuest",
				[3] = 2,
				[4] = Vector3.new(-1290.65625, 18.656494140625, -472.57586669921875),
			}
		elseif (lv == 30 or lv <= 44) then
			return {
				[1] = "Pirate",
				[2] = "BuggyQuest1",
				[3] = 1,
				[4] = Vector3.new(-1139.84619140625, 4.787052631378174, 3828.7021484375),
			}
		elseif (lv == 45 or lv <= 59) then
			return {
				[1] = "Brute",
				[2] = "BuggyQuest1",
				[3] = 2,
				[4] = Vector3.new(-1139.84619140625, 4.787052631378174, 3828.7021484375),
			}
		elseif (lv == 60 or lv <= 74) then
			return {
				[1] = "Desert Bandit",
				[2] = "DesertQuest",
				[3] = 1,
				[4] = Vector3.new(895.5215454101562, 6.4897236824035645, 4386.93755),
			}
		elseif (lv == 75 or lv <= 89) then
			return {
				[1] = "Desert Officer",
				[2] = "DesertQuest",
				[3] = 2,
				[4] = Vector3.new(1608.363525390625, 9.926616668701172, 4372.4482421875),
			}
		elseif (lv == 90 or lv <= 99) then
			return {
				[1] = "Snow Bandit",
				[2] = "SnowQuest",
				[3] = 1,
				[4] = Vector3.new(1377.667236328125, 106.14571380615234, -1393.1392822265625),
			}
		elseif (lv == 100 or lv <= 119) then
			return {
				[1] = "Snowman",
				[2] = "SnowQuest",
				[3] = 2,
				[4] = Vector3.new(1219.4886474609375, 138.04638671875, -1489.25927734375),
			}
		elseif (lv == 120 or lv <= 149) then
			return {
				[1] = "Chief Petty Officer",
				[2] = "MarineQuest2",
				[3] = 1,
				[4] = Vector3.new(-4913.1982421875, 20.687044143676758, 4029.192138671875),
			}
		elseif (lv == 150 or lv <= 174) then
			return {
				[1] = "Sky Bandit",
				[2] = "SkyQuest",
				[3] = 1,
				[4] = Vector3.new(-4954.81103515625, 295.7790222167969, -2897.782958984375),
			}	
		elseif (lv == 175 or lv <= 189) then
			return {
				[1] = "Dark Master",
				[2] = "SkyQuest",
				[3] = 2,
				[4] = Vector3.new(-5223.40771484375, 430.337158203125, -2276.957275390625),
			}
		elseif (lv == 190 or lv <= 209) then
			return "Prisoner"
		elseif (lv == 210 or lv <= 249) then
			return "Dangerous Prisoner"
		elseif (lv == 250 or lv <= 299) then
			return "Toga Warrior"
		elseif (lv == 300 or lv <= 324) then
			return "Military Soldier"
		elseif (lv == 325 or lv <= 374) then
			return "Military Spy"
		elseif (lv == 375 or lv <= 399) then
			return "Fishman Warrior"
		elseif (lv == 400 or lv <= 449) then
			return "Fishman Commando"
		end
	end

	coroutine.wrap(function()		
		task.wait(1)
		Init(plr.Character)
		plr.CharacterAdded:Connect(function(c)
			task.wait(1)
			Init(c)
		end)
	end)()

	coroutine.wrap(function()
		game["Run Service"].Heartbeat:Connect(function()
			local data = plr.Data
			local combat = data.Stats.Melee.Level.Value
			local defense = data.Stats.Defense.Level.Value
			local point = data.Points.Value
			
			if combat < 2650 then
				cm:InvokeServer("AddPoint","Melee",3)
			elseif combat == 2650 and defense < 2650 then
				cm:InvokeServer("AddPoint","Defense",3)
			end
			
			task.wait()
		end)
	end)()
	

	task.wait(5)

	game["Run Service"].Heartbeat:Connect(function()
		local c = plr.Character or plr.CharacterAdded:Wait()
		local r = c.PrimaryPart

		local lv = plr.Data.Level.Value
		local beli = plr.Data.Beli.Value
		local Enemies = workspace.Enemies
		
		plr.CharacterAdded:Connect(function(newC)
			repeat task.wait() until newC
			task.wait(5)
			startQuest(getQuest(lv)[2],getQuest(lv)[3],getQuest(lv)[4],newC)
			Attack(getQuest(lv)[1],newC)
		end)
		
		startQuest(getQuest(lv)[2],getQuest(lv)[3],getQuest(lv)[4],c)
		Attack(getQuest(lv)[1],c)
		task.wait()
	end)
end

if game.Players.LocalPlayer.Team ~= game.Teams.Pirates then
	cm:InvokeServer("SetTeam","Pirates")
end

return coroutine.wrap(Initialize)()
