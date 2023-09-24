--[[
    --//                     Usage;                     --\\
        Calling Notification:
            - grek.Notifications.new(Time, Text, SoundId, Accent)
            Parameters:
                - Number - Time: Duration of the notification
                - String - Text: Text Displayed on the notification
                - String - SoundId: Sound played on notification
                - Color3 - Accent: Accent color of the notification
            Optional Parameters:
                - String - SoundId: Use "No" instead of an String
                - Color3 - Accent: Use "No" instead of an Color3
    --//            Notification Library by grek          --\\
                   You can use this in loadstring!
loadstring(game:HttpGet('https://raw.githubusercontent.com/grekkk/projects/main/Notification.lua'))()
]]

--// Notification
getgenv().grek = {state = false, Objects = {CoreGui = game.CoreGui}, Notifications = {}, functions = {}}
--// Initiate
grek.functions.Initiate = function(Function)
    if not grek.state then
        grek.state = not grek.state
        Function(5, "grek", "4835664238", Color3.new(1, 1, 1))
    end
end
--// Raw Tween Function
grek.functions.Tween = function(Object, Size1, Size2, Size3, Size4, Speed)
    Object:TweenSize(UDim2.new(Size1, Size2, Size3, Size4), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, Speed, true)
end
--// Calling new Notification
grek.Notifications.New = function(Time, Text, SoundId, Accent)
    if SoundId == "No" then
        SoundId = "7146792142"
    end
    if Accent == "No" then
        Accent = Color3.new(1, 1, 1)
    end
    return grek.functions.Notification(Time, Text, SoundId, Accent)
end
--// Notification Function
grek.functions.Notification = function(Time, Text, SoundId, Accent)
    if grek.state then
        coroutine.resume(coroutine.create(function()
            pcall(function()
                if not Time then
                    Time = 3
                    Text = "Error [Missing Parameter]"
                    SoundId = "4835664238"
                    Accent = Color3.new(1, 0, 0)
                elseif not Text then
                    Time = 3
                    Text = "Error [Missing Parameter]"
                    SoundId = "4835664238"
                    Accent = Color3.new(1, 0, 0)
                elseif not Accent then
                    Time = 3
                    Text = "Error [Missing Parameter]"
                    SoundId = "4835664238"
                    Accent = Color3.new(1, 0, 0)
                elseif not SoundId then
                    Time = 3
                    Text = "Error [Missing Parameter]"
                    SoundId = "4835664238"
                    Accent = Color3.new(1, 0, 0)
                elseif not grek.Objects.CoreGui:FindFirstChild("grek") then
                    local grek = Instance.new("ScreenGui")
                    local frame = Instance.new("Frame")
                    local UIListLayout = Instance.new("UIListLayout")
                    grek.Name = "grek"
                    grek.Parent = game.CoreGui
                    grek.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    frame.Name = "frame"
                    frame.Parent = grek
                    frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    frame.BackgroundTransparency = 1.000
                    frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    frame.BorderSizePixel = 0
                    frame.Position = UDim2.new(0, 25, 0, 25)
                    UIListLayout.Parent = frame
                    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                    UIListLayout.Padding = UDim.new(0, 10)
                end
                local grek_1 = Instance.new("Frame", grek.Objects.CoreGui:FindFirstChild("grek").frame)
                local grek_2 = Instance.new("Frame")
                local grek_3 = Instance.new("Frame")
                local grek_4 = Instance.new("TextLabel")
                local grek_5 = Instance.new("Frame")
                grek_1.Name = "grek_"..tostring(math.random(1000,9999))
                grek_1.BackgroundColor3 = Accent
                grek_1.BorderColor3 = Color3.fromRGB(10, 10, 10)
                grek_1.Position = UDim2.new(0.0, 0.0, 0.0, 0.0)
                grek_1.Size = UDim2.new(0, 0, 0, 40)
                grek_2.Name = "grek_2"
                grek_2.Parent = grek_1
                grek_2.Transparency = 1.00
                grek_2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                grek_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
                grek_2.BorderSizePixel = 0
                grek_2.Position = UDim2.new(0.5, -124, 0.5, -19)
                grek_2.Size = UDim2.new(0, 248, 0, 38)
                grek_3.Name = "grek_3"
                grek_3.Parent = grek_2
                grek_3.Transparency = 1.00
                grek_3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                grek_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
                grek_3.BorderSizePixel = 0
                grek_3.Position = UDim2.new(0.5, -120, 0.5, -15)
                grek_3.Size = UDim2.new(0, 240, 0, 30)
                grek_4.Name = "grek_4"
                grek_4.Parent = grek_3
                grek_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                grek_4.BackgroundTransparency = 1.000
                grek_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
                grek_4.BorderSizePixel = 0
                grek_4.Position = UDim2.new(0.0299999993, 0, 0, 0)
                grek_4.Size = UDim2.new(0, 235, 0, 29)
                grek_4.Font = Enum.Font.RobotoMono
                grek_4.Text = Text
                grek_4.TextColor3 = Color3.fromRGB(255, 255, 255)
                grek_4.TextSize = 14.000
                grek_4.TextStrokeColor3 = Color3.fromRGB(10, 10, 10)
                grek_4.TextTransparency = 1.00
                grek_4.TextStrokeTransparency = 0.000
                grek_4.TextXAlignment = Enum.TextXAlignment.Left
                grek_5.Name = "grek_5"
                grek_5.Parent = grek_3
                grek_5.Transparency = 1.00
                grek_5.BackgroundColor3 = Accent
                grek_5.BorderColor3 = Color3.fromRGB(10, 10, 10)
                grek_5.Position = UDim2.new(0.5, -119, 1, -2)
                grek_5.Size = UDim2.new(0, 238, 0, 1)
                grek.functions.Tween(grek_1, 0, 250, 0, 40, 0.4)
                wait(0.4)
                for i,v in pairs(grek_1:GetDescendants()) do
                    for i = 1, 0, -0.1 do
                        for _,v in pairs(grek_1:GetDescendants()) do
                            if v.ClassName == "Frame" then
                                v.BackgroundTransparency = i
                            end
                        end
                        for _,v in pairs(grek_1:GetDescendants()) do
                            if v.ClassName == "TextLabel" then
                                v.TextTransparency = i
                            end
                        end
                    end
                end
                coroutine.resume(coroutine.create(function()
                    local Sound = Instance.new("Sound")
                    Sound.Name = "Notification_Sound_"..math.random(1,99)
                    Sound.SoundId = "http://www.roblox.com/asset/?id="..tostring(SoundId)
                    Sound.Volume = 2
                    Sound.Looped = false
                    Sound.archivable = false
                    Sound.Parent = game.Workspace
                    Sound:Play()
                    wait(1.4)
                    for i = Sound.Volume, 0, -0.1 do
                        Sound.Volume = i
                        task.wait(0.01)
                    end
                    Sound:Destroy()
                end))
                grek.functions.Tween(grek_5, 0, 0, 0, 1, Time)
                wait(Time)
                for i,v in pairs(grek_1:GetDescendants()) do
                    for i = 0, 1, 0.1 do
                        for _,v in pairs(grek_1:GetDescendants()) do
                            if v.ClassName == "Frame" then
                                v.BackgroundTransparency = i
                            end
                        end
                        for _,v in pairs(grek_1:GetDescendants()) do
                            if v.ClassName == "TextLabel" then
                                v.TextTransparency = i
                            end
                        end
                    end
                end
                grek.functions.Tween(grek_1, 0, 0, 0, 40, 0.4)
                wait(0.4)
                grek_1:Destroy()
            end)
        end))
    end
end
grek.functions.Initiate(grek.functions.Notification)
