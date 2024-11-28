local excludeRecipes = {
	-- List of recycling recipes that should stay hidden (and shouldn't really have been created in the first place)
	["rocket-part-recycling"] = true,
	["linked-belt-recycling"] = true,

	["blueprint-recycling"] = true,
	["deconstruction-planner-recycling"] = true,
	["upgrade-planner-recycling"] = true,
	["blueprint-book-recycling"] = true,

	["copy-paste-tool-recycling"] = true,
	["cut-paste-tool-recycling"] = true,
	["selection-tool-recycling"] = true,

	["empty-module-slot-recycling"] = true,
	["science-recycling"] = true,

	["simple-entity-with-force-recycling"] = true,
	["simple-entity-with-owner-recycling"] = true,
	["burner-generator-recycling"] = true,

	["heat-interface-recycling"] = true,
	["electric-energy-interface-recycling"] = true,
	["turbo-loader-recycling"] = true,
	["express-loader-recycling"] = true,
	["fast-loader-recycling"] = true,
	["loader-recycling"] = true,
	["infinity-pipe-recycling"] = true,
	["infinity-chest-recycling"] = true,
	["item-unknown-recycling"] = true,
	["space-platform-hub-recycling"] = true,

	["parameter-0-recycling"] = true,
	["parameter-1-recycling"] = true,
	["parameter-2-recycling"] = true,
	["parameter-3-recycling"] = true,
	["parameter-4-recycling"] = true,
	["parameter-5-recycling"] = true,
	["parameter-6-recycling"] = true,
	["parameter-7-recycling"] = true,
	["parameter-8-recycling"] = true,
	["parameter-9-recycling"] = true,

	["vehicle-machine-gun-recycling"] = true,
	["tank-flamethrower-recycling"] = true,
	["tank-machine-gun-recycling"] = true,
	["tank-cannon-recycling"] = true,
	["spidertron-rocket-launcher-1-recycling"] = true,
	["spidertron-rocket-launcher-2-recycling"] = true,
	["spidertron-rocket-launcher-3-recycling"] = true,
	["spidertron-rocket-launcher-4-recycling"] = true,
	["artillery-wagon-cannon-recycling"] = true,

	["spidertron-remote-recycling"] = true,
	["discharge-defense-remote-recycling"] = true,
	["artillery-targeting-remote-recycling"] = true,
	["green-wire-recycling"] = true,
	["red-wire-recycling"] = true,

	-- For my mods Railgun Spidertron and Tesla Spidertron.
	["spidertron-railgun-recycling"] = true,
	["spidertron-teslagun-recycling"] = true,
}

for _, recipe in pairs(data.raw.recipe) do
	if recipe.category == "recycling" then
		if not excludeRecipes[recipe.name] then
			recipe.hidden_in_factoriopedia = false
		end
	end
end