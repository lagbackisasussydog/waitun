local lv = {}

local plr = game.Players.LocalPlayer
local char = plr.Character

local data = plr:FindFirstChild("Data")

function lv.GetLevel()
  return data.Level.Value
end

return lv
