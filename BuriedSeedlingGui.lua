local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Buried Hack",
   Icon = nil, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "PVZ hack in 2025",
   LoadingSubtitle = "by thiagoglitcher",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Buried Seedling"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "title",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Sun", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Grab All Suns",
   Callback = function()
local plr = game.Players.LocalPlayer
local chr = plr.Character or plr.CharacterAdded:Wait() -- Wait for the character to load if it's not yet loaded
local humanoidRootPart = chr:WaitForChild("HumanoidRootPart") -- Wait for the HumanoidRootPart to be available

-- Function to teleport to all SunButton parts inside specific models for Sun-related parts
local function teleportToAllSunButtons()
    -- Ensure the PlantLanes exists in workspace
    local plantLanes = workspace:WaitForChild("PlantLanes")

    -- Loop through all models inside PlantLanes
    for _, v in pairs(plantLanes:GetDescendants()) do
        -- Find the SunButton part inside the model
        if v.Name == "Sunflower" or v.Name == "TwinSunflower" or v.Name == "TripletSunflower" or v.Name == "ShineVine" or v.Name == "BigTimeSunflower" then
            local SunButton = v:FindFirstChild("SunButton")
            if SunButton and SunButton:IsA("Part") then
                -- Teleport the player to the SunButton position by directly setting CFrame
                humanoidRootPart.CFrame = CFrame.new(SunButton.Position) -- Teleport to SunButton
                wait() -- Wait a short amount of time before moving to the next SunButton
            end
        end
    end
end

-- Call the function to teleport to all SunButton positions
teleportToAllSunButtons()

end
})

local Button = Tab:CreateButton({
   Name = "Grab All Coins",
   Callback = function()
local player = game.Players.LocalPlayer  -- Get the local player
local character = player.Character or player.CharacterAdded:Wait()  -- Ensure the character is loaded
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")  -- Wait for HumanoidRootPart to exist

-- Function to teleport to all CoinButton parts inside specific models for Coin-related parts
local function teleportToAllCoinButtons()
    -- Ensure the PlantLanes exists in workspace
    local plantLanes = workspace:WaitForChild("PlantLanes")
    
    -- List of model names with Coin-related parts
    local validModels = {
        "Marigold", "TwinMarigold", "GoldenMagnet"
    }

    -- Loop through all models inside PlantLanes
    for _, model in pairs(plantLanes:GetDescendants()) do
        -- Check if the model is valid and contains a CoinButton
        if model:IsA("Model") and table.find(validModels, model.Name) then
            local coinButton = model:FindFirstChild("CoinButton")
            if coinButton and coinButton:IsA("Part") then
                -- Teleport the player to the CoinButton position by directly setting CFrame
                humanoidRootPart.CFrame = CFrame.new(coinButton.Position) -- Teleport to CoinButton
                wait() -- Wait a short amount of time before moving to the next CoinButton
            end
        end
    end
end

-- Call the function to teleport to all CoinButton positions
teleportToAllCoinButtons()

   end,
})

Rayfield:LoadConfiguration()
