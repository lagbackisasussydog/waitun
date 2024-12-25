local function load()
  local Configs = {
    ["AutoGrinder3000"] = {
      ["Enabled"] = false,
      ["AttackMode"] = "Normal",
      ["TweenSpeed"] = 5,
      ["CollectSaber"] = true,
      ["GrindAllFightingStyle"] = true
    },
    ["AutoStatAddition"] = {
      ["Enabled"] = false,
      ["Amount"] = 1
    },
    ["GambleMachine300"] = {
      ["Enabled"] = false
    },
  }
  
  local place = {
    ["First sea"] = false,
    ["Second sea"] = false,
    ["Third sea"] = false,
  }
  
  local pid = game.PlaceId
  
  if pid == 2753915549 then
    place["First sea"] = true
  elseif pid == 4442272183 then
    place["Second sea"] = true
  elseif pid == 7449423635 then
    place["Third sea"] = true
  end

	local w = Workspace
	local p = game.Players.LocalPlayer
	local r = game:GetService("ReplicatedStorage")
	local tw = game:GetService("TweenService")
	local vu = game:GetService("VirtualUser")

	local c = p.Character
	local root = c.PrimaryPart

	local ef = w.Enemies
	local m = w.Map
	local pdata = p:FindFirstChild("Data")
	
	local att = Instance.new("Attachment",root)
	local align = Instance.new("AlignPosition",att)
	align.Mode = Enum.PositionAlignmentMode.OneAttachment
	align.Attachment0 = att
	align.MaxForce = math.huge
	align.MaxVelocity = math.huge
	align.Position = root.Position

	local function getMobPrevCFrame(mob : String)
		return rs:FindFirstChild(mob):GetPivot()
	end

	local function getMobDistance(position : Vector3)
		return p:DistanceFromCharacter(position)
	end

	local function setMobHitbox(mob : Model)
		local hum = mob:FindFirstChild("Humanoid")
		local mroot = mob.PrimaryPart

		hum.WalkSpeed = 0
		mroot.CanCollide = false
		mroot.Size = Vector3.new(50,50,50)
	end
	
	local function att()
		
	end

	local function tween(inst,info,prop)
		local track = tw:Create(inst,info,prop)

		track:Play()
		track.Completed:Wait()
		align.Position = root.Position
	end

	if Configs.AutoGrinder3000.Enabled == true then
		if place["First sea"] == true then
			if pdata.Level.Value == 1 and pdata.Level.Value < 300 then
				local mob = ef:FindFirstChild("Sky Bandit")
				local prevPos = getMobPrevCFrame(mob)
				tween(root,TweenInfo.new(1),{CFrame = prevPos * CFrame.new(0,30,0)})

				repeat
					tween(e.PrimaryPart,TweenInfo.new(5),{CFrame = prevPos})
				until getMobDistance(prevPos.Position) <= 10
				wait(1)
				setMobHitbox(mob)
				repeat
					mouse1click()
				until mob.Humanoid.Health == 0
			elseif pdata.Level.Value == 300 and pdata.Level.Value < 325 then
				local mob = ef:FindFirstChild("Military Soldier")
				local prevPos = getMobPrevCFrame(mob)
				tween(root,TweenInfo.new(1),{CFrame = prevPos * CFrame.new(0,30,0)})

				repeat
					tween(e.PrimaryPart,TweenInfo.new(5),{CFrame = prevPos})
				until getMobDistance(prevPos.Position) <= 10
				wait(1)
				setMobHitbox(mob)
				repeat
					mouse1click()
				until mob.Humanoid.Health == 0
			end
		end
	end
	
end

coroutine.wrap(load)()
