local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Patskorn/GUI/main/Daino.lua"))()
local idk = GUI:new()
local win = idk:Tap("CELESTIAL")

-- Получаем основное меню
local mainFrame = win.Frame
local screenGui = mainFrame.Parent

-- Создаём кнопку "Выход"
local exitButton = Instance.new("TextButton")
exitButton.Size = UDim2.new(0, 100, 0, 30)
exitButton.Position = UDim2.new(0, 10, 1, -40) -- Внизу экрана
exitButton.Text = "Выход"
exitButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
exitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
exitButton.Parent = screenGui

-- Переменные для перемещения
local dragging = false
local dragStart, startPos

-- Переменная для сворачивания
local isCollapsed = false
local originalSize = mainFrame.Size
local collapsedSize = UDim2.new(0, 50, 0, 50)

-- Функция перемещения меню
mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

mainFrame.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        mainFrame.Position = UDim2.new(
                startPos.X.Scale,
                startPos.X.Offset + delta.X,
                startPos.Y.Scale,
                startPos.Y.Offset + delta.Y
        )
    end
end)

-- Функция сворачивания/разворачивания меню
exitButton.MouseButton1Click:Connect(function()
    if isCollapsed then
        mainFrame.Size = originalSize
        mainFrame.Visible = true
    else
        mainFrame.Size = collapsedSize
        mainFrame.Visible = false
    end
    isCollapsed = not isCollapsed
end)

-- Элементы интерфейса
win:Button("button", function()
    print("Нажата кнопка!")
end)

win:Label("main")

win:Toggle("toggle", false, function(state)
    print("Состояние переключателя:", state)
end)

-- Слайдер
win:Slider("Slider", 0, 1000, 400, function(value)
    print("Слайдер значение:", value)
end)

-- Логика для работы слайдера на телефоне
local sliderFrame = mainFrame:FindFirstChild("Slider")
if sliderFrame then
    local draggingSlider = false

    sliderFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            draggingSlider = true
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    draggingSlider = false
                end
            end)
        end
    end)

    sliderFrame.InputChanged:Connect(function(input)
        if draggingSlider and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local sliderPosition = input.Position.X - sliderFrame.AbsolutePosition.X
            local sliderWidth = sliderFrame.AbsoluteSize.X
            local normalizedValue = math.clamp(sliderPosition / sliderWidth, 0, 1)
            local finalValue = math.floor(normalizedValue * 1000)
            print("Слайдер значение (с телефона):", finalValue)
        end
    end)
end

win:Dropdown("dropdown", {"Option 1", "Option 2", "Option 3", "Option 4", "Option 5"}, function(selectedOption)
    print("Выбранный вариант:", selectedOption)
end)