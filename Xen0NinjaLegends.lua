local Xen0UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/010110000110010101101110001/0111001101100101011000110111001001100101011101000110001001101100011010010011100110110010101100010110/10101100011011100100110010101110100011000100110110001101001001110011011001010110001011001110011011001010110001101110010011001010111010001100010011011000110100100111001101100101011000101100111001101100101011000110111001001100/UIUIUI0111001101100101011000110111001001100101011101000110001001101100011010010011100110110010101100010110.lua"))()

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

Tab:AddButton({
	Name = "Inf Coins",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/xenowebo/lua/main/Xen0Ninja1.lua"))()
  	end    
})

Tab:AddButton({
	Name = "CHI Farm GUI",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xenowebo/lua/main/Xen0Ninja2.lua"))()
  	end    
})

Tab:AddButton({
	Name = "Unlock All Islands",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xenowebo/lua/main/Xen0Ninja3.lua"))()
  	end    
})

Xen0UI:MakeNotification({
	Name = "Xen0 UI",
	Content = "made by blixxARSENAL",
	Image = "rbxassetid://4483345998",
	Time = 5
})
