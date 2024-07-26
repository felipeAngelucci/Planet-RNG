return {
	getRandomIndex = function(chances)
		for i, v in ipairs(chances) do
			local randomNum = math.random(1, v[2])
			if randomNum == 1 and v[2] > chances[1][2] then
				return {
					v[1];
					v[2];
					v[3];
				}
			end
		end

		return chances[1]
	end,
}
