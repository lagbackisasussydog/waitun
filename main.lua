if game.PlaceId ~= 2753915549 then script:Destroy() end

repeat
    wait()
until game:IsLoaded()

local plr = game.Players.LocalPlayer
local char = plr.Character
local map = Workspace.Map
local e = Workspace.Enemies

local data = plr:FindFirstChild("Data")
local combat = plr.Backpack[1]

local root = char.PrimaryPart

plr.Character.Humanoid:EquipTool(combat)

function Tween(inst,cframe)
    local track = game.TweenService:Create(inst,TweenInfo.new(),{CFrame = cframe})
    track:Play()
    track.Completed:Wait()
end

while wait(.1) do
    for i,v in pairs(e:GetChildren()) do

        local eroot = v.PrimaryPart
        
        Tween(root,eroot.CFrame * CFrame.new(0,30,0))
        eroot.Size = Vector3.new(50,50,50)
        eroot.Anchored = true
        root.Anchored = true
        wait(1)
        repeat
            mouse1click()
        until v.Humanoid.Health == 0
    end
end
