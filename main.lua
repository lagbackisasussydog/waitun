--if game.PlaceId ~= 2753915549 then script:Destroy() end

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

local combat = backpack[1]

local root = char.PrimaryPart

local plrgui = game.Players.LocalPlayer.PlayerGui

local e = false

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
keypress(106)

local att = Instance.new("Attachment",root)

local vforce = Instance.new("VectorForce",att)
vfrorce.ApplyAtCenterOfMass = true
vforce.Force = Vector3.new(0,workspace.Gravity * root:GetMass() * 0,0)

function Tween(inst,cframe)
    local track = game.TweenService:Create(inst,TweenInfo.new(5,Enum.EasingStyle.Quad),{CFrame = cframe})
    track:Play()
    track.Completed:Wait()
end

while wait(.1) do
    for i,v in pairs(enemies:GetChildren()) do
        if e then return end
        local eroot = v.PrimaryPart

        Tween(enemies:GetChildren()[i].PrimaryPart,TweenInfo.new(5),{CFrame = eroot.CFrame)
        
        root.Anchored = false
        eroot.Anchored = true
        Tween(root,eroot.CFrame * CFrame.new(0,30,0))
        eroot.Size = Vector3.new(50,50,50)
        wait(1)
        repeat
            mouse1click()
        until v.Humanoid.Health == 0
    end
end
