-- time range to catch fish (seconds)
fishtrap_timer = 60

-- probability to catch a fish
probability_catch_fish = 0.1

-- max fishes in the trap
max_catched_fishes = 4

local modpath = minetest.get_modpath("fish_trap")
dofile(modpath .. "/crafts.lua")
dofile(modpath .. "/nodes.lua")
