-- Item Collection

function hasRegBombs()
    if Tracker:ProviderCountForCode("bomb") > 0 or Tracker:ProviderCountForCode("cross") > 0 then
        return 1
    end
    return 0
end

-- Bosses Defeated

function emmiDefeated(color)
    return Tracker:ProviderCountForCode(color)
end

-- Traversal Ability

function heatProof()
    return Tracker:ProviderCountForCode("varia")
end

function coldProof()
    return Tracker:ProviderCountForCode("gravity")
end

function canBomb()
    if Tracker:ProviderCountForCode("morph") > 0 and (hasRegBombs() > 0 or Tracker:ProviderCountForCode("pb") > 0) then
        return 1
    end
    return 0
end

function canWBJ()
    if Tracker:ProviderCountForCode("morph") > 0 and Tracker:ProviderCountForCode("bomb") > 0 then
        return 1
    end
    return 0
end

function canFly()
    if (Tracker:ProviderCountForCode("morph") > 0 and hasRegBombs() > 0) or Tracker:ProviderCountForCode("space") > 0 then
        return 1
    end
    return 0
end

function canClimb()
    if Tracker:ProviderCountForCode("morph") > 0 or Tracker:ProviderCountForCode("flash") > 0 then
        return 1
    end
    return 0
end

function canOpenChargeDoors()
    return Tracker:ProviderCountForCode("charge")
end

function canOpenGreenDoors()
    return Tracker:ProviderCountForCode("missile")
end

function canOpenWideDoors()
    return Tracker:ProviderCountForCode("beam")
end

function canMoveWideBlocks()
    if canOpenWideDoors() > 0 and Tracker:ProviderCountForCode("charge") > 0 then
        return 1
    end
    return 0
end

function canBreakDiffBlobs()
    if Tracker:ProviderCountForCode("diffusion") > 0 or Tracker:ProviderCountForCode("wave") > 0 then
        return 1
    end
    return 0
end

function canShortBoost()
    if Tracker:ProviderCountForCode("flash") > 0 and Tracker:ProviderCountForCode("speed") > 0 then
        return 1
    end
    return 0
end

function canSSC()
    if canShortBoost() and Tracker:ProviderCountForCode("grapple") > 0 > 0 then
        return 1
    end
    return 0
end

--Logic Functions

function eventQuietRobe()
    return Tracker:ProviderCountForCode("qr")
end

function eventReleaseX()
    return Tracker:ProviderCountForCode("x")
end

function safeArtaria()
    return emmiDefeated("white")
end

function safeCataris()
    return emmiDefeated("green")
end

function safeDairon()
    return emmiDefeated("yellow")
end

function safeGhavoran()
    return emmiDefeated("blue")
end

function safeFerenia()
    return emmiDefeated("purple")
end

function safeHanubia()
    return emmiDefeated("red")
end
