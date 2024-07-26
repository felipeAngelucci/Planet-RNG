local function setupLeaderstats(player)
	local leaderstats = Instance.new("Folder", player)
	leaderstats.Name = "leaderstats"
	
	local rolls = Instance.new("Folder", player)
	rolls.Name = "Rolls"
	
	local inventory = Instance.new("Folder", player)
	inventory.Name = "Inventory"
	
	local equippedRarity = Instance.new("StringValue", player)
	equippedRarity.Name = "equippedRarity"
end

game.Players.PlayerAdded:Connect(setupLeaderstats)
