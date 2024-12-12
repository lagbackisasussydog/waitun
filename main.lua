repeat
    wait()
until game:IsLoaded()

getgenv().Team = "Pirates"

local plr = game.Players.LocalPlayer
local char = plr.Character
local map = Workspace.Map
local enemies = Workspace.Enemies

local data = plr:FindFirstChild("Data")
local backpack = plr.Backpack:GetChildren()

local combat = backpack[4]

local root = char.PrimaryPart

local plrgui = game.Players.LocalPlayer.PlayerGui

local e = false

local count = 0

game:GetService("UserInputService").InputBegan:Connect(function(inp,proc)
    if proc then return end

    if inp.KeyCode == Enum.KeyCode.RightControl then
        e = not e

        if e then
            print("stopped")
        else
            print("Started")
        end
    end
end)

char.Humanoid.HealthChanged:Connect(function(h)
    if h == 0 then
        e = true
        task.wait(10)
        e = false
    end
end)

root.Transparency = 0
plr.Character.Humanoid:EquipTool(combat)

function Tween(inst,cframe)
    local track = game.TweenService:Create(inst,TweenInfo.new(1,Enum.EasingStyle.Sine),{CFrame = cframe})
    track:Play()
    track.Completed:Wait()
    root.Anchored = true
end

function anchor(part)
    local clone = part:Clone()
    clone.CFrame = part.CFrame
    clone.Anchored = true
    clone.Transparency = 0
    clone.Parent = Workspace
    
    local weld = Instance.new("WeldConstraint",clone)
    weld.Part0 = clone
    weld.Part1 = part

    game.Debris:AddItem(clone,8)
end

while task.wait(.1) do
    for i,v in pairs(enemies:GetChildren()) do
        local eroot = v.PrimaryPart

        root.Anchored = false
        eroot.Anchored = true
        Tween(root,eroot.CFrame * CFrame.new(0,30,0))
        root.Anchored = true
        eroot.Size = Vector3.new(50,50,50)
        repeat
            mouse1click()
        until v.Humanoid.Health == 0
    end
end
