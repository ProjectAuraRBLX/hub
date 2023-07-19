while true do
    local player = game.Players.LocalPlayer
local humanoid = player.Character.Humanoid



for _, v in pairs(game:GetService("Workspace").Stars:GetChildren()) do
    if v:IsA("Model") then
        local starPart = v.PrimaryPart
        if starPart then
            humanoid:ChangeState(Enum.HumanoidStateType.Physics)
            humanoid.PlatformStand = true
            humanoid.RootPart.CFrame = starPart.CFrame
            humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            humanoid.PlatformStand = false
        end
    end
end
wait(0.1)
    end
