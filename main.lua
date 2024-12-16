local plr = game.Players.LocalPlayer
local rs = game.ReplicatedStorage

loadstring(game:HttpGet('https://raw.githubusercontent.com/lagbackisasussydog/waitun/refs/heads/main/gui.lua'))()

local instructions = {
  ["Sky bandits"] = {
    ["Level"] = 1,
    ["Model"] = Workspace.Enemies:FindFirstChild("Sky Bandits"),
  },
  ["Dark masters"] = {
    ["Level"] = 10,
    ["Model"] = Workspace.Enemies:FindFirstChild("Dark Masters"),
  },
  ["Military Soldier"] = {
    ["QName"] = "MagmaQuest",
    ["Level"] = 300,
    ["Model"] = Workspace.Enemies:FindFirstChild("Military Soldier"),
    ["Section"] = 1,
  },
  ["Military Spy"] = {
    ["QName"] = "MagmaQuest",
    ["Level"] = 300,
    ["Model"] = Workspace.Enemies:FindFirstChild("Military Spy"),
    ["Section"] = 2,
  },
}

function Tween(instance,info,property)
  local tweensvc = game:GetService("TweenService")

  Anchor(instance)
  local track = tweensvc:Create(instance,info,property)
  track:Play()
  track.Completed:Wait()
end

function Anchor(root)
  local att = Instance.new("Attachment",root)

  local AlignPosition = Instance.new("AlignPosition",att)
  AlignPosition.ApplyAtCenterOfMass = true
  AlignPosition.MaxForce = math.huge
  AlignPosition.Position = root.Position
end

function fireQuestEvent(qname,section)
  rs.Remotes.CommF_:InvokeServer("StartQuest",qname,section)
end

function attack(hum,mob,targetPosition)
  Tween(plr.Character.PrimaryPart,TweenInfo.new(),{CFrame = targetPosition * CFrame.new(0,30,0)
  mob.PrimaryPart.Size = Vector3.new(50,50,50)
  Anchor(mob.PrimaryPart)
  gatherMobs(mob,targetPosition)
  repeat
    mouse1click()
  until hum.Health == 0
end

function gatherMobs(mob,targetPosition)
  local e = Workspace.Enemies
  repeat
    Tween(e:FindFirstChild(mob).PrimaryPart,TweenInfo.new(),{CFrame = CFrame.new(targetPosition)})
  until
end

function DoWhatISay()
  while wait(.1) do
  
    local data = plr.Data
    
    for i,v in pairs(instructions) do
      local mname = v.QName
      local model = v.Model
      local requirement = v.Level
      local section = v.Section
  
      if data.Level.Value >= requirement then
          fireQuestEvent(mname,section)
          attack(model.Humanoid,model,model.PrimaryPart.Position)
      end
    end
  end
end

DoWhatISay()
    
local thread = task.spawn(DoWhatISay)
    
game:GetService("UserInputService").InputBegan:Connect(function(inp,proc)
  if proc then return end

  if inp.KeyCode == Enum.KeyCode.LeftAlt then
    task.cancel(thread)
  end
end)
