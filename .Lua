local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Cave hub 0.0.1" ,
    SubTitle = "by me",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "rbxassetid://14188381395" }),
}

local Options = Fluent.Options

do
    Fluent:Notify({
        Title = "Notification",
        Content = "Beta Test 0.0.1",
        SubContent = "", -- Optional
        Duration = 8 -- Set to nil to make the notification not disappear
    })
end
--mainTab

Tabs.Main:AddParagraph({
    Title = "AutoFarm",
    Content = "FarmLevelMax(250)⚔️ RefreshWeapon(Bug)".."How to Fix : Close all function And Run Again"
})

local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "AutoFarmLevel", Default = false })

AUTOHAKI = true

Toggle:OnChanged(function(Value)
    AUTOHAKI = Value
    spawn(function()
        while wait(.1) do
			if game.Players.LocalPlayer.PlayerGui.Main.HP.TextLabel.Text == "Health 100/100" and StatsBypass == "Bypassed" then
				StatsBypass = "BypassTP"
			end
        if AUTOHAKI then 
            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                local args = {
                    [1] = "Buso"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
        if AUTOHAKIObs then 
            if game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui") and game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
            else wait(1)
                game:service('VirtualUser'):CaptureController()
                game:service('VirtualUser'):SetKeyDown('0x65')
                wait(2)
                game:service('VirtualUser'):SetKeyUp('0x65')
            end
        end
    end
    end)

--autoFarm
_G.AutoFarm = Value

--tween
function totarget(p)
    local Distance2 = (p.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    local tween_s = game:service"TweenService"
    local info = TweenInfo.new(Distance2/330, Enum.EasingStyle.Linear)
    local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = p})
    tween:Play()
    if Distance2 <= 65 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
    end
end

--FarmLevel

function chacklevel()
    local lv = game:GetService("Players").LocalPlayer.Data.Level.Value
    if lv == 1 or lv <= 9 then
        Mon = "Bandit"
        Title = "Bandit"
        QuestName = "BanditQuest1"
        QuestNumber = 1
        CFrameQuest = CFrame.new(1059.28418, 17.9262562, 1550.18628)
        CFrameMon = CFrame.new(1162.2865, 16.4328423, 1600.68774)
        CFramePuk = CFrame.new(1039.24829, 80.0744324, 1596.09692)
    elseif lv == 10 or lv <= 14 then
        Mon = "Monkey"
        Title = "Monkey"
        QuestName = "JungleQuest"
        QuestNumber = 1
        CFrameQuest = CFrame.new(-1598.91541, 38.4521332, 153.260254)
        CFrameMon = CFrame.new(-1612.93713, 12.0520582, 145.950775)
        CFramePuk = CFrame.new(-1759.55347, 59.9187164, 62.8197403)
    elseif lv == 15 or lv <= 29 then
        Mon = "Gorilla"
        Title = "Gorilla"
        QuestName = "JungleQuest"
        QuestNumber = 2
        CFrameQuest = CFrame.new(-1598.91541, 38.4521332, 153.260254)
        CFrameMon = CFrame.new(-1263.82446, 6.26758528, -528.053467)
        CFramePuk = CFrame.new(-1137.86877, 40.4629402, -520.938171)
    elseif lv == 30 or lv <= 39 then
        Mon = "Pirate"
        Title = "Pirate"
        QuestName = "BuggyQuest1"
        QuestNumber = 1
        CFrameQuest = CFrame.new(-1141.67542, 4.7520504, 3834.17407)
        CFrameMon = CFrame.new(-1114.35535, 13.7520437, 3977.22461)
        CFramePuk = CFrame.new(-1058.9386, 51.7595825, 3981.1748)
        elseif lv == 40 or lv <= 59 then
        Mon = "Brute"
        Title = "Brute"
        QuestName = "BuggyQuest1"
        QuestNumber = 2
        CFrameQuest = CFrame.new(-1141.3114013671875, 5.1520514488220215, 3830.2998046875)
        CFrameMon = CFrame.new(-1135.80712890625, 14.809873580932617, 4294.162109375)
        CFramePuk = CFrame.new(-1121.23511, 60.161232, 4185.79736, -0.283178657, 5.04291719e-08, -0.959067166, -1.78250714e-09, 1, 5.31077902e-08, 0.959067166, 1.67485368e-08, -0.283178657)
    elseif lv == 60 or lv <= 74 then
        Mon = "Desert Bandit"
        Title = "Desert Bandit"
        QuestName = "DesertQuest"
        QuestNumber = 1
        CFrameQuest = CFrame.new(895.8423461914062, 6.438462734222412, 4391.177734375)
        CFrameMon = CFrame.new(929.9849853515625, 6.450509548187256, 4486.75732421875)
        CFramePuk = CFrame.new(857.6968994140625, 20.75884246826172, 4545.390625)
    elseif lv == 75 or lv <= 89 then
        Mon = "Desert Officer"
        Title = "Desert Officer"
        QuestName = "DesertQuest"
        QuestNumber = 2
        CFrameQuest = CFrame.new(895.8423461914062, 6.438462734222412, 4391.177734375)
        CFrameMon = CFrame.new(1620.492919921875, 1.6109551191329956, 4379.02685546875)
        CFramePuk = CFrame.new(1659.47119140625, 9.899896621704102, 4452.79638671875)
    elseif lv == 90 or lv <= 99 then
        Mon = "Snow Bandit"
        Title = "Snow Bandit"
        QuestName = "SnowQuest"
        QuestNumber = 1
        CFrameQuest = CFrame.new(1388.21204, 87.4671631, -1299.09521, 0.253962159, -1.06844674e-07, -0.967214167, 4.247741e-08, 1, -9.9313084e-08, 0.967214167, -1.58629874e-08, 0.253962159)
        CFrameMon = CFrame.new(1316.45398, 87.2727661, -1400.70032, -0.788394272, 9.30540338e-08, 0.61517024, 1.0350697e-07, 1, -1.86122939e-08, -0.61517024, 4.90005831e-08, -0.788394272)
        CFramePuk = CFrame.new(1398.59326, 88.2521515, -1300.65662, 0.0785612166, 5.99522778e-08, 0.99690932, -2.8508758e-08, 1, -5.78915227e-08, -0.99690932, -2.38726177e-08, 0.0785612166)
    elseif lv == 100 or lv <= 119 then
        Mon = "Snowman"
        Title = "Snowman"
        QuestName = "SnowQuest"
        QuestNumber = 2
        CFrameQuest = CFrame.new(1388.21204, 87.4671631, -1299.09521, 0.253962159, -1.06844674e-07, -0.967214167, 4.247741e-08, 1, -9.9313084e-08, 0.967214167, -1.58629874e-08, 0.253962159)
        CFrameMon = CFrame.new(1166.09167, 106.236023, -1529.19336, -0.29366222, 6.83355452e-08, 0.955909252, 3.49340539e-08, 1, -6.07554895e-08, -0.955909252, 1.55521942e-08, -0.29366222)
        CFramePuk = CFrame.new(1200.43103, 144.579529, -1550.20007, -0.974453151, 1.05959099e-08, 0.224590912, 6.85552726e-09, 1, -1.74340098e-08, -0.224590912, -1.54489364e-08, -0.974453151)
    elseif lv == 120 or lv <= 149 then
        Mon = "Chief Petty Officer"
        Title = "Chief Petty Officer"
        QuestName = "MarineQuest2"
        QuestNumber = 1
        CFrameQuest = CFrame.new(-5037.98046875, 28.65203285217285, 4324.41455078125)
        CFrameMon = CFrame.new(-4959.61474609375, 20.65203285217285, 4035.065673828125)
        CFramePuk = CFrame.new(-4907.70458984375, 81.09860229492188, 3872.9306640625)
    elseif lv == 150 or lv <= 174 then
        Mon = "Sky Bandit"
        Title = "Sky Bandit"
        QuestName = "SkyQuest"
        QuestNumber = 1
        CFrameQuest = CFrame.new(-4840.34912109375, 718.1495971679688, -2620.419189453125)
        CFrameMon = CFrame.new(-5009.98291015625, 278.0670471191406, -2848.814697265625)
        CFramePuk = CFrame.new(-4994.17919921875, 345.8211975097656, -2984.7265625)
        elseif lv == 175 or lv <= 249 then
        Mon = "Dark Master"
        Title = "Dark Master"
        QuestName = "SkyQuest"
        QuestNumber = 2
        CFrameQuest = CFrame.new(-4840.34912109375, 718.1495971679688, -2620.419189453125)
        CFrameMon = CFrame.new(-5250.49755859375, 388.6519470214844, -2264.858642578125)
        CFramePuk = CFrame.new(-5154.63671875, 438.51824951171875, -2264.802490234375)
    elseif lv == 250 or lv <= 300 then
        Mon = "Toga Warrior"
        Title = "Toga Warrior"
        QuestName = "ColosseumQuest"
        QuestNumber = 2
        CFrameQuest = CFrame.new(-1579.31005859375, 7.38933801651001, -2985.140869140625)
        CFrameMon = CFrame.new(-1564.34351, 7.44254541, -3233.96729, 0.669978261, 3.01998497e-08, 0.742380679, -1.46881209e-08, 1, -2.74241057e-08, -0.742380679, 7.469378e-09, 0.669978261)
        CFramePuk = CFrame.new(-1554.04688, 39.3598175, -3254.03442, -0.6765908, 5.76182195e-08, -0.736359179, 5.14182013e-08, 1, 3.10027204e-08, 0.736359179, -1.68861085e-08, -0.6765908)
    end
end

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoFarm then
                chacklevel()
               if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
totarget(CFrameQuest)
wait(1)
            local args = {
                [1] = "StartQuest",
                [2] = QuestName,
                [3] = QuestNumber
            }
                
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
            elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    for i,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v.Name == Mon and v2.Name == Mon then
                totarget(v.HumanoidRootPart.CFrame * CFrame.new(0,43,0))
                v.HumanoidRootPart.Size = Vector3.new(60,100,60)
                v.HumanoidRootPart.CFrame = CFrameMon
                v2.HumanoidRootPart.CanCollide = false
                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
            end
        end    
    end
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait(.1) do
        pcall(function()
            if _G.AutoFarm then
                chacklevel()
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, Title) then
                    local args = {
                        [1] = "AbandonQuest"
                    }
                    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
            end
            end)
            end
            end)


spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoFarm then
                chacklevel()
                if not game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                    totarget(CFramePuk)
                end
                end
            end)
        end
    end)



spawn(function()
    while task.wait(.1) do
        pcall(function()
            if _G.AutoFarm then
                chacklevel()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v.Name == Mon then
            if v.Humanoid.Health == 0 then
                v:Destroy()
            end
            end
            end
            end
        end)
    end
end)

--FastAttack
    _G.FastAttack = Value
    _G.FastAttackType = "Normal"

    local ExamList = {}
    
    for i = 1, 30 do
        table.insert(ExamList, "Option "..i)
    end
    local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
    local CombatFrameworkR = getupvalues(CombatFramework)[2]
    local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
    local RigControllerR = getupvalues(RigController)[2]
    local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
    local cooldownfastattack = tick()
    
    function CurrentWeapon()
        local ac = CombatFrameworkR.activeController
        local ret = ac.blades[1]
        if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
        pcall(function()
            while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
        end)
        if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
        return ret
    end
    
    function getAllBladeHitsPlayers(Sizes)
        local Hits = {}
        local Client = game.Players.LocalPlayer
        local Characters = game:GetService("Workspace").Characters:GetChildren()
        for i=1,#Characters do local v = Characters[i]
            local Human = v:FindFirstChildOfClass("Humanoid")
            if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
                table.insert(Hits,Human.RootPart)
            end
        end
        return Hits
    end
    
    function getAllBladeHits(Sizes)
        local Hits = {}
        local Client = game.Players.LocalPlayer
        local Enemies = game:GetService("Workspace").Enemies:GetChildren()
        for i=1,#Enemies do local v = Enemies[i]
            local Human = v:FindFirstChildOfClass("Humanoid")
            if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
                table.insert(Hits,Human.RootPart)
            end
        end
        return Hits
    end
    
    function AttackFunction()
        local ac = CombatFrameworkR.activeController
        if ac and ac.equipped then
            for indexincrement = 1, 1 do
                local bladehit = getAllBladeHits(50)
                if #bladehit > 0 then
                    local AcAttack8 = debug.getupvalue(ac.attack, 5)
                    local AcAttack9 = debug.getupvalue(ac.attack, 6)
                    local AcAttack7 = debug.getupvalue(ac.attack, 4)
                    local AcAttack10 = debug.getupvalue(ac.attack, 7)
                    local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
                    local NumberAc13 = AcAttack7 * 798405
                    (function()
                        NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
                        AcAttack8 = math.floor(NumberAc12 / AcAttack9)
                        AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
                    end)()
                    AcAttack10 = AcAttack10 + 1
                    debug.setupvalue(ac.attack, 5, AcAttack8)
                    debug.setupvalue(ac.attack, 6, AcAttack9)
                    debug.setupvalue(ac.attack, 4, AcAttack7)
                    debug.setupvalue(ac.attack, 7, AcAttack10)
                    for k, v in pairs(ac.animator.anims.basic) do
                        v:Play(0.1,0.5,0.2,0.8)
                    end                 
                    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
                        game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "") 
                    end
                end
            end
        end
    end
    
    coroutine.wrap(function()
       while task.wait(.1) do
           local ac = CombatFrameworkR.activeController
             if ac and ac.equipped then
                if _G.FastAttack then
                    AttackFunction()
                    if _G.FastAttackType == "Fast" then
                        if tick() - cooldownfastattack < task.wait() then task.wait() cooldownfastattack = tick() end
                    elseif _G.FastAttackType == "Normal" then
                        if tick() - cooldownfastattack > .3 then wait(.1) cooldownfastattack = tick() end
                    elseif _G.FastAttackType == "Safety" then
                        if tick() - cooldownfastattack > .5 then wait(1) cooldownfastattack = tick() end
                    end
                elseif _G.FastAttack == false then
                  else
                     CombatFrameworkR.activeController:Destroy()
                      if ac.hitboxMagnitude ~= 80 then
                         ac.hitboxMagnitude = 80
                      end
                     ac:attack()
                 end
             end
         end
    end)()

--partใต้ตีน

    do 
        local NM = game:GetService("Workspace"):FindFirstChild("Noclip")
        if NM then
            NM:Destroy()
        end
    end
    local Noclip = Instance.new("Part",Workspace)
        Noclip.Name = "Noclip"
        Noclip.CanCollide = true
        Noclip.Anchored = true
        Noclip.Transparency = 1
        Noclip.Size = Vector3.new(60, -5, 60)
    function Noclip()
        game:GetService("Workspace"):FindFirstChild("Noclip").CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-3,0)
    end
    _G.Noclip = Value
    while _G.Noclip do wait(0.3)
    pcall(function()
    Noclip()
    end)
    end
end)
Options.MyToggle:SetValue(false)

--autoequipWeapon
Weapon = {}
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if v:IsA"Tool" then
    table.insert(Weapon,v.Name)
end
end


local Dropdown = Tabs.Main:AddDropdown("Dropdown", {
    Title = "Select Weapon",
    Values = Weapon,
    Multi = false,
    Default = 1,
})

Dropdown:SetValue(false)

Dropdown:OnChanged(function(e)
    Weapon = e
end)

local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "AutoEquipWeapon", Default = false })

    Toggle:OnChanged(function(eq)
        AutoEquiped = eq
    end)

    Options.MyToggle:SetValue(false)

    spawn(function()
        while wait() do
        if AutoEquiped then
        pcall(function()
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Weapon))
        end)
        end
        end
        end)

--refreshweapon
Tabs.Main:AddButton({
    Title = "RefreshWeapon(Bug)",
    Description = "",
    Callback = function()
        Window:Dialog({
            Title = "Les'go",
            Content = "",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        table.clear(Weapon)
                        for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                            if v:IsA"Tool" then
                            table.insert(Weapon,v.Name)
                            Dropdown:Add(v.Name)
                        end
                    end
                end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        print("Cancelled the dialog.")
                    end
                }
            }
        })
    end
})

--code
Tabs.Main:AddParagraph({
    Title = "Code",
    Content = "All Code Active"
})

Tabs.Main:AddButton({
    Title = "RedeemCode",
    Description = "🎆",
    Callback = function()
        Window:Dialog({
            Title = "Waring",
            Content = "Are You Srue?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        local args = {
                            [1] = "rewardfun"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                        local args = {
                            [1] = "ADMIN_TROLL"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                        local args = {
                            [1] = "Axiore"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                        local args = {
                            [1] = "Bignews"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                        local args = {
                            [1] = "Bluxxy"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                        local args = {
                            [1] = "Enyu_is_Pro"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                        local args = {
                            [1] = "Fudd10"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                        local args = {
                            [1] = "fudd10_v2"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                        local args = {
                            [1] = "JCWK"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                        local args = {
                            [1] = "kittgaming"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                        local args = {
                            [1] = "KITT_RESET"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                        local args = {
                            [1] = "Magicbus"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                        local args = {
                            [1] = "NEWTROLL"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                        local args = {
                            [1] = "SECRET_ADMIN"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                        local args = {
                            [1] = "Starcodeheo"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                        local args = {
                            [1] = "StrawHatMaine"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                        local args = {
                            [1] = "SUB2CAPTAINMAUI"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                        local args = {
                            [1] = "Sub2Daigrock"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                        local args = {
                            [1] = "Sub2Fer999"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                        local args = {
                            [1] = "SUB2GAMERROBOT_EXP1"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                        local args = {
                            [1] = "SUB2GAMERROBOT_RESET1"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                        local args = {
                            [1] = "Sub2NoobMaster123"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                        local args = {
                            [1] = "Sub2OfficialNoobie"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                        local args = {
                            [1] = "Sub2UncleKizaru"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                        local args = {
                            [1] = "TantaiGaming"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                        local args = {
                            [1] = "TheGreatAce"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(unpack(args))
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        print("Cancelled the dialog.")
                    end
                }
            }
        })
    end
})
--statsTab

local Tabs = {
    Stats = Window:AddTab({ Title = "Stats", Icon = "rbxassetid://16641770418" }),
}

Tabs.Stats:AddParagraph({
    Title = "Stats Tab",
    Content = "📈"
})

local Toggle = Tabs.Stats:AddToggle("MyToggle", {Title = "Melee", Default = false })

Toggle:OnChanged(function(value)
    _G.Melee = value
    while _G.Melee do wait()
    local args = {
        [1] = "AddPoint",
        [2] = "Melee",
        [3] = 1
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
end
end)

Options.MyToggle:SetValue(false)

local Toggle = Tabs.Stats:AddToggle("MyToggle", {Title = "Defense", Default = false })

Toggle:OnChanged(function(value)
    _G.Defense = value
while _G.Defense do wait()
local args = {
    [1] = "AddPoint",
    [2] = "Defense",
    [3] = 1
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

end
end)

Options.MyToggle:SetValue(false)


local Toggle = Tabs.Stats:AddToggle("MyToggle", {Title = "Sword", Default = false })

Toggle:OnChanged(function(value)
    _G.Sword = value
while _G.Sword do wait()
local args = {
    [1] = "AddPoint",
    [2] = "Sword",
    [3] = 1
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

end
end)

Options.MyToggle:SetValue(false)

local Toggle = Tabs.Stats:AddToggle("MyToggle", {Title = "Gun", Default = false })

Toggle:OnChanged(function(value)
    _G.Gun = value
while _G.Gun do wait()
local args = {
    [1] = "AddPoint",
    [2] = "Gun",
    [3] = 1
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

end
end)

Options.MyToggle:SetValue(false)

local Toggle = Tabs.Stats:AddToggle("MyToggle", {Title = "DemonFruit", Default = false })

Toggle:OnChanged(function(value)
    _G.Fruit = value
while _G.Fruit do wait()
local args = {
    [1] = "AddPoint",
    [2] = "Demon Fruit",
    [3] = 1
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

end
end)
Options.MyToggle:SetValue(false)

--shopTab


local Tabs = {
    Shop = Window:AddTab({ Title = "Shop", Icon = "rbxassetid://14188616680"}),
}
Tabs.Shop:AddParagraph({
    Title = "Haki Shop",
    Content = "⚓"
})

Tabs.Shop:AddButton({
    Title = "BuyHaki",
    Description = "",
    Callback = function()
        Window:Dialog({
            Title = "Are you Sure?",
            Content = "it(25K)",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        local args = {
                            [1] = "BuyHaki",
                            [2] = "Buso"
                        }
                        
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        print("Cancelled the dialog.")
                    end
                }
            }
        })
    end
})

Tabs.Shop:AddButton({
    Title = "BuyGeppo",
    Description = "",
    Callback = function()
        Window:Dialog({
            Title = "Are you Sure?",
            Content = "it(10K)",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        local args = {
                            [1] = "BuyHaki",
                            [2] = "Geppo"
                        }
                        
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        print("Cancelled the dialog.")
                    end
                }
            }
        })
    end
})


Tabs.Shop:AddButton({
    Title = "BuySoru",
    Description = "",
    Callback = function()
        Window:Dialog({
            Title = "Are you Sure?",
            Content = "it(100K)",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        local args = {
                            [1] = "BuyHaki",
                            [2] = "Soru"
                        }
                        
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        print("Cancelled the dialog.")
                    end
                }
            }
        })
    end
})


Tabs.Shop:AddParagraph({
    Title = "Combat Shop",
    Content = "👊"
})


Tabs.Shop:AddButton({
    Title = "BlackLeg",
    Description = "",
    Callback = function()
        Window:Dialog({
            Title = "Are you Sure?",
            Content = "it(150K)",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        local args = {
                            [1] = "BuyBlackLeg"
                        }
                        
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        print("Cancelled the dialog.")
                    end
                }
            }
        })
    end
})


local Tabs = {
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

Tabs.Settings:AddButton({
    Title = "Rejoin",
    Description = "",
    Callback = function()
        Window:Dialog({
            Title = "🔄️",
            Content = "Rejoin",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                    local ts = game:GetService("TeleportService")

                    local p = game:GetService("Players").LocalPlayer
                    ts:Teleport(game.PlaceId, p)
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        print("Cancelled the dialog.")
                    end
                }
            }
        })
    end
})

Tabs.Settings:AddButton({
    Title = "HopServer",
    Description = "",
    Callback = function()
        Window:Dialog({
            Title = "🌐",
            Content = "HopServer",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        local Http = game:GetService("HttpService")
                        local TPS = game:GetService("TeleportService")
                        local Api = "https://games.roblox.com/v1/games/"

                        local _place = game.PlaceId
                        local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
                        function ListServers(cursor)
                        local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
                        return Http:JSONDecode(Raw)
                        end

                        local Server, Next; repeat
                        local Servers = ListServers(Next)
                        Server = Servers.data[1]
                        Next = Servers.nextPageCursor
                        until Server

                        TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        print("Cancelled the dialog.")
                    end
                }
            }
        })
    end
})


-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)

-- Hand the library over to our managers
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes({})

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

Fluent:Notify({
    Title = "Notification",
    Content = "The script has been loaded.",
    Duration = 4
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
Tabs.Settings:AddButton({
    Title = "FpsBoots🚀",
    Description = "Boots Your FPS🌌",
    Callback = function()
        Window:Dialog({
            Title = "Boots",
            Content = "🚀🌌",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        _G.Settings = {
                            Players = {
                                ["Ignore Me"] = true, -- Ignore your Character
                                ["Ignore Others"] = true -- Ignore other Characters
                            },
                            Meshes = {
                                Destroy = false, -- Destroy Meshes
                                LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
                            },
                            Images = {
                                Invisible = true, -- Invisible Images
                                LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
                                Destroy = false, -- Destroy Images
                            },
                            ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
                            ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
                            ["No Explosions"] = true, -- Makes Explosion's invisible
                            ["No Clothes"] = true, -- Removes Clothing from the game
                            ["Low Water Graphics"] = true, -- Removes Water Quality
                            ["No Shadows"] = true, -- Remove Shadows
                            ["Low Rendering"] = true, -- Lower Rendering
                            ["Low Quality Parts"] = true -- Lower quality parts
                        }
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        print("Cancelled the dialog.")
                    end
                }
            }
        })
    end
})


--auto-rejoin
repeat wait() until game.CoreGui:FindFirstChild('RobloxPromptGui')
 
local lp,po,ts = game:GetService('Players').LocalPlayer,game.CoreGui.RobloxPromptGui.promptOverlay,game:GetService('TeleportService')
 
po.ChildAdded:connect(function(a)
    if a.Name == 'ErrorPrompt' then
        repeat
            ts:Teleport(game.PlaceId)
            wait(2)
        until false
    end
end)
