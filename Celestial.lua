local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "CELESTIAL", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
    Name = "main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "movement"
})

OrionLib:MakeNotification({
    Name = "Smertnix",
    Content = "<3",
    Image = "rbxassetid://4483345998",
    Time = 5
})

Tab:AddButton({
    Name = "inf yield",
    Callback = function()

    end
})

