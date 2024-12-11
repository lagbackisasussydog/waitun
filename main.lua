if game.PlaceId ~= 2753915549 then script:Destroy() end

repeat
    wait()
until game:IsLoaded()

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

local gui = Instance.new("ScreenGui",plrgui)
gui.ResetOnSpawn = false

local btn = Instance.new("TextButton",gui)
btn.Active = true
btn.Draggable = true

btn.Size = UDim2.new(0,50,0,50)
btn.BackgroundColor3 = Color3.fromRGB(255,0,0)
btn.TextColor3 = Color3.fromRGB(255,255,255)
btn.TextScaled = true
btn.Text = "Stop"

btn.MouseButton1Up:Connect(function()
    e = not e

    if e then
        btn.Text = "Start"
        getscript().Enabled = false
        btn.BackgroundColor3 = Color3.fromRGB(0,255,0)
    else
        btn.Text = "Stop"
        getscript().Enabled = true
        btn.BackgroundColor3 = Color3.fromRGB(255,0,0)
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
    local track = game.TweenService:Create(inst,TweenInfo.new(5,Enum.EasingStyle.Quad),{CFrame = cframe})
    track:Play()
    track.Completed:Wait()
end

while wait(.1) do
    for i,v in pairs(enemies:GetChildren()) do

        root.Anchored = false
        
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


