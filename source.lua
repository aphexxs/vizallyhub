    -- vizally
if game.PlaceId == 379614936 or 860428890 or 5122567177 or 5006801542 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("vizally", "Serpent")
    local Assassin = Window:NewTab("Assassin")
    local Visuals = Window:NewTab("Visuals")
    local LocalPlayer = Window:NewTab("Local Player")
    local Extras = Window:NewTab("Extras")
    local Credits = Window:NewTab("Credits")
    local Misc = Window:NewTab("Misc")
    local AssassinSection = Assassin:NewSection("Auras")
    local VisualsSection = Visuals:NewSection("Visuals")
    local LocalPlayerSection = LocalPlayer:NewSection("Local Player")
    local ExtrasSection = Extras:NewSection("Extras")
    local CreditsSection = Credits:NewSection("Credits")
    local MiscSection = Misc:NewSection("Miscs")

    -- Auras
    AssassinSection:NewButton("Silent Aim", "Kills your target without aiming at them.", function()
        print("Clicked")
        local AssassinSection = loadstring(game:HttpGet("https://raw.githubusercontent.com/aphexxs/silent/main/source"))()
    end)
    AssassinSection:NewButton("Stab Aura (Target)", "Go near your target and just stab.", function()
        print("Clicked")
    end)

    -- Visuals
    VisualsSection:NewButton("ESP", "Lets you find players through walls.", function()
        print("Clicked")
        local VisualsSection = loadstring(game:HttpGet("https://raw.githubusercontent.com/aphexxs/espp/main/source"))()
    end)

    -- LocalPlayer
    LocalPlayerSection:NewToggle("AntiAfk", "Prevents you from disconnecting while AFKing.", function(state)
        if state then
            print("Toggle On")
        else
            print("Toggle Off")
        end
        loadstring(game:HttpGet("https://raw.githubusercontent.com/aphexxs/antiafk/main/source"))()
    end)
    LocalPlayerSection:NewSlider("Walkspeed", "Changes your walkspeed.", 500, 16, function(s) -- 500 (MaxValue) | 20 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)
    LocalPlayerSection:NewSlider("Jump Power", "Changes your jump power.", 250, 50, function(s) -- 250 (MaxValue) | 50 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)
    LocalPlayerSection:NewButton("Infinite Jump", "Makes you jump higher and higher.", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/aphexxs/infjump/main/source"))()
    end)

    -- Extras
    ExtrasSection:NewButton("Full Bright", "Makes the whole game full bright.", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/aphexxs/fullbright/main/source"))()
    end)
    ExtrasSection:NewButton("CMD-X Admin", "Loads in CMD-X Admin.", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
    end)
    ExtrasSection:NewButton("Reviz Admin", "Loads in Reviz Admin", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/aphexxs/revizadmin/main/source"))()
    end)

    -- Credits
    CreditsSection:NewLabel("Discord: jxlo#0001")

    --Miscs
    MiscSection:NewKeybind("UI Toggle", "Changes the key to open/close the UI.", Enum.KeyCode.F, function()
        Library:ToggleUI()
    end)
end
