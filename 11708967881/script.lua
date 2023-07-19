
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local isRunning = false
local isYeeting = false





local Window = OrionLib:MakeWindow({Name = "Project Aura | Yeet A Friend", IntroText = "Project Aura | Yeet A Friend", IntroIcon = "rbxassetid://14115234223", Icon = "rbxassetid://14115234223"})
OrionLib:MakeNotification({
	Name = "INJECTED",
	Content = "Succesfully Injected Project Aura",
	Image = "rbxassetid://14115234223",
	Time = 5
})




local Main = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Auto = Window:MakeTab({
	Name = "Auto",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local player = Window:MakeTab({
	Name = "Local Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Auto:AddToggle({
    Name = "Auto Stars",
    Default = false,
    Callback = function(Value)
        if Value then
            isRunning = true  -- Start the loop
            while isRunning do  -- Check loop state
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
        else
            isRunning = false
        end
    end
})

Auto:AddToggle({
	Name = "Auto Yeet",
	Default = false,
	Callback = function(AutoYeet)
      if AutoYeet then
          isYeeting = true
          while isYeeting do
              local TweenService = game:GetService("TweenService")

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local targetCFrame = CFrame.new(-98.7514343, 7.85761452, -110.194984, 0.0419331416, 7.1332444e-08, -0.999120414, -1.95124752e-08, 1, 7.05762986e-08, 0.999120414, 1.65358252e-08, 0.0419331416)

local tweenInfo = TweenInfo.new(
    1,
    Enum.EasingStyle.Linear, -- Easing style
    Enum.EasingDirection.Out, -- Easing direction
    0, -- Number of times to repeat (0 means no repeat)
    false, -- Reverses the tween if true
    0 -- Delay before starting the tween
)

local tween = TweenService:Create(humanoidRootPart, tweenInfo, {CFrame = targetCFrame})

tween:Play()
wait(2)
while true do
    game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Throw"):WaitForChild("Server"):WaitForChild("Request"):FireServer()
    wait(1)
    end

      end
      end
	end    
})


player:AddSlider({
	Name = "Walkspeed",
	Min = 0,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Walkspeed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

player:AddSlider({
	Name = "Jump Power",
	Min = 0,
	Max = 500,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Jump Power",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

