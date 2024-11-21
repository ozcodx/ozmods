function remove_rings()
    for index, func in pairs(core.registered_on_generateds) do
        local info = debug.getinfo(func)
        local source = info.source
        local modname = string.match(source, ".+/([^/]+)/[^/]+$")
        if modname == "rings" then
            table.remove(core.registered_on_generateds, index)
            core.debug("function removed by remove_rings")
        end
    end
end

remove_rings()