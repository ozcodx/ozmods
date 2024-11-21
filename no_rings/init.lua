
core.debug("Hello?")

gens = core.registered_on_generateds

for key, value in pairs(gens) do
    minetest.debug(key .. ": " .. tostring(value))
end

core.debug("Info 2")
targetfun = gens[2]

info = debug.getinfo(targetfun)

for key, value in pairs(info) do
    minetest.debug(key .. ": " .. tostring(value))
end

targetsrc = info.source

local targetmodname = string.match(targetsrc, ".+/([^/]+)/[^/]+$")

core.debug("modname: ".. targetmodname)

table.remove(core.registered_on_generateds, 2)


core.debug("Hello Again!")

gens = core.registered_on_generateds

for key, value in pairs(gens) do
    minetest.debug(key .. ": " .. tostring(value))
end
