CrownId = {
	2452452863
}

DiamondId = {
	2578531818,
	3545666333,
}

CheckmarkId = {
	495700965,
	3540360068,
}

local Url = game:HttpGet("https://raw.githubusercontent.com/grekkk/hoodsense/main/Database/Whitelists.txt")
function HoodsenseEmojis()
    for _,v in pairs(game:GetService('Players'):GetChildren()) do
        if table.find(CrownId, v.UserId) then
            if v.Character then
                if v.Character.Parent.Name == "Players" then
                    v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑]'..v.DisplayName)
                end
            end
        elseif table.find(DiamondId, v.UserId) then
            if v.Character then
                if v.Character.Parent.Name == "Players" then
                    v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎]'..v.DisplayName)
                end
            end
        elseif table.find(CheckmarkId, v.UserId) then
            if v.Character then
                if v.Character.Parent.Name == "Players" then
                    v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[☑️]'..v.DisplayName)
                end
            end
        elseif string.find(Url, v.UserId) then
            if v.Character then
                if v.Character.Parent.Name == "Players" then
                    v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐]'..v.DisplayName)
                end
            end
        end
        if v.Character then
            if v.Character.Parent.Name == "Players" then
                if not v.Character.UpperTorso.BodyFrontAttachment:FindFirstChild('OriginalPosition') then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😁]'..v.DisplayName)
				end
			end
        end
    end
end
local success,err = pcall(HoodsenseEmojis)
return CrownId
