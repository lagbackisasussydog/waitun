local function load()
    
    local rs = game:GetService("ReplicatedStorage")
    local tw = game:GetService("TweenService")

    local p = game.Players.LocalPlayer
    local c = p.Character
    local r = c.PrimaryPart

    local cmf = rs.Remotes.CommF_
    local net = rs.Modules.Net

    local e = Enum
    local ef = workspace.Enemies
    local map = workspace.Map

    local function inst(inst : String,place) return Instance.new(inst,place) end
    
    local att = inst("Attachment",r)
    att.Name = "Force"

    local align = inst("AlignPosition",att)
    align.Mode = e.PositionAlignmentMode.OneAttachment
    align.MaxForce = math.huge
    align.MaxVelocity = math.huge
    align.Position = r.Position
    
    local function Tween(inst,info,prop)
      local track = tw:Create(inst,info,prop)
      track:Play()
      track.Completed:Wait()
    end

    local function getPLevel(pl)
      return pl.Data.Level.Value
    end

    local function tp(cf : CFrame)
      local tped = inst("BoolValue",r)
      tped = false
      
      if tped then return end

      tped = true
      Tween(r,TweenInfo.new(30,e.EasingStyle.Linear),{CFrame = cf})
    end

    local function unTp()
      local tped = r:FindFirstChild("BoolValue")

      tped = false
    end

    local function fireEvent(model : Model)
      local regHit = net["RE/RegisterHit"]

      for _,part in model:GetChildren() do
        if part:IsA("BasePart") then
          regHit:FireServer(part)
        end
      end
    end

    local function disableCollide(char : Model)
        for _,part in char:GetChildren() do
          if part:IsA("BasePart") then
            part.CanCollide = false
          end
      end
    end

		while wait(.1) do
			pcall(function()
				for i,enemy in ef:GetChildren() do
					if (getPLevel(p) == 1 or getPLevel(p) < 300) and (e.Name == "Sky Bandit [Lv. 150]" or e.Name == "Dark Master [Lv. 175"]) then
						disableCollide(c)

						if #ef:GetChildren() == 0 then
							repeat
								wait()
							until #ef:GetChildren() ~= 0
						end
					elseif (getPLevel(p) == 1 or getPLevel(p) < 300) and e.Name == "Military Soldier [Lv. 300]" then

					end	
				end
			end)
		end
end

coroutine.wrap(load)()
