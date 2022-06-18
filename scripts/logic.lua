-- Item Collection

function hasItem(item)
    return Tracker:ProviderCountForCode(item) > 0
end

function missing(item)
    return not hasItem(item)
end

function countTanks()
    return tonumber(Tracker:ProviderCountForCode("etank") + (Tracker:ProviderCountForCode("epart") / 4))
end

-- Traversal Ability

function canHellRun(num)
    return hasItem("anysuit") or countTanks() >= num
end

function canColdRun(num)
    return hasItem("gravity") or countTanks() >= num
end

-- Event Functions

function emmiDefeated(color)
    return hasItem(color)
end
