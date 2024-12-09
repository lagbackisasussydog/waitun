local plr = game.Players.LocalPlayer

local gui = Instance.new("ScreenGui",plr.PlayerGui)
local frame = Instance.new("Frame",gui)
local textLabel = Instance.new("TextLabel",frame)

gui.ResetOnSpawn = false

frame.AnchorPoint = Vector2.new(.5,.5)
frame.Size = UDim2.new(0,250,0,100)
frame.Position = UDim2.new(0.5,0,0.5,0)

textLabel.AnchorPoint = Vector2.new(.5,.5)
textLabel.Size = UDim2.new(0,50,0,50)
textLabel.Position = UDim2.new(0.5,0,0.5,0)
textLabel.BackgroundTransparency = 1
textLabel.TextColor3 = Color3.fromRGB(255,255,255)
textLabel.Text = "Go sleep"
