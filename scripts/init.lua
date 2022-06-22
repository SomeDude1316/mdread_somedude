-- Load foundation
ScriptHost:LoadScript("scripts/settings.lua")
ScriptHost:LoadScript("scripts/logic.lua")

-- Load items
Tracker:AddItems("items/items.json")

-- Load area maps
Tracker:AddMaps("maps/maps.json")

-- Load logic
Tracker:AddLocations("logic/abilities.json")
Tracker:AddLocations("logic/areas.json")

-- Load locations by area
Tracker:AddLocations("locations/artaria.json")
Tracker:AddLocations("locations/burenia.json")
Tracker:AddLocations("locations/cataris.json")
Tracker:AddLocations("locations/dairon.json")
Tracker:AddLocations("locations/elun.json")
Tracker:AddLocations("locations/ferenia.json")
Tracker:AddLocations("locations/ghavoran.json")
Tracker:AddLocations("locations/hanubia.json")

-- Load tracker layouts
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")