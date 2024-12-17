local plr = game.Players.LocalPlayer
local char = plr.Character
local root = char.PrimaryPart
local es = Workspace.Enemies

local tweensvc = game:GetService("TweenService")

local att = Instance.new("Attachment",root)
local align = Instance.new("AlignPosition,att)
align.Mode = Enum.PositionAlignmentMode.OneAttachment
align.Attachment0 = att
align.MaxForce = math.huge
align.MaxVelocity = math.huge
align.Position = root.Position

function tween(inst,info,property)
    local track = tweensvc:Create(inst,info,property)
    track:Play()
    track.Completed:Wait()
    align.Position = root.Position
end

while task.wait(.1) do
    for i,v in pairs(es:GetChildren()) do
	local hum = v.Humanoid
        local eroot = v:FindFirstChild("HumanoidRootPart")

        eroot.Anchored = true
        tween(root,TweenInfo.new(2,Enum.EasingStyle.Linear),{CFrame = eroot.CFrame * CFrame.new(0,30,0)})
        eroot.Size = Vector3.new(50,50,50)
        repeat
            mouse1click()
            game.ReplicatedStorage.Modules.Net["RE/RegisterHit"]:FireServer(v:FindFirstChild("Torso"))
            game.ReplicatedStorage.Modules.Net["RE/RegisterHit"]:FireServer(v:FindFirstChild("LeftHand"))
            game.ReplicatedStorage.Modules.Net["RE/RegisterHit"]:FireServer(v:FindFirstChild("RightHand"))
        until hum.Health == 0
    end
end
