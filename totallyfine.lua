local function create()
	local Jumpscare = Instance.new("ScreenGui")
	local ImageLabel = Instance.new("ImageLabel")
	local Sound = Instance.new("Sound")

	Jumpscare.Name = "Jumpscare"
	Jumpscare.Parent = game.CoreGui
	Jumpscare.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Jumpscare.IgnoreGuiInset = true

	ImageLabel.Parent = Jumpscare
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
	ImageLabel.Size = UDim2.new(1, 0, 1, 0)
	ImageLabel.Image = "rbxassetid://1243374078"
	
	Sound.SoundId = "rbxassetid://5710016194"
	Sound.Volume = 10
	Sound.Parent = Jumpscare
	
	Sound:Play()
end

task.wait(5)
create()
task.wait(2.856)
game.Players.LocalPlayer:Kick("April Fooled!")
