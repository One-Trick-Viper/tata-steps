local weaponcategories = {
    ["Assault Rifles"] = "rattle.rifle",
    ["Pistols"] = "rattle.pistol",
    ["Lightmachine Guns"] = "rattle.lmg",
    ["Submachine Guns"] = "rattle.smg"
}

local surfacefootsteps = {
    [MAT_CONCRETE] = "tarmac.walk",
    [MAT_GRASS] = "grass.walk",
    [MAT_DIRT] = "dirt.walk",
    [MAT_METAL] = "metal.walk",
    [MAT_SNOW] = "snow.walk",
    [MAT_WOOD] = "wood.walk",
    [MAT_TILE] = "tile.walk"
}

local surfacefootstepssprinting = {
    [MAT_CONCRETE] = "tarmac.sprint",
    [MAT_GRASS] = "grass.sprint",
    [MAT_DIRT] = "dirt.sprint",
    [MAT_METAL] = "metal.sprint",
    [MAT_SNOW] = "snow.sprint",
    [MAT_WOOD] = "wood.sprint",
    [MAT_TILE] = "tile.sprint"
}

hook.Add("PlayerFootstep", "CustomFootstep", function(ply, pos, foot, sound, volume, rf)
    local weapon = ply:GetActiveWeapon()
    local armorvalue = ply:Armor()
    -- print(weapon.SubCategory)
    -- print(weaponcategories[weapon.SubCategory])
    local sprinting = ply:KeyDown(IN_SPEED) and surfacefootstepssprinting or surfacefootsteps
    local tr = util.TraceLine({
        start = ply:GetPos(),
        endpos = ply:GetPos() + Vector(0, 0, -10),
        filter = ply
    })
    -- print(tr.MatType)
    local materialtype = tr.MatType or MAT_CONCRETE
    -- PrintTable(tr)

    if (sprinting[materialtype]) then -- lets play the sounds lol
        ply:EmitSound("scuffle.tarmac")
        ply:EmitSound(sprinting[materialtype])
        ply:EmitSound(ply:KeyDown(IN_SPEED) and "clothing.sprint" or "clothing.walk")

        if IndoorCheck(ply) then
            if (materialtype == MAT_CONCRETE or materialtype == MAT_TILE or materialtype == MAT_METAL or materialtype ==
                MAT_WOOD) and IndoorCheck(ply) then
                ply:EmitSound(ply:KeyDown(IN_SPEED) and "indoor.sprint" or "indoor.walk")
            end
        end
    end

    if armorvalue > 119 then
        ply:EmitSound(ply:KeyDown(IN_SPEED) and "superheavy.sprint" or "superheavy.walk")
    elseif armorvalue > 59 then
        ply:EmitSound(ply:KeyDown(IN_SPEED) and "heavy.sprint" or "heavy.walk")
    elseif armorvalue > 29 then
        ply:EmitSound(ply:KeyDown(IN_SPEED) and "medium.sprint" or "medium.walk")
    elseif armorvalue > 14 then
        ply:EmitSound(ply:KeyDown(IN_SPEED) and "light.sprint" or "light.walk")
    end

    if (weaponcategories[weapon.SubCategory]) and ply:KeyDown(IN_SPEED) then
        if (ply.RattleTime or 0) < CurTime() then
            ply:EmitSound(weaponcategories[weapon.SubCategory]) -- Play weapon rattle sound
            ply.RattleTime = CurTime() + 0.5
        end
    end

    return true
end)

hook.Add("OnPlayerHitGround", "LandSound", function(ply)
    ply:EmitSound("land")
end)

function IndoorCheck(ply)
    local tr = util.TraceLine({
        start = ply:GetPos(),
        endpos = ply:GetPos() + Vector(0, 0, 500),
        filter = ply
    })
    -- print("its a roof lol")
    return tr.Hit and not tr.HitSky
end

hook.Add("PlayerTick", "PlayerBreathing", function(ply)
    if CLIENT then
        return
    end
    if ply:KeyDown(IN_SPEED) and ply:IsOnGround() and ply:GetVelocity():Length() > 100 then
        if ply.BreathingStartTime == nil then
            ply.BreathingStartTime = CurTime()
        end
        print(ply.BreathingStartTime)
        if CurTime() > ply.BreathingStartTime + 10 then
            if ply.BreathingPlayed == nil then
                ply:EmitSound("breath.loop")
                ply.BreathingPlayed = true
            end
        end
    else
        ply.BreathingStartTime = nil
        if ply.BreathingPlayed == true then
            ply:EmitSound("breath.end")
        end
        ply.BreathingPlayed = nil
    end

    if ply:KeyDown(IN_DUCK) and ply:IsOnGround() then
        if ply.PlayerCrouched == nil then
            ply.PlayerCrouched = true
            ply:EmitSound("heavy.sprint")
        end
    else
        if ply.PlayerCrouched == true then
            ply:EmitSound("heavy.sprint")
            ply.PlayerCrouched = nil
        end
    end
end)
