--[[
    @author - larry (@hexshift)
    @func   - get all weapons
    @game   - https://www.roblox.com/games/18999776880/Better-Music
]]--

local weaponlist = {}
local weaponfolder = game:GetService('ReplicatedStorage'):WaitForChild('Weapons')

for _,v in ipairs(weaponfolder:GetDescendants()) do
    if v:IsA('Model') and v.Parent.Name == 'Common' or v.Parent.Name == 'Epic' or v.Parent.Name == 'Legendary' or v.Parent.Name == 'Unknown' then
        table.insert(weaponlist, v.Name)
        --[[ test shit (useless) ]]
        -- print(weaponlist, v.Name)
    end
end

for i=1, #weaponlist do 
    game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('UnlockWeapon'):FireServer(weaponlist[i])
end