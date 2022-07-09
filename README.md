# Cryptic
Note : this ui library made by mech#0945 And its similar to Kavo UI

# Colors
Available UI Colors :
- Blood
- Ocean
- Blue
- Green

# Source
```lua
https://raw.githubusercontent.com/Brineeee/Cryptic/main/Source
```

# Library
```lua
local Library = loadstring(game:HttpGet"https://raw.githubusercontent.com/Brineeee/Cryptic/main/Source")() 
```

# Window & Tabs
```lua
local win = Library:Window("Example", "Blood") -- or Blue, Green, Ocean
local tab = win:Tab("Pog Tab")
```

## Functions
```lua
Tab1:Button("Spawn KeyBind", function()
   Library:EasyToggle("Z")
end) 

Tab1:Toggle("Print Toggle", function() 
    print("hi") 
end) 

Tab1:Label("Pog Label")
Tab1:Slider("Speed", 1,9,6, function() 
  -- 1 ( Mininum )
  -- 9 ( Max )
  -- 6 ( Start ) 
  print("Speed") 
end) 
Tab1:Textbox("Say Hello", "Type", function() 
   print("Hi") 
end) 
Tab1:Keybind("Toggle UI", Enum.KeyCode.Z, function()
    Library:BindGui()
end)
```
