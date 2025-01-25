local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Patskorn/GUI/main/Daino.lua"))()
local idk = GUI:new()
local win = idk:Tap("CELESTIAL")

win:Button("button",function()
    print("WTF")
end)

win:Label("main")

win:Toggle("toggle",false,function(Smertnix)
    print(Smertnix)
end)

win:Slider("Slider",0,1000,400,function(t)
    print(t)
end)

win:Dropdown("dropdown",{"Option 1","Option 2","Option 3","Option 4","Option 5"}, function(bool)
    print(bool)
end)