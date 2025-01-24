-- Создание GUI
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Button1 = Instance.new("TextButton")
local Button2 = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")
local MinimizeButton = Instance.new("TextButton") -- Кнопка "Свернуть"
local CelestialLabel = Instance.new("TextLabel") -- Текст "CELESTIAL"

-- Настройка GUI
ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.Size = UDim2.new(0, 250, 0, 200)
Frame.Position = UDim2.new(0.5, -125, 0.5, -100)
Frame.BorderSizePixel = 0

Title.Parent = Frame
Title.Text = "Меню"
Title.Size = UDim2.new(1, 0, 0.2, 0)
Title.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Title.BackgroundTransparency = 0.5 -- Полупрозрачность
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 18

-- Добавляем текст "CELESTIAL"
CelestialLabel.Parent = Title
CelestialLabel.Text = "CELESTIAL"
CelestialLabel.Size = UDim2.new(1, 0, 1, 0)
CelestialLabel.BackgroundTransparency = 1 -- Прозрачный фон
CelestialLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- Белый текст
CelestialLabel.Font = Enum.Font.SourceSansBold
CelestialLabel.TextSize = 24
CelestialLabel.TextYAlignment = Enum.TextYAlignment.Top -- Выравнивание по верхнему краю

Button1.Parent = Frame
Button1.Text = "Приветствие"
Button1.Size = UDim2.new(0.8, 0, 0.2, 0)
Button1.Position = UDim2.new(0.1, 0, 0.3, 0)
Button1.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
Button1.TextColor3 = Color3.fromRGB(255, 255, 255)
Button1.Font = Enum.Font.SourceSans
Button1.TextSize = 16

Button2.Parent = Frame
Button2.Text = "Действие"
Button2.Size = UDim2.new(0.8, 0, 0.2, 0)
Button2.Position = UDim2.new(0.1, 0, 0.55, 0)
Button2.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
Button2.TextColor3 = Color3.fromRGB(255, 255, 255)
Button2.Font = Enum.Font.SourceSans
Button2.TextSize = 16

CloseButton.Parent = Frame
CloseButton.Text = "Закрыть"
CloseButton.Size = UDim2.new(0.8, 0, 0.2, 0)
CloseButton.Position = UDim2.new(0.1, 0, 0.8, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 69, 58)
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Font = Enum.Font.SourceSans
CloseButton.TextSize = 16

-- Добавляем кнопку "Свернуть"
MinimizeButton.Parent = Title
MinimizeButton.Text = "_"
MinimizeButton.Size = UDim2.new(0.1, 0, 0.8, 0)
MinimizeButton.Position = UDim2.new(0.9, -5, 0.1, 0)
MinimizeButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.Font = Enum.Font.SourceSansBold
MinimizeButton.TextSize = 18
MinimizeButton.BorderSizePixel = 0

-- Переменная для состояния "свернуто/развернуто"
local isMinimized = false

-- Функция для сворачивания/разворачивания меню
MinimizeButton.MouseButton1Click:Connect(function()
    if isMinimized then
        -- Разворачиваем меню
        Frame.Size = UDim2.new(0, 250, 0, 200)
        Button1.Visible = true
        Button2.Visible = true
        CloseButton.Visible = true
        isMinimized = false
    else
        -- Сворачиваем меню
        Frame.Size = UDim2.new(0, 250, 0, 50)
        Button1.Visible = false
        Button2.Visible = false
        CloseButton.Visible = false
        isMinimized = true
    end
end)

-- Функции кнопок
Button1.MouseButton1Click:Connect(function()
    print("Привет! Это твоё меню!")
end)

Button2.MouseButton1Click:Connect(function()
    print("Выполняем действие... (тут можно вставить код)")
end)

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy() -- Закрываем меню
end)