-- Gui to Lua
-- Version: 3.2

-- Instances:

local Main = Instance.new("ScreenGui")
local Window = Instance.new("Frame")
local Bars = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local Title = Instance.new("TextLabel")
local Maximize = Instance.new("ImageButton")
local Close = Instance.new("ImageButton")
local Img = Instance.new("ImageLabel")
local ActionStatus = Instance.new("TextLabel")
local LevelFunc = Instance.new("TextButton")
local FruitFunc = Instance.new("TextButton")
local Panel = Instance.new("Frame")
local Settings = Instance.new("ImageButton")
local Notif = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Bar = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

Main.Name = "Main"
Main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Main.ResetOnSpawn = false

Window.Name = "Window"
Window.Parent = Main
Window.AnchorPoint = Vector2.new(0.5, 0.5)
Window.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Window.BackgroundTransparency = 0.500
Window.BorderColor3 = Color3.fromRGB(0, 0, 0)
Window.BorderSizePixel = 0
Window.Position = UDim2.new(0.5, 0, 0.5, 0)
Window.Size = UDim2.new(0, 450, 0, 0)
Window.Visible = false

Bars.Name = "Bars"
Bars.Parent = Window
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
Title.Text = "Waitun - "
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextSize = 14.000
Title.TextXAlignment = Enum.TextXAlignment.Left

Maximize.Name = "Maximize"
Maximize.Parent = Bars
Maximize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Maximize.BackgroundTransparency = 1.000
Maximize.BorderColor3 = Color3.fromRGB(0, 0, 0)
Maximize.BorderSizePixel = 0
Maximize.Position = UDim2.new(0.897777796, 0, 0.0399999991, 0)
Maximize.Size = UDim2.new(0, 24, 0, 24)
Maximize.Image = "http://www.roblox.com/asset/?id=6026568245"

Close.Name = "Close"
Close.Parent = Bars
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.946666658, 0, 0.0399999991, 0)
Close.Size = UDim2.new(0, 24, 0, 24)
Close.Image = "http://www.roblox.com/asset/?id=6031094678"

Img.Name = "Img"
Img.Parent = Window
Img.BackgroundTransparency = 1.000
Img.BorderSizePixel = 0
Img.Position = UDim2.new(0.0222222228, 0, 0.123333335, 0)
Img.Size = UDim2.new(0.0622222237, 0, 0.0700000003, 0)
Img.Image = "http://www.roblox.com/asset/?id=6022668890"

ActionStatus.Name = "ActionStatus"
ActionStatus.Parent = Window
ActionStatus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ActionStatus.BackgroundTransparency = 1.000
ActionStatus.BorderColor3 = Color3.fromRGB(0, 0, 0)
ActionStatus.BorderSizePixel = 0
ActionStatus.Position = UDim2.new(0.0844444409, 0, 0.123333335, 0)
ActionStatus.Size = UDim2.new(0.866666675, 0, 0.0700000003, 0)
ActionStatus.Font = Enum.Font.SourceSans
ActionStatus.Text = "Action: Unknown"
ActionStatus.TextColor3 = Color3.fromRGB(255, 255, 255)
ActionStatus.TextSize = 18.000
ActionStatus.TextXAlignment = Enum.TextXAlignment.Left

LevelFunc.Name = "LevelFunc"
LevelFunc.Parent = Window
LevelFunc.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LevelFunc.BackgroundTransparency = 0.500
LevelFunc.BorderColor3 = Color3.fromRGB(0, 0, 0)
LevelFunc.BorderSizePixel = 0
LevelFunc.Position = UDim2.new(0.0444444455, 0, 0.223333329, 0)
LevelFunc.Size = UDim2.new(0.222222224, 0, 0.0833333358, 0)
LevelFunc.Font = Enum.Font.SourceSans
LevelFunc.Text = "LevelGrinder3000"
LevelFunc.TextColor3 = Color3.fromRGB(255, 255, 255)
LevelFunc.TextSize = 14.000

FruitFunc.Name = "FruitFunc"
FruitFunc.Parent = Window
FruitFunc.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FruitFunc.BackgroundTransparency = 0.500
FruitFunc.BorderColor3 = Color3.fromRGB(0, 0, 0)
FruitFunc.BorderSizePixel = 0
FruitFunc.Position = UDim2.new(0.282222211, 0, 0.223333329, 0)
FruitFunc.Size = UDim2.new(0.222222224, 0, 0.0833333358, 0)
FruitFunc.Font = Enum.Font.SourceSans
FruitFunc.Text = "GambleMachine300"
FruitFunc.TextColor3 = Color3.fromRGB(255, 255, 255)
FruitFunc.TextSize = 14.000

Panel.Name = "Panel"
Panel.Parent = Window
Panel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Panel.BackgroundTransparency = 0.500
Panel.BorderColor3 = Color3.fromRGB(0, 0, 0)
Panel.BorderSizePixel = 0
Panel.Position = UDim2.new(0.0444444455, 0, 0.366666675, 0)
Panel.Size = UDim2.new(0.906666696, 0, 0.563333333, 0)

Settings.Name = "Settings"
Settings.Parent = Window
Settings.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Settings.BackgroundTransparency = 0.500
Settings.BorderColor3 = Color3.fromRGB(0, 0, 0)
Settings.BorderSizePixel = 0
Settings.Position = UDim2.new(0.533333361, 0, 0.223333329, 0)
Settings.Size = UDim2.new(0.055555556, 0, 0.0833333358, 0)
Settings.Visible = false
Settings.Image = "http://www.roblox.com/asset/?id=6031280882"

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

-- Scripts:

local function CAGNA_fake_script() -- Maximize.Handle 
	local script = Instance.new('LocalScript', Maximize)

	local plr = game.Players.LocalPlayer
	local tw = game:GetService("TweenService")
	local gui = plr.PlayerGui.Main
	
	local absize = gui.AbsoluteSize
	
	local btn = script.Parent
	
	local pressed = false
	
	btn.MouseButton1Up:Connect(function()
		pressed = not pressed
		
		if pressed then
			gui.Window.Position = UDim2.new(0.5,0,0.5,0)
			tw:Create(gui.Window,TweenInfo.new(.5),{Size = UDim2.new(0,absize.X,0,absize.Y)}):Play()
			tw:Create(gui.Window.Bars,TweenInfo.new(.5),{Size = UDim2.new(0,absize.X,0,25)}):Play()
			gui.Window.Draggable = false
		else
			tw:Create(gui.Window,TweenInfo.new(.5),{Size = UDim2.new(0,450,0,300)}):Play()
			tw:Create(gui.Window.Bars,TweenInfo.new(.5),{Size = UDim2.new(0,450,0,25)}):Play()
			gui.Window.Draggable = true
		end
	end)
end
coroutine.wrap(CAGNA_fake_script)()
local function YFYUP_fake_script() -- Close.Handle 
	local script = Instance.new('LocalScript', Close)

	local btn = script.Parent
	local frame = btn.Parent.Parent
	local uis = game:GetService("UserInputService")
	
	btn.MouseButton1Up:Connect(function()
		frame.ActionStatus.Text = "Action: Press LeftAlt to reopen the window again!"
		wait(5)
		frame.Visible = false
	end)
	
	uis.InputBegan:Connect(function(inp,proc)
		if proc then return end
		
		if inp.KeyCode == Enum.KeyCode.LeftAlt then
			frame.ActionStatus.Text = "Action: Unknown"
			frame.Visible = true
		end
	end)
end
coroutine.wrap(YFYUP_fake_script)()
local function ATIJH_fake_script() -- Main.Animate 
	local script = Instance.new('LocalScript', Main)

	local tween = game:GetService("TweenService")
	local frame = script.Parent.Window
	
	local function create(inst,info,property)
		tween:Create(inst,info,property):Play()
	end
	
	local notif = script.Parent.Notif
	
	frame.Img.Visible = false
	frame.ActionStatus.Visible = false
	
	frame.Panel.Visible = false
	frame.LevelFunc.Visible = false
	frame.FruitFunc.Visible = false
	frame.Settings.Visible = false
	
	frame.Bars.Close.Visible = false
	frame.Bars.Maximize.Visible = false
	
	create(notif, TweenInfo.new(1),{Position = UDim2.new(0.85, 0,0.85, 0)})
	task.wait(3)
	create(notif, TweenInfo.new(3),{Position = UDim2.new(1.85, 0,0.85, 0)})
	
	task.wait(1)
	
	frame.Visible = true
	create(frame.Bars.UIGradient,TweenInfo.new(),{Rotation = 0})
	task.wait(1)
	create(frame,TweenInfo.new(.5,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),{Size = UDim2.new(0,450,0,300)})
	
	frame.Bars.Close.Visible = true
	frame.Bars.Maximize.Visible = true
	
	frame.Img.Visible = true
	frame.ActionStatus.Visible = true
	
	task.wait(1)
	frame.Panel.Visible = true
	frame.LevelFunc.Visible = true
	frame.FruitFunc.Visible = true
	frame.Settings.Visible = true
end
coroutine.wrap(ATIJH_fake_script)()
local function PKCV_fake_script() -- Main.Drag 
	local script = Instance.new('LocalScript', Main)

	local frame = script.Parent.Window
	
	task.wait(1.5)
	frame.Active = true
	frame.Draggable = true
end
coroutine.wrap(PKCV_fake_script)()



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

local function load()
  local Configs = {
    ["AutoGrinder3000"] = {
      ["Enabled"] = false,
      ["AttackMode"] = "Normal",
      ["TweenSpeed"] = 5,
      ["CollectSaber"] = true,
      ["GrindAllFightingStyle"] = true
    },
    ["AutoStatAddition"] = {
      ["Enabled"] = false,
      ["Amount"] = 1
    },
    ["GambleMachine300"] = {
      ["Enabled"] = false
    },
  }
  
  local place = {
    ["First sea"] = false,
    ["Second sea"] = false,
    ["Third sea"] = false,
  }
  
  local pid = game.PlaceId
  
  if pid = 2753915549 then
    place["First sea"] = true
  elseif pid = 4442272183 then
    place["Second sea"] = true
  elseif pid = 7449423635 then
    place["Third sea"] = true
  end

	local w = Workspace
	local p = game.Players.LocalPlayer
	local r = game:GetService("ReplicatedStorage")
	local tw = game:GetService("TweenService")
	local vu = game:GetService("VirtualUser")

	local c = p.Character
	local root = c.PrimaryPart

	local ef = w.Enemies
	local m = w.Map
	local pdata = p:FindFirstChild("Data")
	
	local att = Instance.new("Attachment",root)
	local align = Instance.new("AlignPosition",att)
	align.Mode = Enum.PositionAlignmentMode.OneAttachment
	align.Attachment0 = att
	align.MaxForce = math.huge
	align.MaxVelocity = math.huge
	align.Position = root.Position

	local function getMobPrevCFrame(mob : String)
		return rs:FindFirstChild(mob):GetPivot()
	end

	local function getMobDistance(position : Vector3)
		return p:DistanceFromCharacter(position)
	end

	local function setMobHitbox(mob : Model)
		local hum = mob:FindFirstChild("Humanoid")
		local mroot = mob.PrimaryPart

		hum.WalkSpeed = 0
		mroot.CanCollide = false
		mroot.Size = Vector3.new(50,50,50)
	end
	
	local function att()
		
	end

	local function tween(inst,info,prop)
		local track = tw:Create(inst,info,prop)

		track:Play()
		track.Completed:Wait()
		align.Position = root.Position
	end

	if Configs.AutoGrinder3000.Enabled == true then
		if place["First sea"] == true then
			if pdata.Level.Value == 1 and pdata.Level.Value < 300 then
				local mob = ef:FindFirstChild("Sky Bandit")
				local prevPos = getMobPrevCFrame(mob)
				tween(root,TweenInfo.new(150,Enum.EasingStyle.Linear),{CFrame = map.Sky:GetPivot()})
				tween(root,TweenInfo.new(1),{CFrame = prevPos * CFrame.new(0,30,0)}

				repeat
					tween(e.PrimaryPart,TweenInfo.new(5),{CFrame = prevPos})
				until dist(prevPos.Position) <= 10
				wait(1)
				setMobHitbox(mob)
				repeat
					mouse1click()
				until mob.Humanoid.Health == 0
			elseif pdata.Level.Value == 300 and pdata.Level.Value < 325 then
				local mob = ef:FindFirstChild("Military Soldier")
				local prevPos = getMobPrevCFrame(mob)
				tween(root,TweenInfo.new(150,Enum.EasingStyle.Linear),{CFrame = map.Sky:GetPivot()})
				tween(root,TweenInfo.new(1),{CFrame = prevPos * CFrame.new(0,30,0)}

				repeat
					tween(e.PrimaryPart,TweenInfo.new(5),{CFrame = prevPos})
				until dist(prevPos.Position) <= 10
				wait(1)
				setMobHitbox(mob)
				repeat
					mouse1click()
				until mob.Humanoid.Health == 0
			end
		end
	end
	
end

coroutine.wrap(load)()
coroutine.wrap(VXLGBSH_fake_script)()
