local Main = Instance.new("ScreenGui")
local Main_2 = Instance.new("Frame")
local Bars = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local Title = Instance.new("TextLabel")
local Section = Instance.new("ScrollingFrame")
local Notif = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Bar = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")

Main.Name = "Main"
Main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main_2.Name = "Main"
Main_2.Parent = Main
Main_2.AnchorPoint = Vector2.new(0.5, 0.5)
Main_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main_2.BackgroundTransparency = 0.500
Main_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main_2.BorderSizePixel = 0
Main_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Main_2.Size = UDim2.new(0, 450, 0, 0)

Bars.Name = "Bars"
Bars.Parent = Main_2
Bars.AnchorPoint = Vector2.new(0.5, 0.5)
Bars.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bars.BorderColor3 = Color3.fromRGB(0, 0, 0)
Bars.BorderSizePixel = 0
Bars.Position = UDim2.new(0.5, 0, 0.0399999991, 0)
Bars.Size = UDim2.new(0, 450, 0, 25)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(85, 255, 255))}
UIGradient.Rotation = 90
UIGradient.Parent = Bars

Title.Name = "Title"
Title.Parent = Bars
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0222222228, 0, 0, 0)
Title.Size = UDim2.new(0, 450, 0, 25)
Title.Font = Enum.Font.SourceSans
Title.Text = "-Waitun"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextSize = 14.000
Title.TextXAlignment = Enum.TextXAlignment.Left

Section.Name = "Section"
Section.Parent = Main_2
Section.Active = true
Section.AnchorPoint = Vector2.new(0.5, 0.5)
Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Section.BackgroundTransparency = 0.500
Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
Section.BorderSizePixel = 0
Section.Position = UDim2.new(0.206666663, 0, 0.546666622, 0)
Section.Size = UDim2.new(0, 0, 0, 0)
Section.ScrollBarThickness = 0

Notif.Name = "Notif"
Notif.Parent = Main
Notif.AnchorPoint = Vector2.new(0.5, 0.5)
Notif.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Notif.BorderColor3 = Color3.fromRGB(0, 0, 0)
Notif.BorderSizePixel = 0
Notif.Position = UDim2.new(1.79999995, 0, 0.850000024, 0)
Notif.Size = UDim2.new(0.21875, 0, 0.213219613, 0)

TextLabel.Parent = Notif
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
Bar.Parent = Notif
Bar.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
Bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(0.918367326, 0, 0, 0)
Bar.Size = UDim2.new(0.0816326514, 0, 1, 0)

TextLabel_2.Parent = Notif
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


local function VXLGBSH_fake_script() 
	local script = Instance.new('LocalScript', Main)

	local tween = game:GetService("TweenService")
	local frame = script.Parent.Main
	
	 local function create(inst,info,property)
	    tween:Create(inst,info,property):Play()
	 end
	
	local notif = script.Parent.Notif
	
	frame.Visible = false
	
	create(notif, TweenInfo.new(1),{Position = UDim2.new(0.85, 0,0.85, 0)})
	task.wait(3)
	create(notif, TweenInfo.new(1),{Position = UDim2.new(1.85, 0,0.85, 0)})
	
	task.wait(1)
	
	frame.Visible = true
	create(frame.Bars.UIGradient,TweenInfo.new(),{Rotation = 0})
	task.wait(1)
	create(frame,TweenInfo.new(.5,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),{Size = UDim2.new(0,450,0,300)})
	create(frame.Section,TweenInfo.new(1),{Size = UDim2.new(0,150,0,245)})
	
	frame.Active = true
	frame.Draggable = true
end
coroutine.wrap(VXLGBSH_fake_script)()
