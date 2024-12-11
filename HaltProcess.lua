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
end)
