-- Azka Codet Lopyu for Blox Fruits (Gabungan Manual Tahap 1, 2, 3) by hsxai

-- (tahap 1)
-- GUI Dasar: Tema gelap, tabs Farm/Combat/Misc, draggable, close button
local RedzHub = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local TabContainer = Instance.new("Frame")
local FarmTabButton = Instance.new("TextButton")
local FarmTabCorner = Instance.new("UICorner")
local CombatTabButton = Instance.new("TextButton")
local CombatTabCorner = Instance.new("UICorner")
local MiscTabButton = Instance.new("TextButton")
local MiscTabCorner = Instance.new("UICorner")
local ContentFrame = Instance.new("Frame")
local ContentCorner = Instance.new("UICorner")
local FarmContent = Instance.new("ScrollingFrame")
local CombatContent = Instance.new("ScrollingFrame")
local MiscContent = Instance.new("ScrollingFrame")
local CloseButton = Instance.new("TextButton")
local CloseCorner = Instance.new("UICorner")
local UIListLayoutFarm = Instance.new("UIListLayout")
local UIListLayoutCombat = Instance.new("UIListLayout")
local UIListLayoutMisc = Instance.new("UIListLayout")

Azkacodet.Name = "Azkacodet"
Azkacodet.Parent = game.CoreGui

MainFrame.Parent = Azkacodet
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.Position = UDim2.new(0.35, 0, 0.25, 0)
MainFrame.Size = UDim2.new(0, 400, 0, 500)
MainFrame.Active = true
MainFrame.Draggable = true

UICorner.Parent = MainFrame
UICorner.CornerRadius = UDim.new(0, 10)

Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.Size = UDim2.new(0, 400, 0, 50)
Title.Text = "Azka Codet - Blox Fruits"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 20
Title.Font = Enum.Font.SourceSansBold

CloseButton.Parent = Title
CloseButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
CloseButton.Position = UDim2.new(0.92, 0, 0.1, 0)
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextScaled = true
CloseCorner.Parent = CloseButton
CloseCorner.CornerRadius = UDim.new(0, 5)
CloseButton.MouseButton1Click:Connect(function()
    RedzHub:Destroy()
end)

TabContainer.Parent = MainFrame
TabContainer.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TabContainer.Position = UDim2.new(0, 0, 0.1, 0)
TabContainer.Size = UDim2.new(1, 0, 0.1, 0)

FarmTabButton.Parent = TabContainer
FarmTabButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
FarmTabButton.Position = UDim2.new(0.05, 0, 0.1, 0)
FarmTabButton.Size = UDim2.new(0.3, 0, 0.8, 0)
FarmTabButton.Text = "Farm"
FarmTabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FarmTabButton.TextScaled = true
FarmTabCorner.Parent = FarmTabButton
FarmTabCorner.CornerRadius = UDim.new(0, 5)

CombatTabButton.Parent = TabContainer
CombatTabButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
CombatTabButton.Position = UDim2.new(0.35, 0, 0.1, 0)
CombatTabButton.Size = UDim2.new(0.3, 0, 0.8, 0)
CombatTabButton.Text = "Combat"
CombatTabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CombatTabButton.TextScaled = true
CombatTabCorner.Parent = CombatTabButton
CombatTabCorner.CornerRadius = UDim.new(0, 5)

MiscTabButton.Parent = TabContainer
MiscTabButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
MiscTabButton.Position = UDim2.new(0.65, 0, 0.1, 0)
MiscTabButton.Size = UDim2.new(0.3, 0, 0.8, 0)
MiscTabButton.Text = "Misc"
MiscTabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MiscTabButton.TextScaled = true
MiscTabCorner.Parent = MiscTabButton
MiscTabCorner.CornerRadius = UDim.new(0, 5)

ContentFrame.Parent = MainFrame
ContentFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ContentFrame.Position = UDim2.new(0, 0, 0.2, 0)
ContentFrame.Size = UDim2.new(1, 0, 0.8, 0)
ContentCorner.Parent = ContentFrame
ContentCorner.CornerRadius = UDim.new(0, 10)

FarmContent.Parent = ContentFrame
FarmContent.BackgroundTransparency = 1
FarmContent.Size = UDim2.new(1, 0, 1, 0)
FarmContent.Visible = true
FarmContent.CanvasSize = UDim2.new(0, 0, 4, 0)
FarmContent.ScrollBarThickness = 5
UIListLayoutFarm.Parent = FarmContent
UIListLayoutFarm.Padding = UDim.new(0, 10)
UIListLayoutFarm.SortOrder = Enum.SortOrder.LayoutOrder

CombatContent.Parent = ContentFrame
CombatContent.BackgroundTransparency = 1
CombatContent.Size = UDim2.new(1, 0, 1, 0)
CombatContent.Visible = false
CombatContent.CanvasSize = UDim2.new(0, 0, 4, 0)
CombatContent.ScrollBarThickness = 5
UIListLayoutCombat.Parent = CombatContent
UIListLayoutCombat.Padding = UDim.new(0, 10)
UIListLayoutCombat.SortOrder = Enum.SortOrder.LayoutOrder

MiscContent.Parent = ContentFrame
MiscContent.BackgroundTransparency = 1
MiscContent.Size = UDim2.new(1, 0, 1, 0)
MiscContent.Visible = false
MiscContent.CanvasSize = UDim2.new(0, 0, 4, 0)
MiscContent.ScrollBarThickness = 5
UIListLayoutMisc.Parent = MiscContent
UIListLayoutMisc.Padding = UDim.new(0, 10)
UIListLayoutMisc.SortOrder = Enum.SortOrder.LayoutOrder

-- Tab Switching (Tahap 1)
local function switchTab(tab)
    FarmContent.Visible = tab == "Farm"
    CombatContent.Visible = tab == "Combat"
    MiscContent.Visible = tab == "Misc"
end

FarmTabButton.MouseButton1Click:Connect(function()
    switchTab("Farm")
end)
CombatTabButton.MouseButton1Click:Connect(function()
    switchTab("Combat")
end)
MiscTabButton.MouseButton1Click:Connect(function()
    switchTab("Misc")
end)

-- (tahap 2)
-- Tambah semua fitur Redz Hub ke dalam tabs Farm/Combat/Misc
local function createButton(parent, text, callback)
    local buttonFrame = Instance.new("Frame")
    buttonFrame.Parent = parent
    buttonFrame.Size = UDim2.new(0.9, 0, 0, 50)
    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 8)
    buttonCorner.Parent = buttonFrame

    local button = Instance.new("TextButton")
    button.Parent = buttonFrame
    button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    button.Size = UDim2.new(1, 0, 1, 0)
    button.Text = text .. " [OFF]"
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextScaled = true
    button.Font = Enum.Font.SourceSans

    local enabled = false
    button.MouseButton1Click:Connect(function()
        enabled = not enabled
        button.Text = text .. " [" .. (enabled and "ON" or "OFF") .. "]"
        button.BackgroundColor3 = enabled and Color3.fromRGB(0, 200, 0) or Color3.fromRGB(40, 40, 40)
        callback(enabled)
    end)
    return buttonFrame
end

-- Farm Tab Features (Tahap 2)
local AutoFarmLevel = createButton(FarmContent, "Auto Farm Level", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                for _, quest in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                    if quest:IsA("Model") and quest:FindFirstChild("Head") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = quest.Head.CFrame
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", quest.Name, 1)
                        for _, mob in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if mob:IsA("Model") and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = mob.HumanoidRootPart.CFrame
                                game:GetService("VirtualUser"):Click()
                            end
                        end
                    end
                end
                wait(0.1)
            end
        end)
    end
end)

local AutoFarmBoss = createButton(FarmContent, "Auto Farm Boss", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                for _, boss in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if boss:IsA("Model") and boss.Name:find("Boss") and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = boss.HumanoidRootPart.CFrame
                        game:GetService("VirtualUser"):Click()
                    end
                end
                wait(0.1)
            end
        end)
    end
end)

local AutoFarmFragment = createButton(FarmContent, "Auto Farm Fragment", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                for _, enemy in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if enemy:IsA("Model") and enemy:FindFirstChild("Humanoid") and enemy.Humanoid.Health > 0 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = enemy.HumanoidRootPart.CFrame
                        game:GetService("VirtualUser"):Click()
                    end
                end
                wait(0.1)
            end
        end)
    end
end)

local AutoRaid = createButton(FarmContent, "Auto Raid", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Check")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Start")
                wait(5)
            end
        end)
    end
end)

local AutoFruits = createButton(FarmContent, "Auto Fruits", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                for _, fruit in pairs(game:GetService("Workspace"):GetChildren()) do
                    if fruit:IsA("Model") and fruit.Name:find("Fruit") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = fruit.Handle.CFrame
                        wait(0.5)
                    end
                end
                wait(0.1)
            end
        end)
    end
end)

local SmoothFarm = createButton(FarmContent, "Smooth Farm", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                for _, quest in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                    if quest:IsA("Model") and quest:FindFirstChild("Head") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = quest.Head.CFrame
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", quest.Name, 1)
                        for _, mob in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if mob:IsA("Model") and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
                                local tween = game:GetService("TweenService"):Create(
                                    game.Players.LocalPlayer.Character.HumanoidRootPart,
                                    TweenInfo.new(1, Enum.EasingStyle.Linear),
                                    {CFrame = mob.HumanoidRootPart.CFrame}
                                )
                                tween:Play()
                                tween.Completed:Wait()
                                game:GetService("VirtualUser"):Click()
                            end
                        end
                    end
                end
                wait(0.1)
            end
        end)
    end
end)

local VolcanoEvent = createButton(FarmContent, "Volcano Event", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5478, 15, -5276)
                wait(0.5)
            end
        end)
    end
end)

local Prehistoric = createButton(FarmContent, "Prehistoric", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1234, 50, 5678)
                wait(0.5)
            end
        end)
    end
end)

local DojoQuest = createButton(FarmContent, "Dojo Quest", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "DojoQuest", 1)
                wait(0.5)
            end
        end)
    end
end)

-- Combat Tab Features (Tahap 2)
local Aimlock = createButton(CombatContent, "Aimlock", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                local closest = nil
                local closestDist = math.huge
                for _, player in pairs(game.Players:GetPlayers()) do
                    if player ~= game.Players.LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        local dist = (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if dist < closestDist then
                            closest = player.Character.HumanoidRootPart
                            closestDist = dist
                        end
                    end
                end
                if closest then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, closest.Position)
                end
                wait()
            end
        end)
    end
end)

local AutoSkill = createButton(CombatContent, "Auto Skill", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                game:GetService("VirtualUser"):CaptureController()
                game:GetService("VirtualUser"):SetKeyDown("0x5A")
                wait()
                game:GetService("VirtualUser"):SetKeyUp("0x5A")
                wait(0.5)
            end
        end)
    end
end)

local AutoKillPlayer = createButton(CombatContent, "Auto Kill Player", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                for _, player in pairs(game.Players:GetPlayers()) do
                    if player ~= game.Players.LocalPlayer and player.Character and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
                        game:GetService("VirtualUser"):Click()
                    end
                end
                wait(0.1)
            end
        end)
    end
end)

local FastAttack = createButton(CombatContent, "Fast Attack", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                for _, mob in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if mob:IsA("Model") and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
                        game:GetService("VirtualUser"):Click()
                        game:GetService("VirtualUser"):CaptureController()
                        game:GetService("VirtualUser"):SetKeyDown("0x20")
                        wait()
                        game:GetService("VirtualUser"):SetKeyUp("0x20")
                    end
                end
                wait(0.01)
            end
        end)
    end
end)

local AutoBelt = createButton(CombatContent, "Auto Belt", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
                wait(1)
            end
        end)
    end
end)

local SeaEvent = createButton(CombatContent, "Sea Event", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 1000, 0)
                wait(0.5)
            end
        end)
    end
end)

local DragonRace = createButton(CombatContent, "Dragon Race", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "DragonRace", 1)
                wait(0.5)
            end
        end)
    end
end)

local DracoRace = createButton(CombatContent, "Draco Race", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "DracoRace", 1)
                wait(0.5)
            end
        end)
    end
end)

-- Misc Tab Features (Tahap 2)
local RedeemCodes = createButton(MiscContent, "Redeem All Codes", function(enabled)
    if enabled then
        spawn(function()
            local codes = {"UPDATE16", "SUB2GAMERROBOT_EXP1", "FREEDOM", "SUB2NOOBMASTER123"}
            for _, code in pairs(codes) do
                game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(code)
                wait(0.5)
            end
        end)
    end
end)

local BoostFPS = createButton(MiscContent, "Boost FPS", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                game:GetService("Lighting").GlobalShadows = false
                game:GetService("Lighting").FogEnd = 999999
                for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                    if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") then
                        v.Material = Enum.Material.SmoothPlastic
                    end
                end
                wait(5)
            end
        end)
    end
end)

local ServerHop = createButton(MiscContent, "Server Hop", function(enabled)
    if enabled then
        local servers = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"))
        for _, server in pairs(servers.data) do
            if server.playing < server.maxPlayers and server.id ~= game.JobId then
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, server.id)
                break
            end
        end
    end
end)

local AutoSetSpawn = createButton(MiscContent, "Auto Set Spawn", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                wait(5)
            end
        end)
    end
end)

local TeleportToPlayers = createButton(MiscContent, "Teleport to Players", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                for _, player in pairs(game.Players:GetPlayers()) do
                    if player ~= game.Players.LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
                        wait(1)
                    end
                end
                wait(0.1)
            end
        end)
    end
end)

local AutoStats = createButton(MiscContent, "Auto Stats", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", 1)
                wait(0.5)
            end
        end)
    end
end)

local ESP = createButton(MiscContent, "ESP", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                for _, mob in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                   if mob:IsA("Model") and mob:FindFirstChild("HumanoidRootPart") and not mob:FindFirstChild("Highlight") then
                        local highlight = Instance.new("Highlight")
                        highlight.Parent = mob
                        highlight.FillColor = Color3.fromRGB(255, 0, 0)
                        highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                    end
                end
                wait(1)
            end
        end)
    else
        for _, mob in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if mob:FindFirstChild("Highlight") then
                mob.Highlight:Destroy()
            end
        end
    end
end)

local NoClip = createButton(MiscContent, "No Clip", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                wait()
            end
        end)
    end
end)

-- (tahap 3)
-- Penyempurnaan: Error handling (pcall), slider, dropdown, GUI colorful, animasi
local TweenService = game:GetService("TweenService")
local GradientHeader = Instance.new("UIGradient")
GradientHeader.Parent = Title
GradientHeader.Color = ColorSequence.new(Color3.fromRGB(200, 0, 0), Color3.fromRGB(100, 0, 0))

-- Tab Switching dengan Animasi
local function switchTab(tab)
    local targetContent = tab == "Farm" and FarmContent or tab == "Combat" and CombatContent or MiscContent
    for _, content in pairs({FarmContent, CombatContent, MiscContent}) do
        if content ~= targetContent then
            TweenService:Create(content, TweenInfo.new(0.3), {CanvasPosition = Vector2.new(0, 0)}):Play()
            content.Visible = false
        end
    end
    targetContent.Visible = true
    TweenService:Create(targetContent, TweenInfo.new(0.3), {BackgroundTransparency = 0}):Play()
end

FarmTabButton.MouseButton1Click:Connect(function()
    switchTab("Farm")
end)
CombatTabButton.MouseButton1Click:Connect(function()
    switchTab("Combat")
end)
MiscTabButton.MouseButton1Click:Connect(function()
    switchTab("Misc")
end)

-- Helper Function: Create Button dengan Gradasi dan Animasi
local function createButton(parent, text, callback)
    local buttonFrame = Instance.new("Frame")
    buttonFrame.Parent = parent
    buttonFrame.Size = UDim2.new(0.9, 0, 0, 50)
    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 8)
    buttonCorner.Parent = buttonFrame

    local button = Instance.new("TextButton")
    button.Parent = buttonFrame
    button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    button.Size = UDim2.new(1, 0, 1, 0)
    button.Text = text .. " [OFF]"
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextScaled = true
    button.Font = Enum.Font.SourceSans
    local gradient = Instance.new("UIGradient")
    gradient.Parent = button
    gradient.Color = ColorSequence.new(Color3.fromRGB(40, 40, 40), Color3.fromRGB(60, 60, 60))

    local enabled = false
    button.MouseButton1Click:Connect(function()
        enabled = not enabled
        button.Text = text .. " [" .. (enabled and "ON" or "OFF") .. "]"
        gradient.Color = enabled and ColorSequence.new(Color3.fromRGB(0, 200, 0), Color3.fromRGB(100, 200, 100)) or ColorSequence.new(Color3.fromRGB(40, 40, 40), Color3.fromRGB(60, 60, 60))
        TweenService:Create(button, TweenInfo.new(0.2), {BackgroundTransparency = enabled and 0 or 0.2}):Play()
        callback(enabled)
    end)
    return buttonFrame
end

-- Helper Function: Create Dropdown
local function createDropdown(parent, text, options, callback)
    local dropdownFrame = Instance.new("Frame")
    dropdownFrame.Parent = parent
    dropdownFrame.Size = UDim2.new(0.9, 0, 0, 50)
    local dropdownCorner = Instance.new("UICorner")
    dropdownCorner.CornerRadius = UDim.new(0, 8)
    dropdownCorner.Parent = dropdownFrame

    local dropdownButton = Instance.new("TextButton")
    dropdownButton.Parent = dropdownFrame
    dropdownButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    dropdownButton.Size = UDim2.new(1, 0, 1, 0)
    dropdownButton.Text = text .. ": Pilih"
    dropdownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    dropdownButton.TextScaled = true

    local dropdownList = Instance.new("ScrollingFrame")
    dropdownList.Parent = dropdownFrame
    dropdownList.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    dropdownList.Position = UDim2.new(0, 0, 1, 0)
    dropdownList.Size = UDim2.new(1, 0, 0, 150)
    dropdownList.Visible = false
    dropdownList.CanvasSize = UDim2.new(0, 0, 0, #options * 30)
    local listLayout = Instance.new("UIListLayout")
    listLayout.Parent = dropdownList
    listLayout.Padding = UDim.new(0, 5)

    for _, option in pairs(options) do
        local optButton = Instance.new("TextButton")
        optButton.Parent = dropdownList
        optButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        optButton.Size = UDim2.new(1, 0, 0, 30)
        optButton.Text = option
        optButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        optButton.MouseButton1Click:Connect(function()
            dropdownButton.Text = text .. ": " .. option
            dropdownList.Visible = false
            callback(option)
        end)
    end

    dropdownButton.MouseButton1Click:Connect(function()
        dropdownList.Visible = not dropdownList.Visible
    end)
    return dropdownFrame
end

-- Helper Function: Create Slider
local function createSlider(parent, text, min, max, default, callback)
    local sliderFrame = Instance.new("Frame")
    sliderFrame.Parent = parent
    sliderFrame.Size = UDim2.new(0.9, 0, 0, 50)
    local sliderCorner = Instance.new("UICorner")
    sliderCorner.CornerRadius = UDim.new(0, 8)
    sliderCorner.Parent = sliderFrame

    local sliderLabel = Instance.new("TextLabel")
    sliderLabel.Parent = sliderFrame
    sliderLabel.BackgroundTransparency = 1
    sliderLabel.Position = UDim2.new(0, 0, 0, 0)
    sliderLabel.Size = UDim2.new(1, 0, 0.5, 0)
    sliderLabel.Text = text .. ": " .. default
    sliderLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    sliderLabel.TextScaled = true

    local sliderBar = Instance.new("Frame")
    sliderBar.Parent = sliderFrame
    sliderBar.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    sliderBar.Position = UDim2.new(0.05, 0, 0.6, 0)
    sliderBar.Size = UDim2.new(0.9, 0, 0.1, 0)
    local barCorner = Instance.new("UICorner")
    barCorner.CornerRadius = UDim.new(0, 5)
    barCorner.Parent = sliderBar

    local sliderFill = Instance.new("Frame")
    sliderFill.Parent = sliderBar
    sliderFill.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
    sliderFill.Size = UDim2.new((default - min) / (max - min), 0, 1, 0)
    local fillCorner = Instance.new("UICorner")
    fillCorner.CornerRadius = UDim.new(0, 5)
    fillCorner.Parent = sliderFill

    local sliderButton = Instance.new("TextButton")
    sliderButton.Parent = sliderBar
    sliderButton.BackgroundTransparency = 1
    sliderButton.Size = UDim2.new(1, 0, 1, 0)
    sliderButton.Text = ""

    local dragging = false
    sliderButton.MouseButton1Down:Connect(function()
        dragging = true
    end)
    game:GetService("UserInputService").InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)
    sliderButton.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local relative = math.clamp((input.Position.X - sliderBar.AbsolutePosition.X) / sliderBar.AbsoluteSize.X, 0, 1)
            local value = min + (max - min) * relative
            value = math.floor(value + 0.5)
            sliderFill.Size = UDim2.new(relative, 0, 1, 0)
            sliderLabel.Text = text .. ": " .. value
            callback(value)
        end
    end)
    return sliderFrame
end

-- Update Fitur dengan Error Handling, Slider, Dropdown (Tahap 3)
-- Farm Tab Features (Sempurna)
local farmSpeed = 0.1
createSlider(FarmContent, "Farm Speed", 0.01, 1, 0.1, function(value)
    farmSpeed = value
end)

local bossOptions = {"Darkbeard", "Tide Keeper", "Boss1", "Boss2"}
local selectedBoss = ""
createDropdown(FarmContent, "Pilih Boss", bossOptions, function(option)
    selectedBoss = option
end)

local fruitOptions = {"Magma", "Flame", "Light", "Dark"}
local selectedFruit = ""
createDropdown(FarmContent, "Pilih Fruit", fruitOptions, function(option)
    selectedFruit = option
end)

local AutoFarmLevel = createButton(FarmContent, "Auto Farm Level", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                pcall(function()
                    for _, quest in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                        if quest:IsA("Model") and quest:FindFirstChild("Head") then
                            local dist = (quest.Head.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                            if dist < 1000 then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = quest.Head.CFrame
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", quest.Name, 1)
                                for _, mob in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if mob:IsA("Model") and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
                                        local distMob = (mob.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                        if distMob < 1000 then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = mob.HumanoidRootPart.CFrame
                                            game:GetService("VirtualUser"):Click()
                                        end
                                    end
                                end
                            end
                        end
                    end
                end)
                wait(farmSpeed)
            end
        end)
    end
end)

local AutoFarmBoss = createButton(FarmContent, "Auto Farm Boss", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                pcall(function()
                    for _, boss in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if boss:IsA("Model") and boss.Name == selectedBoss and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0 then
                            local dist = (boss.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                            if dist < 1000 then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = boss.HumanoidRootPart.CFrame
                                game:GetService("VirtualUser"):Click()
                            end
                        end
                    end
                end)
                wait(farmSpeed)
            end
        end)
    end
end)

local AutoFarmFragment = createButton(FarmContent, "Auto Farm Fragment", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                pcall(function()
                    for _, enemy in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if enemy:IsA("Model") and enemy:FindFirstChild("Humanoid") and enemy.Humanoid.Health > 0 then
                            local dist = (enemy.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                            if dist < 1000 then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = enemy.HumanoidRootPart.CFrame
                                game:GetService("VirtualUser"):Click()
                            end
                        end
                    end
                end)
                wait(farmSpeed)
            end
        end)
    end
end)

local AutoRaid = createButton(FarmContent, "Auto Raid", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Check")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Start")
                end)
                wait(5)
            end
        end)
    end
end)

local AutoFruits = createButton(FarmContent, "Auto Fruits", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                pcall(function()
                    for _, fruit in pairs(game:GetService("Workspace"):GetChildren()) do
                        if fruit:IsA("Model") and fruit.Name:find("Fruit") and (selectedFruit == "" or fruit.Name:find(selectedFruit)) then
                            local dist = (fruit.Handle.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                            if dist < 1000 then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = fruit.Handle.CFrame
                                wait(0.5)
                            end
                        end
                    end
                end)
                wait(farmSpeed)
            end
        end)
    end
end)

local SmoothFarm = createButton(FarmContent, "Smooth Farm", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                pcall(function()
                    for _, quest in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                        if quest:IsA("Model") and quest:FindFirstChild("Head") then
                            local dist = (quest.Head.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                            if dist < 1000 then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = quest.Head.CFrame
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", quest.Name, 1)
                                for _, mob in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if mob:IsA("Model") and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
                                        local distMob = (mob.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                        if distMob < 1000 then
                                            local tween = game:GetService("TweenService"):Create(
                                                game.Players.LocalPlayer.Character.HumanoidRootPart,
                                                TweenInfo.new(1, Enum.EasingStyle.Linear),
                                                {CFrame = mob.HumanoidRootPart.CFrame}
                                            )
                                            tween:Play()
                                            tween.Completed:Wait()
                                            game:GetService("VirtualUser"):Click()
                                        end
                                    end
                                end
                            end
                        end
                    end
                end)
                wait(farmSpeed)
            end
        end)
    end
end)

local VolcanoEvent = createButton(FarmContent, "Volcano Event", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                pcall(function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5478, 15, -5276)
                end)
                wait(0.5)
            end
        end)
    end
end)

local Prehistoric = createButton(FarmContent, "Prehistoric", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                pcall(function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1234, 50, 5678)
                end)
                wait(0.5)
            end
        end)
    end
end)

local DojoQuest = createButton(FarmContent, "Dojo Quest", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "DojoQuest", 1)
                end)
                wait(0.5)
            end
        end)
    end
end)

-- Combat Tab Features (Sempurna)
local attackSpeed = 0.01
createSlider(CombatContent, "Attack Speed", 0.01, 0.5, 0.01, function(value)
    attackSpeed = value
end)

local Aimlock = createButton(CombatContent, "Aimlock", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                pcall(function()
                    local closest = nil
                    local closestDist = math.huge
                    for _, player in pairs(game.Players:GetPlayers()) do
                        if player ~= game.Players.LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                            local dist = (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                            if dist < closestDist then
                                closest = player.Character.HumanoidRootPart
                                closestDist = dist
                            end
                        end
                    end
                    if closest then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, closest.Position)
                    end
                end)
                wait(attackSpeed)
            end
        end)
    end
end)

local AutoSkill = createButton(CombatContent, "Auto Skill", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                pcall(function()
                    game:GetService("VirtualUser"):CaptureController()
                    game:GetService("VirtualUser"):SetKeyDown("0x5A")
                    wait()
                    game:GetService("VirtualUser"):SetKeyUp("0x5A")
                end)
                wait(attackSpeed)
            end
        end)
    end
end)

local AutoKillPlayer = createButton(CombatContent, "Auto Kill Player", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                pcall(function()
                    for _, player in pairs(game.Players:GetPlayers()) do
                        if player ~= game.Players.LocalPlayer and player.Character and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0 then
                            local dist = (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                            if dist < 500 then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
                                game:GetService("VirtualUser"):Click()
                            end
                        end
                    end
                end)
                wait(attackSpeed)
            end
        end)
    end
end)

local FastAttack = createButton(CombatContent, "Fast Attack", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                pcall(function()
                    for _, mob in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if mob:IsA("Model") and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
                            local dist = (mob.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                            if dist < 500 then
                                game:GetService("VirtualUser"):Click()
                                game:GetService("VirtualUser"):CaptureController()
                                game:GetService("VirtualUser"):SetKeyDown("0x20")
                                wait()
                                game:GetService("VirtualUser"):SetKeyUp("0x20")
                            end
                        end
                    end
                end)
                wait(attackSpeed)
            end
        end)
    end
end)

local AutoBelt = createButton(CombatContent, "Auto Belt", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
                end)
                wait(1)
            end
        end)
    end
end)

local SeaEvent = createButton(CombatContent, "Sea Event", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                pcall(function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 1000, 0)
                end)
                wait(0.5)
            end
        end)
    end
end)

local DragonRace = createButton(CombatContent, "Dragon Race", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "DragonRace", 1)
                end)
                wait(0.5)
            end
        end)
    end
end)

local DracoRace = createButton(CombatContent, "Draco Race", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "DracoRace", 1)
                end)
                wait(0.5)
            end
        end)
    end
end)

-- Misc Tab Features (Sempurna)
local teleportOptions = {"Marine Base", "Pirate Village", "Island1", "Island2"}
local selectedIsland = ""
createDropdown(MiscContent, "Teleport Island", teleportOptions, function(option)
    selectedIsland = option
    pcall(function()
        local islandCFrames = {
            ["Marine Base"] = CFrame.new(0, 0, 0), -- Ganti dengan CFrame asli
            ["Pirate Village"] = CFrame.new(1234, 50, 5678),
            Island1 = CFrame.new(0, 0, 0),
            Island2 = CFrame.new(0, 0, 0)
        }
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = islandCFrames[option] or CFrame.new(0, 0, 0)
    end)
end)

local RedeemCodes = createButton(MiscContent, "Redeem All Codes", function(enabled)
    if enabled then
        spawn(function()
            local codes = {"UPDATE16", "SUB2GAMERROBOT_EXP1", "FREEDOM", "SUB2NOOBMASTER123"}
            for _, code in pairs(codes) do
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(code)
                end)
                wait(0.5)
            end
        end)
    end
end)

local BoostFPS = createButton(MiscContent, "Boost FPS", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                pcall(function()
                    game:GetService("Lighting").GlobalShadows = false
                    game:GetService("Lighting").FogEnd = 999999
                    for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                        if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") then
                            v.Material = Enum.Material.SmoothPlastic
                        end
                    end
                end)
                wait(5)
            end
        end)
    end
end)

local ServerHop = createButton(MiscContent, "Server Hop", function(enabled)
    if enabled then
        pcall(function()
            local servers = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"))
            for _, server in pairs(servers.data) do
                if server.playing < server.maxPlayers and server.id ~= game.JobId then
                    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, server.id)
                    break
                end
            end
        end)
    end
end)

local AutoSetSpawn = createButton(MiscContent, "Auto Set Spawn", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                end)
                wait(5)
            end
        end)
    end
end)

local TeleportToPlayers = createButton(MiscContent, "Teleport to Players", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                pcall(function()
                    for _, player in pairs(game.Players:GetPlayers()) do
                        if player ~= game.Players.LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                            local dist = (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                            if dist < 1000 then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
                                wait(1)
                            end
                        end
                    end
                end)
                wait(0.1)
            end
        end)
    end
end)

local AutoStats = createButton(MiscContent, "Auto Stats", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", 1)
                end)
                wait(0.5)
            end
        end)
    end
end)

local ESP = createButton(MiscContent, "ESP", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                pcall(function()
                    for _, mob in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if mob:IsA("Model") and mob:FindFirstChild("HumanoidRootPart") and not mob:FindFirstChild("Highlight") then
                            local dist = (mob.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                            if dist < 2000 then
                                local highlight = Instance.new("Highlight")
                                highlight.Parent = mob
                                highlight.FillColor = Color3.fromRGB(255, 0, 0)
                                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                            end
                        end
                    end
                end)
                wait(1)
            end
        end)
    else
        pcall(function()
            for _, mob in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if mob:FindFirstChild("Highlight") then
                    mob.Highlight:Destroy()
                end
            end
        end)
    end
end)

local NoClip = createButton(MiscContent, "No Clip", function(enabled)
    if enabled then
        spawn(function()
            while enabled do
                pcall(function()
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                end)
                wait()
            end
        end)
    end
end)

print("Redz Hub Replica (Gabungan Tahap 1, 2, 3 - Final) Loaded!")