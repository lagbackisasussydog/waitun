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

local gui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Bar = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

gui.Name = "Gui"
gui.Parent = plrgui

Main.Name = "Main"
Main.Parent = gui
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(-0.849816144, 0, 0.850000024, 0)
Main.Size = UDim2.new(0.21875, 0, 0.213219613, 0)

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0653061196, 0, 0, 0)
TextLabel.Size = UDim2.new(0.816326559, 0, 0.5, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Notification"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Right

Bar.Name = "Bar"
Bar.Parent = Main
Bar.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
Bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(0.918367326, 0, 0, 0)
Bar.Size = UDim2.new(0.0816326514, 0, 1, 0)

TextLabel_2.Parent = Main
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.0653061196, 0, 0.5, 0)
TextLabel_2.Size = UDim2.new(0.816326559, 0, 0.5, 0)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Script executed successfully!"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 20.000
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Right

game.TweenService:Create(Main,TweenInfo.new(1,Enum.EasingStyle.Linear,{Position = UDim2.new(0.849816144, 0, 0.850000024, 0)}):Play()

local att = Instance.new("Attachment",root)

local align = Instance.new("AlignPosition",att)
align.Mode = Enum.PositionAlignmentMode.OneAttachment
align.Attachment0 = att
align.MaxForce = 10000000000000000000000

function Tween(inst,cframe)
    local track = game.TweenService:Create(inst,TweenInfo.new(1,Enum.EasingStyle.Sine),{CFrame = cframe})
    track:Play()
    track.Completed:Wait()
end

while task.wait(.1) do
    align.Position = root.Position
    for i,v in pairs(enemies:GetChildren()) do
        local eroot = v.PrimaryPart

        local att = Instance.new("Attachment",eroot)

        local align = Instance.new("AlignPosition",att)
        align.Mode = Enum.PositionAlignmentMode.OneAttachment
        align.Attachment0 = att
        align.MaxForce = 10000000000000000000000
        
        Tween(root,eroot.CFrame * CFrame.new(0,30,0))
        eroot.Size = Vector3.new(50,50,50)
        repeat
            mouse1click()
        until v.Humanoid.Health == 0
    end
end
