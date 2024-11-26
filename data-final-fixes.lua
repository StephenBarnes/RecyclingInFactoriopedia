for _, recipe in pairs(data.raw.recipe) do
	if recipe.category == "recycling" then
		if recipe.name ~= "rocket-part-recycling" then
			recipe.hidden = false
		end
	end
end