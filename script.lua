local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Xyris Hub - Free Ugc Punchers Simulator",
    Subtitle = "Made By Xyris Hub Team",
    TabWidth = 180,
    Theme = "Dark",
    Acrylic = true,
})

local CreditsTab = Window:CreateTab("Credits")
CreditsTab:CreateParagraph({
    Title = "Made By Xyris Hub Team",
    Content = "Click the button below to copy our Discord invite link."
})

CreditsTab:CreateButton({
    Name = "Copy Discord Invite Link",
    Callback = function()
        setclipboard("https://discord.gg/3WtS2F7CaX")
        Rayfield:Notify("Copied!", "Discord invite link has been copied to your clipboard.")
    end
})

local FarmTab = Window:CreateTab("Farm")
FarmTab:CreateToggle({
    Name = "Auto Punch",
    Callback = function()
        local args = { "S_Toolbar_Toggle_Power", { "Punch" } }
        game:GetService("ReplicatedStorage").Common.Library.Network.RemoteEvent:FireServer(unpack(args))

        while wait(0.5) do
            local punchArgs = { "S_Power_Click", { Vector3.new(-5380.91, -141.71, 1744.43) } }
            game:GetService("ReplicatedStorage").Common.Library.Network.RemoteFunction:InvokeServer(unpack(punchArgs))
        end
    end
})

FarmTab:CreateToggle({
    Name = "Auto Rebirth",
    Callback = function()
        while wait(1) do
            local rebirthArgs = { "S_Rebirth_Request", {} }
            game:GetService("ReplicatedStorage").Common.Library.Network.RemoteFunction:InvokeServer(unpack(rebirthArgs))
        end
    end
})

FarmTab:CreateToggle({
    Name = "Auto Spin",
    Callback = function()
        while wait(1) do
            local spinArgs = { "S_Wheel_Spin_Confirm", { "bcd90368-b8a7-4b53-9391-6a673e3898d8" } }
            game:GetService("ReplicatedStorage").Common.Library.Network.RemoteFunction:InvokeServer(unpack(spinArgs))
        end
    end
})

local UpgradeTab = Window:CreateTab("Upgrades")

UpgradeTab:CreateToggle({
    Name = "Auto Upgrade Player Speed",
    Callback = function(enabled)
        while enabled and wait(1) do
            local args = { "S_Upgrade_Request", { "1" } }
            game:GetService("ReplicatedStorage").Common.Library.Network.RemoteFunction:InvokeServer(unpack(args))
        end
    end
})

UpgradeTab:CreateToggle({
    Name = "Auto Upgrade Gem Multiplier",
    Callback = function(enabled)
        while enabled and wait(1) do
            local args = { "S_Upgrade_Request", { "2" } }
            game:GetService("ReplicatedStorage").Common.Library.Network.RemoteFunction:InvokeServer(unpack(args))
        end
    end
})

UpgradeTab:CreateToggle({
    Name = "Auto Upgrade Pet Equip",
    Callback = function(enabled)
        while enabled and wait(1) do
            local args = { "S_Upgrade_Request", { "3" } }
            game:GetService("ReplicatedStorage").Common.Library.Network.RemoteFunction:InvokeServer(unpack(args))
        end
    end
})

UpgradeTab:CreateToggle({
    Name = "Auto Upgrade Strength Multiplier",
    Callback = function(enabled)
        while enabled and wait(1) do
            local args = { "S_Upgrade_Request", { "4" } }
            game:GetService("ReplicatedStorage").Common.Library.Network.RemoteFunction:InvokeServer(unpack(args))
        end
    end
})
