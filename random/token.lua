--[[
    @author - larry (@hexshift)
    @func   - infinite token
    @game   - https://www.roblox.com/games/115270811776632/i-like-plinko-RNG
]]--

while task.wait() do
    game:GetService("MarketplaceService"):SignalPromptProductPurchaseFinished(game.Players.LocalPlayer.UserId, 1939805878, true)
end

-- silly unsecure transactions!!! 
-- i think if you go over something like 1m you won't show on the leaderboard