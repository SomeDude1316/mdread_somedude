-- Item Collection

function hasCharge()
    local charge = Tracker:ProviderCountForCode("charge")
    if charge >= 1 then
        return 1
    end
    return 0
end

function hasDiffusion()
    local diffusion = Tracker:ProviderCountForCode("diffusion")
    if diffusion >= 1 then
        return 1
    end
    return 0
end

function hasWide()
    local wide = Tracker:ProviderCountForCode("wide")
    if wide >= 1 then
        return 1
    end
    return 0
end

function hasPlasma()
    local plasma = Tracker:ProviderCountForCode("plasma")
    if plasma >= 1 then
        return 1
    end
    return 0
end

function hasWave()
    local wave = Tracker:ProviderCountForCode("wave")
    if wave >= 1 then
        return 1
    end
    return 0
end

function hasSuper()
    local super = Tracker:ProviderCountForCode("super")
    if super >= 1 then
        return 1
    end
    return 0
end

function hasIce()
    local ice = Tracker:ProviderCountForCode("ice")
    if ice >= 1 then
        return 1
    end
    return 0
end

function hasStorm()
    local storm = Tracker:ProviderCountForCode("storm")
    if storm >= 1 then
        return 1
    end
    return 0
end

function hasVaria()
    local varia = Tracker:ProviderCountForCode("varia")
    if varia >= 1 then
        return 1
    end
    return 0
end

function hasGravity()
    local gravity = Tracker:ProviderCountForCode("gravity")
    if gravity >= 1 then
        return 1
    end
    return 0
end

function hasSpin()
    local spin = Tracker:ProviderCountForCode("spin")
    if spin >= 1 then
        return 1
    end
    return 0
end

function hasSpace()
    local space = Tracker:ProviderCountForCode("space")
    if space >= 1 then
        return 1
    end
    return 0
end

function hasMorph()
    local morph = Tracker:ProviderCountForCode("morph")
    if morph >= 1 then
        return 1
    end
    return 0
end

function hasBomb()
    local bomb = Tracker:ProviderCountForCode("bomb")
    if bomb >= 1 then
        return 1
    end
    return 0
end

function hasCross()
    local cross = Tracker:ProviderCountForCode("cross")
    if cross >= 1 then
        return 1
    end
    return 0
end

function hasRegBombs()
    if hasBomb() == 1 or hasCross() == 1 then
        return 1
    end
    return 0
end

function hasPB()
    local powerbomb = Tracker:ProviderCountForCode("powerbomb")
    if powerbomb >= 1 then
        return 1
    end
    return 0
end

function hasSlide()
    local slide = Tracker:ProviderCountForCode("slide")
    if slide >= 1 then
        return 1
    end
    return 0
end

function hasMagnet()
    local magnet = Tracker:ProviderCountForCode("magnet")
    if magnet >= 1 then
        return 1
    end
    return 0
end

function hasSpeed()
    local speed = Tracker:ProviderCountForCode("speed")
    if speed >= 1 then
        return 1
    end
    return 0
end

function hasGrapple()
    local grapple = Tracker:ProviderCountForCode("grapple")
    if grapple >= 1 then
        return 1
    end
    return 0
end

function hasScrew()
    local screw = Tracker:ProviderCountForCode("screw")
    if screw >= 1 then
        return 1
    end
    return 0
end

function hasCloak()
    local cloak = Tracker:ProviderCountForCode("cloak")
    if cloak >= 1 then
        return 1
    end
    return 0
end

function hasFlash()
    local flash = Tracker:ProviderCountForCode("flash")
    if flash >= 1 then
        return 1
    end
    return 0
end

function hasRadar()
    local radar = Tracker:ProviderCountForCode("radar")
    if radar >= 1 then
        return 1
    end
    return 0
end

-- Bosses Defeated

function emmiDefeated(color)
    local emmi = Tracker:ProviderCountForCode(color)
    if emmi >= 1 then
        return 1
    end
    return 0
end

-- Traversal Ability

function heatProof()
    return hasVaria()
end

function coldProof()
    return hasGravity()
end

function canBomb()
    if hasMorph() == 1 and (hasRegBombs() == 1 or hasPB()) == 1 then
        return 1
    end
    return 0
end

function canFly()
    if (hasMorph() == 1 and hasRegBombs() == 1) or hasSpace() == 1 then
        return 1
    end
    return 0
end

function canClimb()
    if hasMorph() == 1 or hasFlash() == 1 then
        return 1
    end
    return 0
end

function canOpenChargeDoors()
    if hasCharge() == 1 or hasDiffusion() == 1 then
        return 1
    end
    return 0
end

function canOpenGreenDoors()
    if hasSuper() == 1 or hasIce() == 1 then
        return 1
    end
    return 0
end

function canOpenWideDoors()
    if hasWide() == 1 or hasPlasma() == 1 or hasWave() == 1 then
        return 1
    end
    return 0
end

function canMoveWideBlocks()
    if canOpenWideDoors() == 1 and hasCharge() then
        return 1
    end
    return 0
end

function canBreakDiffBlobs()
    if hasDiffusion() == 1 or hasWave() == 1 then
        return 1
    end
    return 0
end

function canGrapple()
    return hasGrapple()
end

function canSSC()
    if hasFlash() == 1 and hasSpeed() == 1 and hasGrapple() == 1 then
        return 1
    end
    return 0
end

function canShortBoost()
    if hasFlash() == 1 and hasSpeed() == 1 then
        return 1
    end
    return 0
end

--Logic Functions

