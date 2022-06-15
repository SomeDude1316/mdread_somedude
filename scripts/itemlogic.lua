-- Item Collection

function hasItem(item)
    return Tracker:ProviderCountForCode(item) > 0
end

function missing(item)
    return not hasItem(item)
end

function countTanks()
    return Tracker:ProviderCountForCode("etank") + (Tracker:ProviderCountForCode("epart") / 4)
end

-- Traversal Ability

function canHellRun(num)
    if hasItem("suit") or countTanks() >= tonumber(num) then
        return 1
    end
    return 0
end

function canColdRun(num)
    if hasItem("gravity") or countTanks() >= tonumber(num) then
        return 1
    end
    return 0
end

function canBomb()
    if hasItem("morph") and (hasItem("bomb") or hasItem("cross")) then
        return 1
    end
    return 0
end

function canPowerBomb()
    if hasItem("morph") and hasItem("pb") then
        return 1
    end
    return 0
end

function canWBJ()
    if hasItem("morph") and hasItem("bomb") and missing("gravity") then
        return 1
    end
    return 0
end

function canWSJ()
    if hasItem("space") and missing("gravity") then
        return 1
    end
    return 0
end

function canFly()
    if canBomb() > 0 or hasItem("space") then
        return 1
    end
    return 0
end

function canClimb()
    if hasItem("morph") or hasItem("flash") or canFly() > 0 then
        return 1
    end
    return 0
end

function canOpenChargeDoors()
    if hasItem("charge") or canPowerBomb() > 0 then
        return 1
    end
    return 0
end

function canOpenGreenDoors()
    if hasItem("missile") then
        return 1
    end
    return 0
end

function canOpenWideDoors()
    if hasItem("beam") then
        return 1
    end
    return 0
end

function canMoveWideBlocks()
    if canOpenWideDoors() > 0 and hasItem("charge") then
        return 1
    end
    return 0
end

function canBreakDiffBlobs()
    if hasItem("diffusion") or hasItem("wave") then
        return 1
    end
    return 0
end

function canShortBoost()
    if hasItem("flash") and hasItem("speed") then
        return 1
    end
    return 0
end

function canSSC()
    if canShortBoost() > 0 and hasItem("grapple") then
        return 1
    end
    return 0
end

-- Event Functions

function eventQuietRobe()
    if hasItem("qr") then
        return 1
    end
    return 0
end

function eventReleaseX()
    if hasItem("x") then
        return 1
    end
    return 0
end

function emmiDefeated(color)
    if hasItem(color) then
        return 1
    end
    return 0
end
