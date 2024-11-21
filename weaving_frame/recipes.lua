----Wattle from sticks
crafting.register_recipe({
	type = "crafting_spot",
	output = "weaving_frame:frame",
	items = {"tech:stick 12"},
	level = 1,
	always_known = true,
})

increase_recipe_level("tech:woven_cape","weaving_frame")
increase_recipe_level("tech:woven_blanket","weaving_frame")
remove_recipe("tech:weaving_spot", "inv")