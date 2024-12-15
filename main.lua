local plr = game.Players.LocalPlayer
loadstring(game:HttpGet("https://raw.githubusercontent.com/lagbackisasussydog/waitun/refs/heads/main/gui.lua"))()

local instructions = {
  ["Sky bandit"] = {
    ["Level"] = 1,
    ["Model"] = Workspace.Enemies:FindFirstChild("Sky Bandit")
  },
  ["Dark master"] = {
    ["Level"] = 10,
    ["Model"] = Workspace.Enemies:FindFirstChild("Dark Master")
  },
}

function Tween(instance,info,property)
  local tweensvc = game:GetService("TweenService")

  local track = tweensvc:Create(instance,info,property)
  track:Play()
end

function fireQuestEvent(qname)
  game:GetService("ReplicatedStorage")
end

function gatherMobs(mob,gatherPosition)
  local e = Workspace.Enemies
  repeat
    Tween(e:FindFirstChild(mob).PrimaryPart,TweenInfo.new(),{CFrame = CFrame.new(gatherPosition)})
  until
end

function attack(hum)
  local char = plr.Character

  repeat
    mouse1click()
  until hum.Health == 0
end
