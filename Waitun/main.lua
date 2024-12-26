local function load()
	if game.PlaceId == 2753915549 or game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then
		local iden = identifyexecutor()

		local Main = Instance.new("ScreenGui")
		local Window = Instance.new("Frame")
		local Bars = Instance.new("Frame")
		local UIGradient = Instance.new("UIGradient")
		local Title = Instance.new("TextLabel")
		local Maximize = Instance.new("ImageButton")
		local Close = Instance.new("ImageButton")
		local LevelFunc = Instance.new("TextButton")
		local FruitFunc = Instance.new("TextButton")
		local Panel = Instance.new("Frame")
		local FuncPanel = Instance.new("Folder")
		local AutoFarm = Instance.new("Frame")
		local LevelDisplay = Instance.new("TextLabel")
		local Mode = Instance.new("TextButton")
		local Enabled = Instance.new("TextButton")
		local Text2 = Instance.new("TextLabel")
		local Text1 = Instance.new("TextLabel")
		local Advanced = Instance.new("TextButton")
		local Options = Instance.new("Frame")
		local Bars_2 = Instance.new("Frame")
		local UIGradient_2 = Instance.new("UIGradient")
		local Close_2 = Instance.new("ImageButton")
		local Title_2 = Instance.new("TextLabel")
		local Welcome = Instance.new("TextLabel")
		local Settings = Instance.new("TextButton")
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
		Title.Text = "Waitun - " .. tostring(iden)
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

		FuncPanel.Name = "FuncPanel"
		FuncPanel.Parent = Window

		AutoFarm.Name = "AutoFarm"
		AutoFarm.Parent = FuncPanel
		AutoFarm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		AutoFarm.BackgroundTransparency = 1.000
		AutoFarm.BorderColor3 = Color3.fromRGB(0, 0, 0)
		AutoFarm.BorderSizePixel = 0
		AutoFarm.Position = UDim2.new(0.0444444455, 0, 0.366666675, 0)
		AutoFarm.Size = UDim2.new(0.906666696, 0, 0.563333333, 0)
		AutoFarm.Visible = false

		LevelDisplay.Name = "LevelDisplay"
		LevelDisplay.Parent = AutoFarm
		LevelDisplay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		LevelDisplay.BackgroundTransparency = 0.500
		LevelDisplay.BorderColor3 = Color3.fromRGB(0, 0, 0)
		LevelDisplay.BorderSizePixel = 0
		LevelDisplay.Position = UDim2.new(0.0441176482, 0, 0.745562136, 0)
		LevelDisplay.Size = UDim2.new(0.897058845, 0, 0.165680468, 0)
		LevelDisplay.Font = Enum.Font.SourceSans
		LevelDisplay.Text = "Current level:"
		LevelDisplay.TextColor3 = Color3.fromRGB(255, 255, 255)
		LevelDisplay.TextSize = 14.000

		Mode.Name = "Mode"
		Mode.Parent = AutoFarm
		Mode.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Mode.BackgroundTransparency = 0.500
		Mode.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Mode.BorderSizePixel = 0
		Mode.Position = UDim2.new(0.392156869, 0, 0.319526613, 0)
		Mode.Size = UDim2.new(0.549019635, 0, 0.165680468, 0)
		Mode.Font = Enum.Font.SourceSans
		Mode.Text = "Custom function"
		Mode.TextColor3 = Color3.fromRGB(255, 255, 255)
		Mode.TextSize = 14.000

		Enabled.Name = "Enabled"
		Enabled.Parent = AutoFarm
		Enabled.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		Enabled.BackgroundTransparency = 0.500
		Enabled.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Enabled.BorderSizePixel = 0
		Enabled.Position = UDim2.new(0.392156869, 0, 0.100591719, 0)
		Enabled.Size = UDim2.new(0.549019635, 0, 0.165680468, 0)
		Enabled.Font = Enum.Font.SourceSans
		Enabled.Text = "False"
		Enabled.TextColor3 = Color3.fromRGB(255, 255, 255)
		Enabled.TextSize = 14.000

		Text2.Name = "Text2"
		Text2.Parent = AutoFarm
		Text2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Text2.BackgroundTransparency = 0.500
		Text2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Text2.BorderSizePixel = 0
		Text2.Position = UDim2.new(0.0441176482, 0, 0.319526613, 0)
		Text2.Size = UDim2.new(0.301470578, 0, 0.165680468, 0)
		Text2.Font = Enum.Font.SourceSans
		Text2.Text = "	Attack mode"
		Text2.TextColor3 = Color3.fromRGB(255, 255, 255)
		Text2.TextSize = 14.000
		Text2.TextXAlignment = Enum.TextXAlignment.Left

		Text1.Name = "Text1"
		Text1.Parent = AutoFarm
		Text1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Text1.BackgroundTransparency = 0.500
		Text1.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Text1.BorderSizePixel = 0
		Text1.Position = UDim2.new(0.0441176482, 0, 0.100591719, 0)
		Text1.Size = UDim2.new(0.301470578, 0, 0.165680468, 0)
		Text1.Font = Enum.Font.SourceSans
		Text1.Text = "	Enabled"
		Text1.TextColor3 = Color3.fromRGB(255, 255, 255)
		Text1.TextSize = 14.000
		Text1.TextXAlignment = Enum.TextXAlignment.Left

		Advanced.Name = "Advanced"
		Advanced.Parent = AutoFarm
		Advanced.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Advanced.BackgroundTransparency = 0.500
		Advanced.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Advanced.BorderSizePixel = 0
		Advanced.Position = UDim2.new(0.0441176482, 0, 0.538461566, 0)
		Advanced.Size = UDim2.new(0.897058904, 0, 0.165680468, 0)
		Advanced.Font = Enum.Font.SourceSans
		Advanced.Text = "Advanced options"
		Advanced.TextColor3 = Color3.fromRGB(255, 255, 255)
		Advanced.TextSize = 14.000

		Options.Name = "Options"
		Options.Parent = FuncPanel
		Options.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Options.BackgroundTransparency = 0.500
		Options.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Options.BorderSizePixel = 0
		Options.Position = UDim2.new(0.157777771, 0, 0.0833333358, 0)
		Options.Size = UDim2.new(0, 300, 0, 250)
		Options.Visible = false

		Bars_2.Name = "Bars"
		Bars_2.Parent = Options
		Bars_2.AnchorPoint = Vector2.new(0.5, 0.5)
		Bars_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Bars_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Bars_2.BorderSizePixel = 0
		Bars_2.Position = UDim2.new(0.5, 0, 0.0399999991, 0)
		Bars_2.Size = UDim2.new(0, 300, 0, 25)

		UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(85, 255, 255))}
		UIGradient_2.Rotation = 90
		UIGradient_2.Parent = Bars_2

		Close_2.Name = "Close"
		Close_2.Parent = Bars_2
		Close_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Close_2.BackgroundTransparency = 1.000
		Close_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Close_2.BorderSizePixel = 0
		Close_2.Position = UDim2.new(0.906666696, 0, 0.0399999991, 0)
		Close_2.Size = UDim2.new(0, 24, 0, 24)
		Close_2.Image = "http://www.roblox.com/asset/?id=6031094678"

		Title_2.Name = "Title"
		Title_2.Parent = Bars_2
		Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title_2.BackgroundTransparency = 1.000
		Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title_2.BorderSizePixel = 0
		Title_2.Position = UDim2.new(0.0222223308, 0, 0, 0)
		Title_2.Size = UDim2.new(0, 200, 0, 25)
		Title_2.Font = Enum.Font.SourceSans
		Title_2.Text = "Advanced options"
		Title_2.TextColor3 = Color3.fromRGB(0, 0, 0)
		Title_2.TextSize = 14.000
		Title_2.TextXAlignment = Enum.TextXAlignment.Left

		Welcome.Name = "Welcome"
		Welcome.Parent = Window
		Welcome.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Welcome.BackgroundTransparency = 1.000
		Welcome.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Welcome.BorderSizePixel = 0
		Welcome.Position = UDim2.new(0.0444444455, 0, 0.126666665, 0)
		Welcome.Size = UDim2.new(0, 207, 0, 20)
		Welcome.ZIndex = 0
		Welcome.Font = Enum.Font.SourceSans
		Welcome.Text = "Welcome!"
		Welcome.TextColor3 = Color3.fromRGB(255, 255, 255)
		Welcome.TextScaled = true
		Welcome.TextSize = 14.000
		Welcome.TextWrapped = true
		Welcome.TextXAlignment = Enum.TextXAlignment.Left

		Settings.Name = "Settings"
		Settings.Parent = Window
		Settings.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Settings.BackgroundTransparency = 0.500
		Settings.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Settings.BorderSizePixel = 0
		Settings.Position = UDim2.new(0.519999981, 0, 0.223333329, 0)
		Settings.Size = UDim2.new(0.222222224, 0, 0.0833333358, 0)
		Settings.ZIndex = 0
		Settings.Font = Enum.Font.SourceSans
		Settings.Text = "Settings"
		Settings.TextColor3 = Color3.fromRGB(255, 255, 255)
		Settings.TextSize = 14.000

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

		local function JBABBZC_fake_script() -- Maximize.Handle 
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
		coroutine.wrap(JBABBZC_fake_script)()
		local function ZKSU_fake_script() -- Close.Handle 
			local script = Instance.new('LocalScript', Close)

			local btn = script.Parent
			local frame = btn.Parent.Parent
			local uis = game:GetService("UserInputService")

			btn.MouseButton1Up:Connect(function()
				frame.Parent.Enabled = false
			end)

			uis.InputBegan:Connect(function(inp,proc)
				if proc then return end

				if inp.KeyCode == Enum.KeyCode.LeftAlt then
					frame.Parent.Enabled = true
				end
			end)
		end
		coroutine.wrap(ZKSU_fake_script)()
		local function ODDXCR_fake_script() -- LevelFunc.Pressed 
			local script = Instance.new('LocalScript', LevelFunc)

			local levelpanel = script.Parent.Parent.FuncPanel.AutoFarm
			local btn = script.Parent

			local pressed = false

			btn.MouseButton1Up:Connect(function()
				pressed = not pressed

				if pressed then
					levelpanel.Visible = true
				else
					levelpanel.Visible = false
				end
			end)
		end
		coroutine.wrap(ODDXCR_fake_script)()
		local function TMZFSOV_fake_script() -- Enabled.Pressed 
			local script = Instance.new('LocalScript', Enabled)

			local btn = script.Parent

			local pressed = false

			btn.MouseButton1Up:Connect(function()
				pressed = not pressed

				if pressed then
					btn.Text = "True"
					btn.BackgroundColor3 = Color3.fromRGB(0,255,0)
				else
					btn.Text = "False"
					btn.BackgroundColor3 = Color3.fromRGB(255,0,0)
				end
			end)
		end
		coroutine.wrap(TMZFSOV_fake_script)()
		local function BVBIHW_fake_script() -- Advanced.LocalScript 
			local script = Instance.new('LocalScript', Advanced)

			local frame = script.Parent.Parent.Parent.Options
			local btn = script.Parent


			btn.MouseButton1Up:Connect(function()
				frame.Visible = true
				frame.Parent.Parent.Draggable = false
			end)
		end
		coroutine.wrap(BVBIHW_fake_script)()
		local function BYBYQL_fake_script() -- Close_2.Handle 
			local script = Instance.new('LocalScript', Close_2)

			local btn = script.Parent
			local frame = btn.Parent.Parent

			btn.MouseButton1Up:Connect(function()
				frame.Visible = false
				frame.Parent.Parent.Draggable = true
			end)
		end
		coroutine.wrap(BYBYQL_fake_script)()
		local function ZDXU_fake_script() -- Options.Drag 
			local script = Instance.new('LocalScript', Options)

			local frame = script.Parent

			frame.Active = true
			frame.Draggable = true
		end
		coroutine.wrap(ZDXU_fake_script)()
		local function QSXQHKG_fake_script() -- Main.Animate 
			local script = Instance.new('LocalScript', Main)

			local tween = game:GetService("TweenService")
			local frame = script.Parent.Window

			local function create(inst,info,property)
				tween:Create(inst,info,property):Play()
			end

			local notif = script.Parent.Notif

			frame.Welcome.Text = "Welcome! " .. game.Players.LocalPlayer.Name

			frame.Panel.Visible = false
			frame.LevelFunc.Visible = false
			frame.FruitFunc.Visible = false
			frame.Settings.Visible = false
			frame.Welcome.Visible = false

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

			frame.Welcome.Visible = true

			frame.Panel.Visible = true
			frame.LevelFunc.Visible = true
			frame.FruitFunc.Visible = true
			frame.Settings.Visible = true

		end
		coroutine.wrap(QSXQHKG_fake_script)()
		local function EFSUJ_fake_script() -- Main.Drag 
			local script = Instance.new('LocalScript', Main)

			local frame = script.Parent.Window

			task.wait(1.5)
			frame.Active = true
			frame.Draggable = true
		end
		coroutine.wrap(EFSUJ_fake_script)()

		local genv = getgenv() or _G

		local Configs = {
			["AutoGrinder3000"] = {
				["Enabled"] = false,
				["AttackMode"] = "Normal",
				["TweenSpeed"] = 5,
				["CollectSaber"] = true,
				["GrindAllFightingStyle"] = true,
				["Stats"] = {
					["Combat"] = false,
					["Defense"] = false,
					["Sword"] = false,
					["Gun"] = false,
					["Blox Fruit"] = false
				}
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

		if pid == 2753915549 then
			place["First sea"] = true
		elseif pid == 4442272183 then
			place["Second sea"] = true
		elseif pid == 7449423635 then
			place["Third sea"] = true
		end

		local w = workspace
		local p = game.Players.LocalPlayer
		local r = game:GetService("ReplicatedStorage")
		local tw = game:GetService("TweenService")
		local vu = game:GetService("VirtualUser")
		local rs = game:GetService("ReplicatedStorage")

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

		LevelDisplay.Text = "  Current level: " .. tostring(pdata.Level.Value)

		pdata.Level.Changed:Connect(function()
			LevelDisplay.Text = "  Current level: " .. tostring(pdata.Level.Value)
		end)

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

		local function tp(cf : CFrame)
			local region = Region3.new(-cf.Position, cf.Position)

			repeat
				c:PivotTo(cf)
				c:FindFirstChild("Humanoid").Health = 0
			until getMobDistance(region.CFrame.Position) == 0
		end

		LevelFunc.MouseButton1Up:Connect(function()
			Configs.AutoGrinder3000.Enabled = true
			task.spawn(function()
				if place["First sea"] == true then
					if pdata.Level.Value == 1 and pdata.Level.Value < 300 then

						wait(5)

						local mob = ef:FindFirstChild("Sky Bandit")
						local prevPos = getMobPrevCFrame(mob)
						tween(root,TweenInfo.new(1),{CFrame = prevPos * CFrame.new(0,30,0)})

						repeat
							tween(mob.PrimaryPart,TweenInfo.new(5),{CFrame = prevPos})
						until getMobDistance(prevPos.Position) <= 10
						wait(1)
						setMobHitbox(mob)
						repeat
							att()
						until mob.Humanoid.Health == 0

						wait(5)

						local mob2 = ef:FindFirstChild("Dark Master")
						local prevPos = getMobPrevCFrame(mob2)
						tween(root,TweenInfo.new(1),{CFrame = mob2 * CFrame.new(0,30,0)})

						repeat
							tween(mob2.PrimaryPart,TweenInfo.new(5),{CFrame = prevPos})
						until getMobDistance(prevPos.Position) <= 10
						wait(1)
						setMobHitbox(mob2)
						repeat
							att()
						until mob2.Humanoid.Health == 0
					elseif pdata.Level.Value == 300 and pdata.Level.Value < 325 then
						local mob = ef:FindFirstChild("Military Soldier")
						local prevPos = getMobPrevCFrame(mob)
						tween(root,TweenInfo.new(1),{CFrame = prevPos * CFrame.new(0,30,0)})

						repeat
							tween(mob.PrimaryPart,TweenInfo.new(5),{CFrame = prevPos})
						until getMobDistance(prevPos.Position) <= 10
						wait(1)
						setMobHitbox(mob)
						repeat
							att()
						until mob.Humanoid.Health == 0
					end
				end
			end)
		end)

	end
end
return coroutine.wrap(load)()
