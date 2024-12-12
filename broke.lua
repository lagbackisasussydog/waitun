-- For those who broke

local plr = game.Players.LocalPlayer
local char = plr.Character
local map = Workspace.Map

local data = plr:FindFirstChild("Data")

while task.wait(.1) do
  for i,v in pairs(Workspace:GetChildren()) do
    if v.Name == "Chest" .. math.random(1,3) then
        char:PivotTo(v.CFrame)
    end
  end
end
