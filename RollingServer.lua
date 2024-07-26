local replicatedStorage = game:GetService("ReplicatedStorage")
local RemoteEvents = replicatedStorage:WaitForChild("RemoteEvents")

local SelectChance = require(script:WaitForChild("SelectChance"))
local RarityList = require(script:WaitForChild("RarityList"))

local function giveNewRarity(player, value)
	local newRarity = Instance.new("StringValue", player.Inventory)
	newRarity.Name = value
end

RemoteEvents:WaitForChild("RollFunction").OnServerEvent:Connect(function(player)
	local Table = {}

	for i = 1, 10 do
		table.insert(Table, SelectChance.getRandomIndex(RarityList))
	end
	
	giveNewRarity(player, Table[10][1])

	-- Use RemoteEvent to send data back to the client
	RemoteEvents:WaitForChild("RollFunction"):FireClient(player, Table)
end)
