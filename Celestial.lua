-- Create GUI
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local CelestialLabel = Instance.new("TextLabel") -- Надпись Celestial
local MinimizeButton = Instance.new("TextButton")
local MainButton = Instance.new("TextButton")
local ConfigButton = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")

-- GUI Setup
ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.Size = UDim2.new(0, 300, 0, 250)
Frame.Position = UDim2.new(0.5, -150, 0.5, -125)
Frame.BorderSizePixel = 0

-- Добавляем надпись "CELESTIAL"
CelestialLabel.Parent = Frame
CelestialLabel.Text = "CELESTIAL"
CelestialLabel.Size = UDim2.new(1, 0, 0.15, 0)
CelestialLabel.Position = UDim2.new(0, 0, 0, 0)
CelestialLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CelestialLabel.TextColor3 = Color3.fromRGB(255, 215, 0) -- Золотой цвет для текста
CelestialLabel.Font = Enum.Font.SourceSansBold
CelestialLabel.TextSize = 24
CelestialLabel.TextAlignment = Enum.TextAlignment.Center

Title.Parent = Frame
Title.Text = "Menu"
Title.Size = UDim2.new(1, 0, 0.15, 0)
Title.Position = UDim2.new(0, 0, 0.15, 0)
Title.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 18

MinimizeButton.Parent = Frame
MinimizeButton.Text = "Minimize"
MinimizeButton.Size = UDim2.new(0.3, 0, 0.15, 0)
MinimizeButton.Position = UDim2.new(0.65, 0, 0.85, 0)
MinimizeButton.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
MinimizeButton.TextColor3 = Color3.fromRGB(0, 0, 0)
MinimizeButton.Font = Enum.Font.SourceSans
MinimizeButton.TextSize = 14

MainButton.Parent = Frame
MainButton.Text = "Main"
MainButton.Size = UDim2.new(0.8, 0, 0.2, 0)
MainButton.Position = UDim2.new(0.1, 0, 0.25, 0)
MainButton.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
MainButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MainButton.Font = Enum.Font.SourceSans
MainButton.TextSize = 16

ConfigButton.Parent = Frame
ConfigButton.Text = "Config"
ConfigButton.Size = UDim2.new(0.8, 0, 0.2, 0)
ConfigButton.Position = UDim2.new(0.1, 0, 0.5, 0)
ConfigButton.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
ConfigButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ConfigButton.Font = Enum.Font.SourceSans
ConfigButton.TextSize = 16

CloseButton.Parent = Frame
CloseButton.Text = "Close"
CloseButton.Size = UDim2.new(0.8, 0, 0.2, 0)
CloseButton.Position = UDim2.new(0.1, 0, 0.75, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 69, 58)
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Font = Enum.Font.SourceSans
CloseButton.TextSize = 16

-- Button Actions
MinimizeButton.MouseButton1Click:Connect(function()
    Frame.Visible = false -- Minimizes the frame (hides the menu)
end)

MainButton.MouseButton1Click:Connect(function()
    print("Main option selected!")
    -- Add the main function here
end)

ConfigButton.MouseButton1Click:Connect(function()
    print("Config option selected!")
    -- Add the configuration function here
end)

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy() -- Closes the GUI
end)