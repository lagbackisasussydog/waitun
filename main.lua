local plr = game.Players.LocalPlayer

local plrgui = game.Players.LocalPlayer.PlayerGui

local count = 0

local gui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Bar = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")

gui.Name = "Gui"
gui.Parent = plrgui

Main.Name = "Main"
Main.Parent = gui
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(1.849816144, 0, 0.850000024, 0)
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

game.TweenService:Create(Main,TweenInfo.new(1,Enum.EasingStyle.Linear),{Position = UDim2.new(0.849816144, 0, 0.850000024, 0)}):Play()
task.wait(2)
game.TweenService:Create(Main,TweenInfo.new(1,Enum.EasingStyle.Linear),{Transparency = 1}):Play()
game.TweenService:Create(Bar,TweenInfo.new(1,Enum.EasingStyle.Linear),{Transparency = 1}):Play()
game.TweenService:Create(TextLabel_2,TweenInfo.new(1,Enum.EasingStyle.Linear),{Transparency = 1}):Play()
game.TweenService:Create(TextLabel,TweenInfo.new(1,Enum.EasingStyle.Linear),{Transparency = 1}):Play()

local att = Instance.new("Attachment",plr.Character.PrimaryPart)

local align = Instance.new("AlignPosition",att)
align.Mode = Enum.PositionAlignmentMode.OneAttachment
align.Attachment0 = att
align.MaxForce = math.huge
align.Position = root.Position

function Tween(inst,cframe,duration)
    local track = game.TweenService:Create(inst,TweenInfo.new(duration,Enum.EasingStyle.Sine),{CFrame = cframe})
    track:Play()
    track.Completed:Wait()
    align.Position = root.Position
end


while task.wait(.01) do

    local char = plr.Character
    local map = Workspace.Map
    local enemies = Workspace.Enemies
    
    local data = plr:FindFirstChild("Data")
    local backpack = plr.Backpack:GetChildren()
    
    local combat = backpack[4]
    
    local root = char.PrimaryPart

    root.Transparency = 0
    plr.Character.Humanoid:EquipTool(combat)

    align.Position = root.Position
    for i,v in pairs(enemies:GetChildren()) do

        if not v then
            repeat
                wait()
            until v
        end

        local eroot = v.PrimaryPart

        Tween(root,v:GetPivot() * CFrame.new(0,30,0),1)
        eroot.Size = Vector3.new(100,100,100)
        repeat
            root.CFrame = eroot.CFrame * CFrame.new(0,30,0)
            mouse1click()
        until v.Humanoid.Health == 0
    end
end
