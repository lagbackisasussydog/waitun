local plr = game.Players.LocalPlayer
local char = plr.Character
local map = Workspace.Map
local e = Workspace.Enemies

local data = plr:FindFirstChild("Data")
local combat = plr.Backpack:FindFirstChild("Cursed Dual Katana")

local root = char.PrimaryPart

root.Transparency = 0
plr.Character.Humanoid:EquipTool(combat)

function Tween(inst,cframe)
    local track = game.TweenService:Create(inst,TweenInfo.new(),{CFrame = cframe})
    track:Play()
    track.Completed:Wait()
end

while true do
    for i,v in pairs(e:GetChildren()) do

        local eroot = v.PrimaryPart
        
        Tween(root,eroot.CFrame * CFrame.new(0,30,0))
        root.Anchored = false
        eroot.Size = Vector3.new(50,50,50)
        eroot.Anchored = true      
        root.Anchored = true
        wait(1)
        repeat
            mouse1click()
        until v.Humanoid.Health == 0
    end
end
