local tween = {}

local plr = game.Players.LocalPlayer
local char = plr.Character

function tween.Add(name,inst,property)
  local svc = game:GetService("TweenService")

  svc:Create(inst,TweenInfo.new(),property):Play()
end

return tween
