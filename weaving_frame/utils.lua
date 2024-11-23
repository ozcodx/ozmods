function increase_recipe_level(recipe_output, workbench)
	for idx, recipes in pairs(crafting.recipes) do
		for ydx, recipe in pairs(recipes) do
			local result = recipe.output
			local crafttype = recipe.type
			if result == recipe_output and crafttype == workbench then
				core.debug("[weaving_frame] update " .. recipe_output .. " at ".. workbench .." station")
				crafting.recipes[idx][ydx].level = 3
			end
		end
	end
end

function remove_recipe(recipe_output, workbench)
	for idx, recipes in pairs(crafting.recipes) do
		for ydx, recipe in pairs(recipes) do
			local result = recipe.output
			local crafttype = recipe.type
			if result == recipe_output and crafttype == workbench then
				core.debug("[weaving_frame] removed " .. recipe_output .. " at " .. workbench .." station")
				table.remove(crafting.recipes[idx], ydx)
			end
		end
	end
end

function remove_node( nodename )
	core.registered_nodes[nodename] = nil
    core.debug("Node '" .. nodename .. "' has been removed.")
end