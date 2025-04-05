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
local player = game.Players.LocalPlayer  -- Get the local player
local character = player.Character or player.CharacterAdded:Wait()  -- Ensure the character is loaded
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")  -- Wait for HumanoidRootPart to exist

-- Function to fire touch interest on all SunButton parts
local function fireSunButtonTouch()
    -- Loop through all PlantLanes and check for SunButton parts
    for _, item in pairs(workspace.PlantLanes:GetDescendants()) do
        -- Check if the part is named "SunButton" and is a valid part
        if item:IsA("Part") and item.Name == "SunButton" then
            -- Ensure humanoidRootPart is still valid
            if humanoidRootPart and item.Parent then
                firetouchinterest(humanoidRootPart, item, 0)
            end
        end
    end
end

-- Call the function to fire the touch interest
fireSunButtonTouch()

end
})

local Button = Tab:CreateButton({
   Name = "Grab All Coins",
   Callback = function()
local player = game.Players.LocalPlayer  -- Get the local player
local character = player.Character or player.CharacterAdded:Wait()  -- Ensure the character is loaded
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")  -- Wait for HumanoidRootPart to exist

-- Function to fire touch interest on all CoinButton parts
local function fireCoinButtonTouch()
    -- Ensure the PlantLanes exists in workspace
    local plantLanes = workspace:WaitForChild("PlantLanes")
    
    -- Loop through all models inside PlantLanes
    for _, model in pairs(plantLanes:GetDescendants()) do
        -- Ensure the item is a model
        if model:IsA("Model") then
            -- Check if the model contains a CoinButton
            local coinButton = model:FindFirstChild("CoinButton")
            if coinButton and coinButton:IsA("Part") then
                -- Fire touch interest on CoinButton
                if humanoidRootPart then
                    firetouchinterest(humanoidRootPart, coinButton, 0)
                end
            end
        end
    end
end

-- Call the function to fire the touch interest for CoinButton
fireCoinButtonTouch()

   end,
})

Rayfield:LoadConfiguration()
