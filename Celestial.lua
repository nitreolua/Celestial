local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Patskorn/GUI/main/Daino.lua"))()
local idk = GUI:new()
local win = idk:Tap("CELESTIAL")

-- Основное меню
local mainFrame = win.Frame -- Фрейм меню (должен быть связан с твоим GUI)
local exitButton = win:Button("Выход", function() end) -- Кнопка выхода

-- Переменные для перемещения
local dragging = false
local dragStart, startPos

-- Переменная для сворачивания
local isCollapsed = false
local originalSize = mainFrame.Size
local collapsedSize = UDim2.new(0, 50, 0, 50)

-- Функция перемещения
mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
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
    if dragging and (input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement) then
        local delta = input.Position - dragStart
        mainFrame.Position = UDim2.new(
                startPos.X.Scale,
                startPos.X.Offset + delta.X,
                startPos.Y.Scale,
                startPos.Y.Offset + delta.Y
        )
    end
end)

-- Функция сворачивания/разворачивания
exitButton.MouseButton1Click:Connect(function()
    if isCollapsed then
        mainFrame.Size = originalSize
    else
        mainFrame.Size = collapsedSize
    end
    isCollapsed = not isCollapsed
end)

-- Элементы GUI
win:Button("button", function()
    print("WTF")
end)

win:Label("main")

win:Toggle("toggle", false, function(Smentrix)
    print(Smentrix)
end)

-- Обновленный слайдер
win:Slider("Slider", 0, 1000, 400, function(t)
    print(t)
end)

-- Функция для поддержки ввода слайдера на телефоне
local sliderFrame = mainFrame:FindFirstChild("Slider") -- Убедись, что слайдер связан с GUI
local draggingSlider = false

sliderFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        draggingSlider = true
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                draggingSlider = false
            end
        end)
    end
end)

sliderFrame.InputChanged:Connect(function(input)
    if draggingSlider and (input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement) then
        local sliderPosition = input.Position.X - sliderFrame.AbsolutePosition.X
        local sliderWidth = sliderFrame.AbsoluteSize.X
        local value = math.clamp(sliderPosition / sliderWidth, 0, 1) -- Нормализованное значение от 0 до 1
        local finalValue = math.floor(value * (1000 - 0) + 0) -- Пересчет в диапазон слайдера
        print(finalValue) -- Вывод значения
    end
end)

win:Dropdown("dropdown", {"Option 1", "Option 2", "Option 3", "Option 4", "Option 5"}, function(bool)
    print(bool)
end)