local Xen0UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/ui-01/01/01/01.lua"))()

local Window = Xen0UI:MakeWindow({
    Name = "Xen0 UI",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "Xen0Test"
})

local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Scripts"
})

Tab:AddTextbox({
	Name = "Gravity",
	Default = "192.2",
	TextDisappear = true,
	Callback = function(Value)
		workspace.Gravity = Value
	end	  
})

Tab:AddTextbox({
	Name = "Speed",
	Default = "16",
	TextDisappear = true,
	Callback = function(Value)
        local speed = Value

        task.spawn(function()
            while task.wait() do
                pcall(function()
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
                end)
            end
        end)

        end
        end
})

Tab:AddTextbox({
	Name = "Jump Power",
	Default = "50",
	TextDisappear = true,
	Callback = function(Value)
		local player = game.Players.LocalPlayer
        if player and player.Character then
            local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
        humanoid.UseJumpPower = true
        humanoid.JumpPower = Value
        end
        end
	end	  
})

Tab:AddButton({
	Name = "Reset",
	Callback = function()
      		--Gravity Reset
    	workspace.Gravity = 192.2
        
        --Jump Reset
        local player = game.Players.LocalPlayer
        if player and player.Character then
            local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
        humanoid.UseJumpPower = true
        humanoid.JumpPower = 50

        --Speed Reset
        local speed = 16

        task.spawn(function()
            while task.wait() do
                pcall(function()
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
                end)
            end
        end)

        end
        end
  	end    
})

Xen0UI:MakeNotification({
	Name = "Xen0 UI",
	Content = "made by blixxARSENAL",
	Image = "rbxthumb://type=Asset&id=8517942534&w=150&h=150",
	Time = 5
})
