local plr = game.Players.LocalPlayer
local char = plr.Character
local rs = game.ReplicatedStorage

loadstring(game:HttpGet('https://raw.githubusercontent.com/lagbackisasussydog/waitun/refs/heads/main/gui.lua'))()

local instructions = {
  ["Sky bandits"] = {
    ["Model"] = Workspace.Enemies:FindFirstChild("Sky Bandits"),
  },
  ["Dark masters"] = {
    ["Model"] = Workspace.Enemies:FindFirstChild("Dark Masters"),
  },
  ["Military Soldier"] = {
    ["QName"] = "MagmaQuest",
    ["Model"] = Workspace.Enemies:FindFirstChild("Military Soldier"),
    ["Section"] = 1,
  },
  ["Military Spy"] = {
    ["QName"] = "MagmaQuest",
    ["Model"] = Workspace.Enemies:FindFirstChild("Military Spy"),
    ["Section"] = 2,
  },
  ["God's guard"] = {
    ["QName"] = "SkyExp1Quest",
    ["Model"] = Workspace.Enemies:FindFirstChild("God's Guard"),
    ["Section"] = 1,
  },
}

function Tween(instance,info,property)
  local tweensvc = game:GetService("TweenService")

  local track = tweensvc:Create(instance,info,property)
  track:Play()
  track.Completed:Wait()
  wait(1)
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

function Attack(model)
  local reghit = rs.Modules.Net["RE/RegisterHit"]
  mouse1click()
  reghit:FireServer(model:FindFirstChild("Head"))
  reghit:FireServer(model:FindFirstChild("Torso"))
end

function changeEnemyHitbox(root)
    root.Size = Vector3.new(50,50,50)
end

function Farm()
  while task.wait(.1) do
    local e = Workspace.Enemies
    local root = char.PrimaryPart
    local plrdata = plr:FindFirstChild("Data")
    for i,v in pairs(e:GetChildren()) do

      local eroot = v:WaitForChild("HumanoidRootPart")
      
      if (plrdata.Level.Value == 1 or plrdata.Level.Value <= 300) and (v == instuctions["Sky bandits"].Model or v == instruction["Dark masters"].Model) then
          Tween(root,TweenInfo.new(55,Enum.EasingStyle.Linear),{CFrame = Workspace.Map.Sky:GetPivot()})
          Tween(root,TweenInfo.new(2,Enum.EasingStyle.Linear),{CFrame = eroot.CFrame * CFrame.new(0,30,0)})
            
          Anchor(eroot)
          changeEnemyHitbox(eroot)

          repeat
            Attack(v)
          until v.Humanoid.Health == 0
      elseif (plrdata.Level.Value == 300 or plrdata.Level.Value <= 400) and (v == instuctions["Military Soldier"].Model or v == instuctions["Military Spy"].Model) then
        Tween(root,TweenInfo.new(135,Enum.EasingStyle.Linear),{CFrame = Workspace.Map.Magma:GetPivot()})
        Tween(root,TweenInfo.new(2,Enum.EasingStyle.Linear),{CFrame = eroot.CFrame * CFrame.new(0,30,0)})

        if plrdata.Level.Value <= 325 then
            fireQuestEvent("MagmaQuest",1)
        elseif plrdata.Level.Value == 325 or plrdata.Level.Value <= 350 then
            fireQuestEvent("MagmaQuest",2)
        end

        Anchor(eroot)
        changeEnemyHitbox(eroot)

        repeat
          Attack(v)
        until v.Humanoid.Health == 0
      end
    end
  end
end

Anchor(char.PrimaryPart)

local success , err = pcall(Farm)

if success then print("ok!") else loadstring(game:HttpGet('https://raw.githubusercontent.com/lagbackisasussydog/waitun/refs/heads/main/main.lua'))() task.wait(.5) script:Remove() end
