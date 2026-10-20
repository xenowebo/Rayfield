local Rayfield = loadstring(game:HttpGet("https://sirius.menu/gen2"))()

local window = Rayfield:CreateWindow({
    name = "Xeno GUI",
    subtitle = "Speed Gravity Jump",
    sidebarLayout = true,
    theme = {
        TabColor = Color3.fromRGB(15, 15, 15), -- Black text
        TabBackground = ColorSequence.new(
            Color3.fromRGB(238, 238, 238), -- Light grey
            Color3.fromRGB(225, 225, 225)  -- Slightly darker grey
        ),
        TabStroke = ColorSequence.new(
            Color3.fromRGB(205, 205, 205), -- Soft grey border
            Color3.fromRGB(185, 185, 185)  -- Subtle darker edge
        ),
    },
})

local tab = window:CreateTab({ name = "Main", icon = 93364949241311 })

tab:CreateInput({
    name = "Gravity",
    numeric = true,
    value = "192.2",
    placeholder = "Enter a number",
    callback = function(text)
        workspace.Gravity = text
    end,
})

tab:CreateInput({
    name = "Jump",
    numeric = true,
    value = "50",
    placeholder = "Enter a number",
    callback = function(text)
        local player = game.Players.LocalPlayer
        if player and player.Character then
            local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
        humanoid.UseJumpPower = true
        humanoid.JumpPower = text
        end
        end
    end,
})

local slider3 = tab:CreateSlider({
    name = "Speed",
    range = { 1, 750 },
    increment = 1,
    value = 16,
    suffix = "studs per sec",
    callback = function(value)
        
    end,
})

tab:CreateInput({
    name = "Jump",
    numeric = true,
    value = "50",
    placeholder = "Enter a number",
    callback = function(text)
        local speed = text

        task.spawn(function()
            while task.wait() do
                pcall(function()
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
                end)
            end
        end)

        end
        end
    end,
})

tab:CreateButton({
    name = "Reset",
    callback = function()
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

window:Notify({
    title = "Xen0 GUI",
    content = "by @blixxARSENAL",
    duration = 5,
})
