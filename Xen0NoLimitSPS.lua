local Services = {
    Players = game:GetService("Players"),
    StarterGui = game:GetService("StarterGui")
}

local Player = Services.Players.LocalPlayer
local Stage, Running = 1, false
local MaxStage = 30

-- GUI ELEMENTS
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local MainCorner = Instance.new("UICorner")
local TitleBar = Instance.new("Frame")
local TitleCorner = Instance.new("UICorner")
local CloseButton = Instance.new("TextButton")
local TitleLabel = Instance.new("TextLabel")
local StageLabel = Instance.new("TextLabel")
local StageBox = Instance.new("TextBox")
local LeftButton = Instance.new("TextButton")
local RightButton = Instance.new("TextButton")
local ToggleButton = Instance.new("TextButton")
local ReopenButton = Instance.new("TextButton")

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

-- MAIN PANEL (GALAXY PURPLE)
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(40, 0, 70)
MainFrame.BorderSizePixel = 0
MainFrame.Size = UDim2.new(0, 220, 0, 130)
MainFrame.Position = UDim2.new(0.5, -110, 0.5, -65)

MainCorner.Parent = MainFrame
MainCorner.CornerRadius = UDim.new(0, 8)

-- TITLE BAR
TitleBar.Parent = MainFrame
TitleBar.BackgroundColor3 = Color3.fromRGB(60, 0, 100)
TitleBar.Size = UDim2.new(1, 0, 0, 28)
TitleBar.BorderSizePixel = 0

TitleCorner.Parent = TitleBar
TitleCorner.CornerRadius = UDim.new(0, 8)

-- TITLE TEXT
TitleLabel.Parent = TitleBar
TitleLabel.BackgroundTransparency = 1
TitleLabel.Position = UDim2.new(0, 8, 0, 0)
TitleLabel.Size = UDim2.new(1, -16, 1, 0)
TitleLabel.Font = Enum.Font.Code
TitleLabel.Text = "Xen0 Orb Farm"
TitleLabel.TextColor3 = Color3.fromRGB(255, 200, 255)
TitleLabel.TextSize = 14
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left

-- CLOSE BUTTON
CloseButton.Parent = TitleBar
CloseButton.BackgroundTransparency = 1
CloseButton.Position = UDim2.new(1, -20, 0, 0)
CloseButton.Size = UDim2.new(0, 20, 1, 0)
CloseButton.Font = Enum.Font.Code
CloseButton.Text = "×"
CloseButton.TextColor3 = Color3.fromRGB(255, 50, 100)
CloseButton.TextSize = 18
CloseButton.AutoButtonColor = false

-- REOPEN BUTTON (HIDDEN)
ReopenButton.Parent = ScreenGui
ReopenButton.Size = UDim2.new(0, 60, 0, 25)
ReopenButton.Position = UDim2.new(0, 25, 0.5, -12)
ReopenButton.BackgroundColor3 = Color3.fromRGB(70, 0, 120)
ReopenButton.BorderSizePixel = 0
ReopenButton.Text = "OPEN"
ReopenButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ReopenButton.TextSize = 13
ReopenButton.Font = Enum.Font.Code
ReopenButton.Visible = false

-- HANDLE CLOSE -> HIDE MAIN
local function HideUI()
    MainFrame.Visible = false
    ReopenButton.Visible = true
end

CloseButton.MouseButton1Click:Connect(HideUI)
CloseButton.TouchTap:Connect(HideUI)

-- REOPEN UI
ReopenButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = true
    ReopenButton.Visible = false
end)

-- DRAGGABLE
local function MakeDraggable(Frame, Bar)
    local UIS = game:GetService("UserInputService")
    local Dragging = false
    local DragStart, StartPos

    Bar.InputBegan:Connect(function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
            Dragging = true
            DragStart = Input.Position
            StartPos = Frame.Position
        end
    end)

    UIS.InputChanged:Connect(function(Input)
        if Dragging and (Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch) then
            local Delta = Input.Position - DragStart
            Frame.Position = UDim2.new(StartPos.X.Scale, StartPos.X.Offset + Delta.X,
                StartPos.Y.Scale, StartPos.Y.Offset + Delta.Y)
        end
    end)

    UIS.InputEnded:Connect(function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
            Dragging = false
        end
    end)
end

MakeDraggable(MainFrame, TitleBar)

-- STAGE LABEL
StageLabel.Parent = MainFrame
StageLabel.Size = UDim2.new(0, 70, 0, 18)
StageLabel.Position = UDim2.new(0, 10, 0, 40)
StageLabel.BackgroundTransparency = 1
StageLabel.Font = Enum.Font.Code
StageLabel.TextSize = 13
StageLabel.TextColor3 = Color3.fromRGB(255, 230, 255)
StageLabel.Text = "Stage:"

-- LEFT BUTTON
LeftButton.Parent = MainFrame
LeftButton.Size = UDim2.new(0, 25, 0, 22)
LeftButton.Position = UDim2.new(0, 85, 0, 38)
LeftButton.Text = "<"
LeftButton.Font = Enum.Font.Code
LeftButton.TextColor3 = Color3.fromRGB(255, 230, 255)
LeftButton.TextSize = 13
LeftButton.BackgroundColor3 = Color3.fromRGB(80, 0, 120)
LeftButton.BorderSizePixel = 0

-- STAGE BOX
StageBox.Parent = MainFrame
StageBox.Size = UDim2.new(0, 50, 0, 22)
StageBox.Position = UDim2.new(0, 115, 0, 38)
StageBox.Text = "1"
StageBox.ClearTextOnFocus = false
StageBox.BackgroundColor3 = Color3.fromRGB(60, 0, 90)
StageBox.BorderSizePixel = 0
StageBox.TextColor3 = Color3.fromRGB(255, 255, 255)
StageBox.Font = Enum.Font.Code
StageBox.TextSize = 13

-- RIGHT BUTTON
RightButton.Parent = MainFrame
RightButton.Size = UDim2.new(0, 25, 0, 22)
RightButton.Position = UDim2.new(0, 175, 0, 38)
RightButton.Text = ">"
RightButton.Font = Enum.Font.Code
RightButton.TextColor3 = Color3.fromRGB(255, 230, 255)
RightButton.TextSize = 13
RightButton.BackgroundColor3 = Color3.fromRGB(80, 0, 120)
RightButton.BorderSizePixel = 0

-- START/STOP
ToggleButton.Parent = MainFrame
ToggleButton.Size = UDim2.new(0, 200, 0, 25)
ToggleButton.Position = UDim2.new(0, 10, 0, 85)
ToggleButton.Text = "Start"
ToggleButton.Font = Enum.Font.Code
ToggleButton.TextSize = 13
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.BackgroundColor3 = Color3.fromRGB(60, 120, 255)
ToggleButton.BorderSizePixel = 0

-- STAGE UPDATE
StageBox.FocusLost:Connect(function()
    local Value = tonumber(StageBox.Text)
    if Value and Value >= 1 and Value <= MaxStage then
        Stage = Value
    else
        StageBox.Text = tostring(Stage)
    end
end)

LeftButton.MouseButton1Click:Connect(function()
    if Stage > 1 then
        Stage = Stage - 1
        StageBox.Text = tostring(Stage)
    end
end)

RightButton.MouseButton1Click:Connect(function()
    if Stage < MaxStage then
        Stage = Stage + 1
        StageBox.Text = tostring(Stage)
    end
end)

-- TELEPORT + ORB COLLECT
local function GetHRP()
    local Char = Player.Character or Player.CharacterAdded:Wait()
    return Char:WaitForChild("HumanoidRootPart")
end

local function Teleport(cf)
    local R = GetHRP()
    if R then R.CFrame = cf end
end

local function CollectOrbs()
    local Boosts = workspace:WaitForChild("Map"):WaitForChild("Stages"):WaitForChild("Boosts")
    local Folder = Boosts:FindFirstChild(tostring(Stage))
    if not Folder then return end

    for _, Model in ipairs(Folder:GetChildren()) do
        for _, Orb in ipairs(Model:GetDescendants()) do
            if not Running then return end
            if Orb:IsA("BasePart") then
                Teleport(Orb.CFrame)
                task.wait(0.25)
            end
        end
    end
end

-- START/STOP BUTTON
ToggleButton.MouseButton1Click:Connect(function()
    Running = not Running

    if Running then
        ToggleButton.Text = "Stop"
        ToggleButton.BackgroundColor3 = Color3.fromRGB(180, 0, 60)

        task.spawn(function()
            while Running do
                CollectOrbs()
                task.wait(0.25)
            end
        end)
    else
        ToggleButton.Text = "Start"
        ToggleButton.BackgroundColor3 = Color3.fromRGB(60, 120, 255)
    end
end)
