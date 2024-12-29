local function load()
	if game.PlaceId == 2753915549 or game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then
		local Waitun = Instance.new("ScreenGui")
		local Windows = Instance.new("Frame")
		local Bar = Instance.new("Frame")
		local Grad = Instance.new("UIGradient")
		local Title = Instance.new("TextLabel")
		local Scroll = Instance.new("ScrollingFrame")
		local List = Instance.new("UIListLayout")
		local AutoFarm = Instance.new("TextButton")
		local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
		local Functions = Instance.new("TextButton")
		local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
		local Settings = Instance.new("TextButton")
		local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
		local Fruits = Instance.new("TextButton")
		local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
		local Shop = Instance.new("TextButton")
		local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
		local Raid = Instance.new("TextButton")
		local UITextSizeConstraint_6 = Instance.new("UITextSizeConstraint")
		local Panels = Instance.new("Folder")
		local WelcomePanel = Instance.new("Frame")
		local Welcome = Instance.new("TextLabel")
		local UITextSizeConstraint_7 = Instance.new("UITextSizeConstraint")
		local Caution = Instance.new("TextLabel")
		local UITextSizeConstraint_8 = Instance.new("UITextSizeConstraint")
		local Text1 = Instance.new("TextLabel")
		local UITextSizeConstraint_9 = Instance.new("UITextSizeConstraint")
		local AutoFarmPanel = Instance.new("Frame")
		local Enable = Instance.new("TextButton")
		local UITextSizeConstraint_10 = Instance.new("UITextSizeConstraint")
		local UIListLayout = Instance.new("UIListLayout")
		local Mode = Instance.new("TextButton")
		local UITextSizeConstraint_11 = Instance.new("UITextSizeConstraint")
		local Kaitun = Instance.new("TextButton")
		local UITextSizeConstraint_12 = Instance.new("UITextSizeConstraint")
		local FunctionPanel = Instance.new("ScrollingFrame")
		local UIListLayout_2 = Instance.new("UIListLayout")
		local ToggleB = Instance.new("TextButton")
		local UITextSizeConstraint_13 = Instance.new("UITextSizeConstraint")
		local AutoChest = Instance.new("TextButton")
		local UITextSizeConstraint_14 = Instance.new("UITextSizeConstraint")
		local AutoFactory = Instance.new("TextButton")
		local UITextSizeConstraint_15 = Instance.new("UITextSizeConstraint")
		local AutoPresent = Instance.new("TextButton")
		local UITextSizeConstraint_16 = Instance.new("UITextSizeConstraint")
		local AutoObservation = Instance.new("TextButton")
		local UITextSizeConstraint_17 = Instance.new("UITextSizeConstraint")
		local Scripts = Instance.new("Folder")
		local Jumpscare = Instance.new("ImageLabel")
		
		--Properties:
		
		Waitun.Name = "Waitun"
		Waitun.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
		Waitun.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		
		Windows.Name = "Windows"
		Windows.Parent = Waitun
		Windows.AnchorPoint = Vector2.new(0.5, 0.5)
		Windows.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Windows.BackgroundTransparency = 0.500
		Windows.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Windows.BorderSizePixel = 0
		Windows.Position = UDim2.new(0.5, 0, 0.5, 0)
		Windows.Size = UDim2.new(0.410209656, 0, 0.639658868, 0)
		
		Bar.Name = "Bar"
		Bar.Parent = Windows
		Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Bar.BackgroundTransparency = 0.500
		Bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Bar.BorderSizePixel = 0
		Bar.Size = UDim2.new(1, 0, 0.116666667, 0)
		
		Grad.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(85, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(44, 131, 131))}
		Grad.Name = "Grad"
		Grad.Parent = Bar
		
		Title.Name = "Title"
		Title.Parent = Bar
		Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title.BackgroundTransparency = 1.000
		Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title.BorderSizePixel = 0
		Title.Position = UDim2.new(0.0224060453, 0, 0.142857149, 0)
		Title.Size = UDim2.new(0.444444448, 0, 0.714285731, 0)
		Title.Font = Enum.Font.Arial
		Title.Text = "<i><b>Waitun</b></i>"
		Title.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title.TextSize = 25.000
		Title.TextWrapped = true
		Title.TextXAlignment = Enum.TextXAlignment.Left
		
		Scroll.Name = "Scroll"
		Scroll.Parent = Windows
		Scroll.Active = true
		Scroll.AnchorPoint = Vector2.new(0.5, 0.5)
		Scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Scroll.BackgroundTransparency = 1.000
		Scroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Scroll.BorderSizePixel = 0
		Scroll.Position = UDim2.new(0.222222224, 0, 0.561666667, 0)
		Scroll.Size = UDim2.new(0.333333343, 0, 0.786666691, 0)
		Scroll.ScrollBarThickness = 0
		
		List.Name = "List"
		List.Parent = Scroll
		List.SortOrder = Enum.SortOrder.LayoutOrder
		List.Padding = UDim.new(0, 5)
		
		AutoFarm.Name = "AutoFarm"
		AutoFarm.Parent = Scroll
		AutoFarm.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
		AutoFarm.BackgroundTransparency = 0.500
		AutoFarm.BorderColor3 = Color3.fromRGB(0, 0, 0)
		AutoFarm.BorderSizePixel = 0
		AutoFarm.Size = UDim2.new(0, 150, 0, 25)
		AutoFarm.Font = Enum.Font.SourceSans
		AutoFarm.Text = "Grinder"
		AutoFarm.TextColor3 = Color3.fromRGB(255, 255, 255)
		AutoFarm.TextScaled = true
		AutoFarm.TextSize = 20.000
		AutoFarm.TextWrapped = true
		
		UITextSizeConstraint.Parent = AutoFarm
		UITextSizeConstraint.MaxTextSize = 20
		
		Functions.Name = "Functions"
		Functions.Parent = Scroll
		Functions.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
		Functions.BackgroundTransparency = 0.500
		Functions.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Functions.BorderSizePixel = 0
		Functions.Position = UDim2.new(0, 0, 0.233050853, 0)
		Functions.Size = UDim2.new(0, 150, 0, 25)
		Functions.Font = Enum.Font.SourceSans
		Functions.Text = "Functions"
		Functions.TextColor3 = Color3.fromRGB(255, 255, 255)
		Functions.TextScaled = true
		Functions.TextSize = 20.000
		Functions.TextWrapped = true
		
		UITextSizeConstraint_2.Parent = Functions
		UITextSizeConstraint_2.MaxTextSize = 20
		
		Settings.Name = "Settings"
		Settings.Parent = Scroll
		Settings.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
		Settings.BackgroundTransparency = 0.500
		Settings.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Settings.BorderSizePixel = 0
		Settings.Size = UDim2.new(0, 150, 0, 25)
		Settings.Font = Enum.Font.SourceSans
		Settings.Text = "Settings"
		Settings.TextColor3 = Color3.fromRGB(255, 255, 255)
		Settings.TextScaled = true
		Settings.TextSize = 20.000
		Settings.TextWrapped = true
		
		UITextSizeConstraint_3.Parent = Settings
		UITextSizeConstraint_3.MaxTextSize = 20
		
		Fruits.Name = "Fruits"
		Fruits.Parent = Scroll
		Fruits.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
		Fruits.BackgroundTransparency = 0.500
		Fruits.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Fruits.BorderSizePixel = 0
		Fruits.Size = UDim2.new(0, 150, 0, 25)
		Fruits.Font = Enum.Font.SourceSans
		Fruits.Text = "Fruits"
		Fruits.TextColor3 = Color3.fromRGB(255, 255, 255)
		Fruits.TextScaled = true
		Fruits.TextSize = 20.000
		Fruits.TextWrapped = true
		
		UITextSizeConstraint_4.Parent = Fruits
		UITextSizeConstraint_4.MaxTextSize = 20
		
		Shop.Name = "Shop"
		Shop.Parent = Scroll
		Shop.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
		Shop.BackgroundTransparency = 0.500
		Shop.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Shop.BorderSizePixel = 0
		Shop.Size = UDim2.new(0, 150, 0, 25)
		Shop.Font = Enum.Font.SourceSans
		Shop.Text = "Shop"
		Shop.TextColor3 = Color3.fromRGB(255, 255, 255)
		Shop.TextScaled = true
		Shop.TextSize = 20.000
		Shop.TextWrapped = true
		
		UITextSizeConstraint_5.Parent = Shop
		UITextSizeConstraint_5.MaxTextSize = 20
		
		Raid.Name = "Raid"
		Raid.Parent = Scroll
		Raid.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
		Raid.BackgroundTransparency = 0.500
		Raid.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Raid.BorderSizePixel = 0
		Raid.Size = UDim2.new(0, 150, 0, 25)
		Raid.Font = Enum.Font.SourceSans
		Raid.Text = "Raid"
		Raid.TextColor3 = Color3.fromRGB(255, 255, 255)
		Raid.TextScaled = true
		Raid.TextSize = 20.000
		Raid.TextWrapped = true
		
		UITextSizeConstraint_6.Parent = Raid
		UITextSizeConstraint_6.MaxTextSize = 20
		
		Panels.Name = "Panels"
		Panels.Parent = Windows
		
		WelcomePanel.Name = "WelcomePanel"
		WelcomePanel.Parent = Panels
		WelcomePanel.AnchorPoint = Vector2.new(0.5, 0.5)
		WelcomePanel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		WelcomePanel.BackgroundTransparency = 0.500
		WelcomePanel.BorderColor3 = Color3.fromRGB(0, 0, 0)
		WelcomePanel.BorderSizePixel = 0
		WelcomePanel.Position = UDim2.new(0.688888907, 0, 0.553333342, 0)
		WelcomePanel.Size = UDim2.new(0.524444461, 0, 0.773333311, 0)
		
		Welcome.Name = "Welcome"
		Welcome.Parent = WelcomePanel
		Welcome.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Welcome.BackgroundTransparency = 1.000
		Welcome.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Welcome.BorderSizePixel = 0
		Welcome.Position = UDim2.new(0.0338983051, 0, 0.0215517245, 0)
		Welcome.Size = UDim2.new(0.97551465, 0, 0.107758619, 0)
		Welcome.Font = Enum.Font.SourceSans
		Welcome.Text = "Welcome!"
		Welcome.TextColor3 = Color3.fromRGB(255, 255, 255)
		Welcome.TextScaled = true
		Welcome.TextSize = 20.000
		Welcome.TextWrapped = true
		Welcome.TextXAlignment = Enum.TextXAlignment.Left
		
		UITextSizeConstraint_7.Parent = Welcome
		UITextSizeConstraint_7.MaxTextSize = 20
		
		Caution.Name = "Caution"
		Caution.Parent = WelcomePanel
		Caution.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Caution.BackgroundTransparency = 1.000
		Caution.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Caution.BorderSizePixel = 0
		Caution.Position = UDim2.new(0.0338983051, 0, 0.12931034, 0)
		Caution.Size = UDim2.new(0.97551465, 0, 0.280172408, 0)
		Caution.Font = Enum.Font.SourceSans
		Caution.Text = "⚠ CAUTION: This script suck. If you use this, go touch grass u loser"
		Caution.TextColor3 = Color3.fromRGB(255, 255, 255)
		Caution.TextScaled = true
		Caution.TextSize = 20.000
		Caution.TextWrapped = true
		Caution.TextXAlignment = Enum.TextXAlignment.Left
		Caution.TextYAlignment = Enum.TextYAlignment.Top
		
		UITextSizeConstraint_8.Parent = Caution
		UITextSizeConstraint_8.MaxTextSize = 20
		
		Text1.Name = "Text1"
		Text1.Parent = WelcomePanel
		Text1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Text1.BackgroundTransparency = 1.000
		Text1.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Text1.BorderSizePixel = 0
		Text1.Position = UDim2.new(0.0381355919, 0, 0.862068951, 0)
		Text1.Size = UDim2.new(0.97551465, 0, 0.107758619, 0)
		Text1.Font = Enum.Font.SourceSans
		Text1.Text = "❤ Make with passion"
		Text1.TextColor3 = Color3.fromRGB(255, 255, 255)
		Text1.TextScaled = true
		Text1.TextSize = 20.000
		Text1.TextWrapped = true
		
		UITextSizeConstraint_9.Parent = Text1
		UITextSizeConstraint_9.MaxTextSize = 20
		
		AutoFarmPanel.Name = "AutoFarmPanel"
		AutoFarmPanel.Parent = Panels
		AutoFarmPanel.AnchorPoint = Vector2.new(0.5, 0.5)
		AutoFarmPanel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		AutoFarmPanel.BackgroundTransparency = 0.500
		AutoFarmPanel.BorderColor3 = Color3.fromRGB(0, 0, 0)
		AutoFarmPanel.BorderSizePixel = 0
		AutoFarmPanel.Position = UDim2.new(0.688888907, 0, 0.553333342, 0)
		AutoFarmPanel.Size = UDim2.new(0.524444461, 0, 0.773333311, 0)
		AutoFarmPanel.Visible = false
		
		Enable.Name = "Enable"
		Enable.Parent = AutoFarmPanel
		Enable.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		Enable.BackgroundTransparency = 0.500
		Enable.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Enable.BorderSizePixel = 0
		Enable.Position = UDim2.new(0.0726297647, 0, 0.0775862038, 0)
		Enable.Size = UDim2.new(0.854467869, 0, 0.107758619, 0)
		Enable.Font = Enum.Font.SourceSans
		Enable.Text = "Disabled"
		Enable.TextColor3 = Color3.fromRGB(255, 255, 255)
		Enable.TextScaled = true
		Enable.TextSize = 20.000
		Enable.TextWrapped = true
		
		UITextSizeConstraint_10.Parent = Enable
		UITextSizeConstraint_10.MaxTextSize = 20
		
		UIListLayout.Parent = AutoFarmPanel
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		UIListLayout.Padding = UDim.new(0, 5)
		
		Mode.Name = "Mode"
		Mode.Parent = AutoFarmPanel
		Mode.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Mode.BackgroundTransparency = 0.500
		Mode.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Mode.BorderSizePixel = 0
		Mode.Position = UDim2.new(0.0726297647, 0, 0.0775862038, 0)
		Mode.Size = UDim2.new(0.854467869, 0, 0.107758619, 0)
		Mode.Font = Enum.Font.SourceSans
		Mode.Text = "Farm mode: Normal"
		Mode.TextColor3 = Color3.fromRGB(255, 255, 255)
		Mode.TextScaled = true
		Mode.TextSize = 20.000
		Mode.TextWrapped = true
		
		UITextSizeConstraint_11.Parent = Mode
		UITextSizeConstraint_11.MaxTextSize = 20
		
		Kaitun.Name = "Kaitun"
		Kaitun.Parent = AutoFarmPanel
		Kaitun.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Kaitun.BackgroundTransparency = 0.500
		Kaitun.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Kaitun.BorderSizePixel = 0
		Kaitun.Position = UDim2.new(0.0726297647, 0, 0.0775862038, 0)
		Kaitun.Size = UDim2.new(0.854467869, 0, 0.107758619, 0)
		Kaitun.Font = Enum.Font.SourceSans
		Kaitun.Text = "Kaitun : ❌"
		Kaitun.TextColor3 = Color3.fromRGB(255, 255, 255)
		Kaitun.TextScaled = true
		Kaitun.TextSize = 20.000
		Kaitun.TextWrapped = true
		
		UITextSizeConstraint_12.Parent = Kaitun
		UITextSizeConstraint_12.MaxTextSize = 20
		
		FunctionPanel.Name = "FunctionPanel"
		FunctionPanel.Parent = Panels
		FunctionPanel.Active = true
		FunctionPanel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		FunctionPanel.BackgroundTransparency = 0.500
		FunctionPanel.BorderColor3 = Color3.fromRGB(0, 0, 0)
		FunctionPanel.BorderSizePixel = 0
		FunctionPanel.Position = UDim2.new(0.426106513, 0, 0.166666672, 0)
		FunctionPanel.Size = UDim2.new(0.52478385, 0, 0.773333311, 0)
		FunctionPanel.Visible = false
		FunctionPanel.CanvasSize = UDim2.new(0, 0, 1.45000005, 0)
		FunctionPanel.ScrollBarThickness = 0
		
		UIListLayout_2.Parent = FunctionPanel
		UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.Padding = UDim.new(0, 5)
		
		ToggleB.Name = "ToggleB"
		ToggleB.Parent = FunctionPanel
		ToggleB.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		ToggleB.BackgroundTransparency = 0.500
		ToggleB.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ToggleB.BorderSizePixel = 0
		ToggleB.Size = UDim2.new(0, 200, 0, 50)
		ToggleB.Font = Enum.Font.SourceSans
		ToggleB.Text = "Robot toggler"
		ToggleB.TextColor3 = Color3.fromRGB(255, 255, 255)
		ToggleB.TextScaled = true
		ToggleB.TextSize = 20.000
		ToggleB.TextWrapped = true
		
		UITextSizeConstraint_13.Parent = ToggleB
		UITextSizeConstraint_13.MaxTextSize = 20
		
		AutoChest.Name = "AutoChest"
		AutoChest.Parent = FunctionPanel
		AutoChest.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		AutoChest.BackgroundTransparency = 0.500
		AutoChest.BorderColor3 = Color3.fromRGB(0, 0, 0)
		AutoChest.BorderSizePixel = 0
		AutoChest.Size = UDim2.new(0, 200, 0, 50)
		AutoChest.Font = Enum.Font.SourceSans
		AutoChest.Text = "Gulp chest"
		AutoChest.TextColor3 = Color3.fromRGB(255, 255, 255)
		AutoChest.TextScaled = true
		AutoChest.TextSize = 20.000
		AutoChest.TextWrapped = true
		
		UITextSizeConstraint_14.Parent = AutoChest
		UITextSizeConstraint_14.MaxTextSize = 20
		
		AutoFactory.Name = "AutoFactory"
		AutoFactory.Parent = FunctionPanel
		AutoFactory.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		AutoFactory.BackgroundTransparency = 0.500
		AutoFactory.BorderColor3 = Color3.fromRGB(0, 0, 0)
		AutoFactory.BorderSizePixel = 0
		AutoFactory.Size = UDim2.new(0, 200, 0, 50)
		AutoFactory.Font = Enum.Font.SourceSans
		AutoFactory.Text = "Deactivate core"
		AutoFactory.TextColor3 = Color3.fromRGB(255, 255, 255)
		AutoFactory.TextScaled = true
		AutoFactory.TextSize = 20.000
		AutoFactory.TextWrapped = true
		
		UITextSizeConstraint_15.Parent = AutoFactory
		UITextSizeConstraint_15.MaxTextSize = 20
		
		AutoPresent.Name = "AutoPresent"
		AutoPresent.Parent = FunctionPanel
		AutoPresent.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		AutoPresent.BackgroundTransparency = 0.500
		AutoPresent.BorderColor3 = Color3.fromRGB(0, 0, 0)
		AutoPresent.BorderSizePixel = 0
		AutoPresent.Size = UDim2.new(0, 200, 0, 50)
		AutoPresent.Font = Enum.Font.SourceSans
		AutoPresent.Text = "Steal Santa's present (no effort)"
		AutoPresent.TextColor3 = Color3.fromRGB(255, 255, 255)
		AutoPresent.TextScaled = true
		AutoPresent.TextSize = 20.000
		AutoPresent.TextWrapped = true
		
		UITextSizeConstraint_16.Parent = AutoPresent
		UITextSizeConstraint_16.MaxTextSize = 20
		
		AutoObservation.Name = "AutoObservation"
		AutoObservation.Parent = FunctionPanel
		AutoObservation.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		AutoObservation.BackgroundTransparency = 0.500
		AutoObservation.BorderColor3 = Color3.fromRGB(0, 0, 0)
		AutoObservation.BorderSizePixel = 0
		AutoObservation.Size = UDim2.new(0, 200, 0, 50)
		AutoObservation.Font = Enum.Font.SourceSans
		AutoObservation.Text = "Ultra instinct"
		AutoObservation.TextColor3 = Color3.fromRGB(255, 255, 255)
		AutoObservation.TextScaled = true
		AutoObservation.TextSize = 20.000
		AutoObservation.TextWrapped = true
		
		UITextSizeConstraint_17.Parent = AutoObservation
		UITextSizeConstraint_17.MaxTextSize = 20
		
		Scripts.Name = "Scripts"
		Scripts.Parent = Waitun
		
		Jumpscare.Name = "Jumpscare"
		Jumpscare.Parent = Waitun
		Jumpscare.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Jumpscare.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Jumpscare.BorderSizePixel = 0
		Jumpscare.Size = UDim2.new(1, 0, 1, 0)
		Jumpscare.Visible = false
		Jumpscare.Image = "rbxassetid://18579103304"
		
		-- Module Scripts:
		
		local fake_module_scripts = {}
		
		do -- Scripts.Kick
			local script = Instance.new('ModuleScript', Scripts)
			script.Name = "Kick"
			local function module_script()
				local kick = {}
				
				function kick.Kick(plr : Player)
					plr:Kick("LOLOLOLOLOOOOOOOLLLLLLLLLLLLLLLLLL")
				end
				
				return kick
				
			end
			fake_module_scripts[script] = module_script
		end
		
		
		-- Scripts:
		
		local function TANKUJ_fake_script() -- Title.Bold 
			local script = Instance.new('LocalScript', Title)
			local req = require
			local require = function(obj)
				local fake = fake_module_scripts[obj]
				if fake then
					return fake()
				end
				return req(obj)
			end
		
			local txt = script.Parent
			
			txt.RichText = true
			txt.Text = "<b><i>Waitun</i></b>"
		end
		coroutine.wrap(TANKUJ_fake_script)()
		local function YZXUNDC_fake_script() -- AutoFarm.Pressed 
			local script = Instance.new('LocalScript', AutoFarm)
			local req = require
			local require = function(obj)
				local fake = fake_module_scripts[obj]
				if fake then
					return fake()
				end
				return req(obj)
			end
		
			local panels = script.Parent.Parent.Parent.Panels
			local btn = script.Parent
			
			local pressed = false
			
			btn.MouseButton1Up:Connect(function()
				pressed = not pressed
				
				panels.WelcomePanel.Visible = false
				panels.AutoFarmPanel.Visible = true
				panels.FunctionPanel.Visible = false
			end)
		end
		coroutine.wrap(YZXUNDC_fake_script)()
		local function ZLIOX_fake_script() -- Functions.Pressed 
			local script = Instance.new('LocalScript', Functions)
			local req = require
			local require = function(obj)
				local fake = fake_module_scripts[obj]
				if fake then
					return fake()
				end
				return req(obj)
			end
		
			local panels = script.Parent.Parent.Parent.Panels
			local btn = script.Parent
			
			local pressed = false
			
			btn.MouseButton1Up:Connect(function()
					panels.WelcomePanel.Visible = false
					panels.AutoFarmPanel.Visible = false
					panels.FunctionPanel.Visible = true
			end)
		end
		coroutine.wrap(ZLIOX_fake_script)()
		local function TDQHL_fake_script() -- Welcome.Display 
			local script = Instance.new('LocalScript', Welcome)
			local req = require
			local require = function(obj)
				local fake = fake_module_scripts[obj]
				if fake then
					return fake()
				end
				return req(obj)
			end
		
			local pname = game.Players.LocalPlayer.Name
			local txt = script.Parent
			
			txt.Text = "Welcome! " .. pname
		end
		coroutine.wrap(TDQHL_fake_script)()
		local function LSIQLL_fake_script() -- Scripts.Drag 
			local script = Instance.new('LocalScript', Scripts)
			local req = require
			local require = function(obj)
				local fake = fake_module_scripts[obj]
				if fake then
					return fake()
				end
				return req(obj)
			end
		
			local frame = script.Parent.Parent.Windows
			
			frame.Active = true
			frame.Draggable = true
		end
		coroutine.wrap(LSIQLL_fake_script)()
		local function EZFR_fake_script() -- Scripts.AnimateOnStartup 
			local script = Instance.new('LocalScript', Scripts)
			local req = require
			local require = function(obj)
				local fake = fake_module_scripts[obj]
				if fake then
					return fake()
				end
				return req(obj)
			end
		
			local tw = game:GetService("TweenService")
			local frame = script.Parent.Parent.Windows
			
			local function tween(inst,prop)
				tw:Create(inst,TweenInfo.new(),prop):Play()
			end
			
			local i = 0
			local title = frame.Bar.Title
			
			title.MaxVisibleGraphemes = 0
			title.TextTransparency = 1
			
			tween(frame.Bar,{Transparency = 0})
			tween(frame.Bar.Grad,{Rotation = 90})
			
			repeat
				for f,l in utf8.graphemes(title.Text) do
					local graphene = title.Text:sub(f,l)
					i += 1
					
					tween(title,{MaxVisibleGraphemes = i,TextTransparency = 0})
					wait(.2)
				end
			until i == title.Text:len()
		end
		coroutine.wrap(EZFR_fake_script)()
		local function LVYMTJW_fake_script() -- Scripts.Minimize 
			local script = Instance.new('LocalScript', Scripts)
			local req = require
			local require = function(obj)
				local fake = fake_module_scripts[obj]
				if fake then
					return fake()
				end
				return req(obj)
			end
		
			local frame = script.Parent.Parent.Windows
			local uis = game:GetService("UserInputService")
			local tw = game:GetService("TweenService")
			
			local pressed = false
			
			local function tween(inst,prop)
				local track = tw:Create(inst,TweenInfo.new(),prop)
				track:Play()
				track.Completed:Wait()
			end
			
			local function ttween(inst,prop)
				local track = tw:Create(inst,TweenInfo.new(.5),prop)
				track:Play()
			end
			
			
			local i = 0
			local title = frame.Bar.Title
			
			uis.InputBegan:Connect(function(i,p)
				if p then return end
				
				if i.KeyCode == Enum.KeyCode.LeftAlt then
					
					pressed = not pressed
					
					if pressed then
						ttween(title,{TextTransparency = 1})
						tween(frame,{Size = UDim2.new(0,450,0,0)})
					else
						ttween(title,{TextTransparency = 0})
						tween(frame,{Size = UDim2.new(0,450,0,320)})
					end
				end
			end)
		end
		coroutine.wrap(LVYMTJW_fake_script)()
		local function DGUKP_fake_script() -- Scripts.Maximize 
			local script = Instance.new('LocalScript', Scripts)
			local req = require
			local require = function(obj)
				local fake = fake_module_scripts[obj]
				if fake then
					return fake()
				end
				return req(obj)
			end
		
			local gui = script.Parent.Parent
			local frame = gui.Windows
			local uis = game:GetService("UserInputService")
			local tw = game:GetService("TweenService")
			
			local pressed = false
			
			local function tween(inst,prop)
				local track = tw:Create(inst,TweenInfo.new(),prop)
				track:Play()
				track.Completed:Wait()
			end
			
			uis.InputBegan:Connect(function(i,p)
				if p then return end
				
				if i.KeyCode == Enum.KeyCode.LeftControl then
					
					pressed = not pressed
					
					if pressed then
						local x = gui.AbsoluteSize.X
						local y = gui.AbsoluteSize.Y
						
						frame.Draggable = false
						frame.Position = UDim2.new(0.5,0,0.5,0)
						tween(frame,{Size = UDim2.new(0,x,0,y)})
					else
						tween(frame,{Size = UDim2.new(0,450,0,320)})
						frame.Draggable = true
					end
				end
			end)
		end
		coroutine.wrap(DGUKP_fake_script)()
		local function QUTRJX_fake_script() -- Scripts.CoreGui 
			local script = Instance.new('LocalScript', Scripts)
			local req = require
			local require = function(obj)
				local fake = fake_module_scripts[obj]
				if fake then
					return fake()
				end
				return req(obj)
			end
		
			local bindable = Instance.new("BindableFunction",script)
			local frame = script.Parent.Parent.Jumpscare
			
			function bindable.OnInvoke()
				wait(5)
				frame.Visible = true
				local sound = Instance.new("Sound",Waitun)
				sound.SoundId = "rbxassetid://314678645"
				sound.Volume = 100
				sound:Play()
				
				wait(2)
				require(script.Parent.Kick).Kick(game.Players.LocalPlayer)
				game.StarterGui:SetCore("SendNotification",{
					Title = "LOL",
					Text = "Get trolled",
					Icon = "rbxassetid://124177754983578"
				})
			end
			
			game.StarterGui:SetCore("SendNotification",{
				Title = "Waitun",
				Text = "Loaded!",
				Callback = bindable,
				Button1 = "Ok",
			})
		end
		coroutine.wrap(QUTRJX_fake_script)()
	end
end
return coroutine.wrap(load)()
