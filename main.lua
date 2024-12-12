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

local att = Instance.new("Attachment",root)

local align = Instance.new("AlignPosition",att)
align.Mode = Enum.PositionAlignmentMode.OneAttachment
align.Attachment0 = att
align.MaxForce = 10000000000000000000000

function Tween(inst,cframe)
    local track = game.TweenService:Create(inst,TweenInfo.new(1,Enum.EasingStyle.Sine),{CFrame = cframe})
    track:Play()
    track.Completed:Wait()
    root.Anchored = true
end

while task.wait(.1) do
    align.Position = root.Position
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
