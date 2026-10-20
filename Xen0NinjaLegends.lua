local Rayfield = loadstring(game:HttpGet("https://sirius.menu/gen2"))()

local window = Rayfield:CreateWindow({
    name = "Xeno GUI",
    subtitle = "Ninja Legends",
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

tab:CreateButton({
    name = "Inf Coins",
    callback = function()
        local gui2 = Instance.new("ScreenGui")

gui2.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local gui2Frame = Instance.new("Frame")

gui2Frame.Size = UDim2.new(0, 180, 0, 220)

gui2Frame.Position = UDim2.new(0.05, 0, 0.05, 0)

gui2Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

gui2Frame.Active = true

gui2Frame.Draggable = true

gui2Frame.Parent = gui2

local gui2Title = Instance.new("TextLabel")

gui2Title.Size = UDim2.new(1, 0, 0, 18)

gui2Title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

gui2Title.Text = "Ninja Legends OP GUI"

gui2Title.TextColor3 = Color3.fromRGB(255, 255, 255)

gui2Title.TextSize = 10

gui2Title.Parent = gui2Frame

local toggleButton = Instance.new("TextButton")

toggleButton.Size = UDim2.new(1, -10, 0, 20)

toggleButton.Position = UDim2.new(0, 5, 0, 30)

toggleButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)

toggleButton.Text = "Toggle Master Elements"

toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)

toggleButton.TextSize = 10

toggleButton.Parent = gui2Frame

local startButton = Instance.new("TextButton")

startButton.Size = UDim2.new(1, -10, 0, 20)

startButton.Position = UDim2.new(0, 5, 0, 55)

startButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)

startButton.Text = "Start"

startButton.TextColor3 = Color3.fromRGB(255, 255, 255)

startButton.TextSize = 10

startButton.Parent = gui2Frame

startButton.MouseButton1Click:Connect(function()

local args = {

[1] = "convertGems",

[2] = -9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999

}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("zenMasterEvent"):FireServer(unpack(args))

end)

local numberEntry = Instance.new("TextBox")

numberEntry.Size = UDim2.new(1, -20, 0, 25)

numberEntry.Position = UDim2.new(0, 10, 0, 80)

numberEntry.BackgroundColor3 = Color3.fromRGB(80, 80, 80)

numberEntry.Text = "Enter number"

numberEntry.TextColor3 = Color3.fromRGB(255, 255, 255)

numberEntry.TextSize = 10

numberEntry.ClearTextOnFocus = true

numberEntry.Parent = gui2Frame

local submitButton = Instance.new("TextButton")

submitButton.Size = UDim2.new(1, -20, 0, 25)

submitButton.Position = UDim2.new(0, 10, 0, 110)

submitButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)

submitButton.Text = "Submit"

submitButton.TextColor3 = Color3.fromRGB(255, 255, 255)

submitButton.TextSize = 10

submitButton.Parent = gui2Frame

submitButton.MouseButton1Click:Connect(function()

local num = tonumber(numberEntry.Text)

if num and num > 0 and num <= 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 then

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("zenMasterEvent"):FireServer("convertGems", num)

else

numberEntry.Text = "Number too big!"

end

end)

local masterGui = Instance.new("ScreenGui")

masterGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

masterGui.Enabled = false

local masterFrame = Instance.new("Frame")

masterFrame.Size = UDim2.new(0, 250, 0, 400)

masterFrame.Position = UDim2.new(0.2, 0, 0.2, 0)

masterFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

masterFrame.BackgroundTransparency = 0.5

masterFrame.Active = true

masterFrame.Draggable = true

masterFrame.Parent = masterGui

local masterTitle = Instance.new("TextLabel")

masterTitle.Size = UDim2.new(1, 0, 0, 30)

masterTitle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

masterTitle.Text = "Master Elements"

masterTitle.TextColor3 = Color3.fromRGB(255, 255, 255)

masterTitle.TextSize = 14

masterTitle.Parent = masterFrame

local scrollFrame = Instance.new("ScrollingFrame")

scrollFrame.Size = UDim2.new(1, 0, 1, -30)

scrollFrame.Position = UDim2.new(0, 0, 0, 30)

scrollFrame.CanvasSize = UDim2.new(0, 0, 0, 400) -- Allows scrolling

scrollFrame.ScrollBarThickness = 5

scrollFrame.BackgroundTransparency = 1

scrollFrame.Parent = masterFrame

local elements = {

"Shadow Charge",

"Electral Chaos",

"Blazing Entity",

"Shadowfire",

"Lightning",

"Masterful Wrath",

"Inferno",

"Eternity Storm",

"Frost"

}

for i, element in ipairs(elements) do

local button = Instance.new("TextButton")

button.Size = UDim2.new(1, -20, 0, 30)

button.Position = UDim2.new(0, 10, 0, (i - 1) * 35)

button.BackgroundColor3 = Color3.fromRGB(100, 100, 100)

button.Text = "Master " .. element

button.TextColor3 = Color3.fromRGB(255, 255, 255)

button.TextSize = 10

button.Parent = scrollFrame  

button.MouseButton1Click:Connect(function()  

    game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("elementMasteryEvent"):FireServer(element)  

end)

end


toggleButton.MouseButton1Click:Connect(function()

masterGui.Enabled = not masterGui.Enabled

end)
})

tab:CreateButton({
    name = "CHI Farm GUI"
    callback = function()
        local library = loadstring(game:HttpGet("https://pastebin.com/raw/TYpU89g4", true))()
            library.options.underlinecolor = "rainbow"

        local main = library:CreateWindow('Farms')

        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer

        -- @treturn Part or nil
        local function GetFromCharacter(Name)
        local Character = Player.Character or Player.CharacterAdded:Wait()
        local Part = Character:FindFirstChild(Name) or Character:WaitForChild(Name, 10)

        return Part
        end

        local function Touch(Parent, ChildName)
        local TouchPart = Parent:FindFirstChild(ChildName)

        if TouchPart then
        local HumanoidRootPart = GetFromCharacter("HumanoidRootPart")
        if not HumanoidRootPart then return end
        if firetouchinterest then
          firetouchinterest(HumanoidRootPart, TouchPart, 0)
          firetouchinterest(HumanoidRootPart, TouchPart, 1)
        else
          TouchPart.CFrame = HumanoidRootPart.CFrame
            end
          end
        end

        local function CollectOpStuff()
        local Parts = workspace.Hoops:GetChildren()

        for _, v in ipairs(Parts) do
        if not v:FindFirstChild("Cooldown") then
        Touch(v, "touchPart")
            end
          end
        end

        local function ToggleGUI(To)
      local Guis = {Player.PlayerGui.statEffectsGui, Player.PlayerGui.hoopGui}

      for _, v in ipairs(Guis) do
        if v.Enabled ~= To then
          v.Enabled = not v.Enabled
            end
          end
        end

        ToggleGUI(false)

        main:Toggle("Auto Chest", {flag = "AutoChest"}, function(toggle)
      if _G.Swing then _G.Swing:Disconnect() end
      local Chests = {"goldenChest","enchantedChest","magmaChest","mythicalChest","legendsChest"}

      if toggle then
        _G.Swing = RunService.Heartbeat:Connect(function()
          for _, v in ipairs(Chests) do
            local Chest = workspace:FindFirstChild(v)

            if Chest then
              Touch(Chest, "circleInner")
                end
              end
            end)
          end
        end)

        main:Toggle("Op Chi Farm", {flag = "OpFarm"}, function(toggle)
        if _G.CollectorOP then _G.CollectorOP:Disconnect() end

      if toggle then
        _G.CollectorOP = RunService.Heartbeat:Connect(CollectOpStuff)
            end
        end)
    end
})

tab:CreateButton({
    name = "Unlock All Islands"
    callback = function()
		loadstring(game:HttpGet(("https://raw.githubusercontent.com/danielgamer9799/Dans-Official/main/Visuals/ClonedStuff/NINJALEGENDSUNLOCKALL.lua")))()
})
window:Notify({
    title = "Xen0 GUI",
    content = "by @blixxARSENAL",
    duration = 5,
})
