local weaponcategories = {
    --Modern Warfare Base
    ["Assault Rifles"] = "rattle.rifle",
    ["Pistols"] = "rattle.pistol",
    ["Lightmachine Guns"] = "rattle.lmg",
    ["Submachine Guns"] = "rattle.smg",
    ["Shotguns"] = "rattle.generic",
    ["Sniper RIfles"] = "rattle.rifled",
    ["Launchers"] = "rattle.launcher",

    --ARC9 INS1
    ["Primary"] = "rattle.generic",
    ["Sidearm"] = "rattle.pistol",
}

local surfacefootsteps = {
    [0] = "tarmac.walk",
    [30] = "tarmac.walk",
    [31] = "rock.walk",
    [33] = "rock.walk",
    [12] = "grass.walk",
    [9] = "dirt.walk",
    [3] = "metal.walk",
    [81] = "metalhollow.walk",
    [66] = "metalhollow.walk",
    [2] = "metalhollow.walk",
    [8] = "metalhollow.walk",
    [6] = "metalgrate.walk",
    [44] = "snow.walk",
    [21] = "woodpanel.walk",
    [18] = "wood.walk",
    [14] = "wood.walk",
    [13] = "tile.walk",
    [34] = "gravel.walk",
    [10] = "mud.walk",
    [54] = "sand.walk",
    [7] = "metalthin.walk",
    [37] = "chainlink.walk",
    [55] = "plastic.walk",
    [28] = "glass.walk",
    [17] = "woodcrate.walk",
    [46] = "carpet.walk",
    [47] = "carpet.walk",
}

local surfacefootstepssprinting = {
    [0] = "tarmac.sprint",
    [30] = "tarmac.sprint",
    [31] = "rock.sprint",
    [33] = "rock.sprint",
    [12] = "grass.sprint",
    [9] = "dirt.sprint",
    [3] = "metal.sprint",
    [81] = "metalhollow.sprint",
    [66] = "metalhollow.sprint",
    [8] = "metalhollow.sprint",
    [2] = "metalhollow.sprint",
    [6] = "metalgrate.sprint",
    [44] = "snow.sprint",
    [21] = "woodpanel.sprint",
    [18] = "wood.sprint",
    [14] = "wood.sprint",
    [13] = "tile.sprint",
    [34] = "gravel.sprint",
    [10] = "mud.sprint",
    [54] = "sand.sprint",
    [7] = "metalthin.sprint",
    [37] = "chainlink.sprint",
    [55] = "plastic.sprint",
    [28] = "glass.sprint",
    [17] = "woodcrate.sprint",
    [46] = "carpet.sprint",
    [47] = "carpet.sprint",
}

hook.Add("PlayerFootstep", "CustomFootstep", function(ply, pos, foot, sound, volume, rf)
    local weapon = ply:GetActiveWeapon()
    local armorvalue = ply:Armor()
    local waterlevel = ply:WaterLevel()

    local rain = ents.FindByClass("func_precipitation") [1]
    -- print( rain:GetInternalVariable( "preciptype" ) ) 
    local preciptype = 99
    if IsValid(rain) then
        preciptype = rain:GetInternalVariable( "preciptype" )
    end
    local israining = preciptype == 0 or preciptype == 4

    -- print(weapon.SubCategory)
    -- print(weaponcategories[weapon.SubCategory])
    local sprinting = ply:KeyDown(IN_SPEED) and surfacefootstepssprinting or surfacefootsteps
    local tr = util.TraceLine({
        start = ply:GetPos(),
        endpos = ply:GetPos() + Vector(0, 0, -10),
        filter = ply
    })
    -- print(tr.SurfaceProps)
    local materialtype = tr.SurfaceProps or 30
    -- PrintTable(tr)

    if (sprinting[materialtype]) then -- lets play the sounds lol
        ply:EmitSound("scuffle.tarmac")
        ply:EmitSound(sprinting[materialtype])
        ply:EmitSound(ply:KeyDown(IN_SPEED) and "fatigues.sprint" or "fatigues.walk")
        ply:EmitSound(ply:KeyDown(IN_SPEED) and "coat.sprint" or "coat.walk")

        if waterlevel == 1 then
            ply:EmitSound("water.ankle")
        elseif waterlevel == 2 then
            ply:EmitSound("water.waist")
        elseif waterlevel == 3 then
            ply:EmitSound("water.waist")
        end

        if ply.WaterExitTime != nil and CurTime() < ply.WaterExitTime + 7 then
            ply:EmitSound(ply:KeyDown(IN_SPEED) and "wet.sprint" or "wet.walk")
        end

        if IndoorCheck(ply) then
            if (materialtype == 30 or materialtype == 13 or materialtype == 3 or materialtype ==
                14 or materialtype == 0 or materialtype == 18) and IndoorCheck(ply) then
                ply:EmitSound(ply:KeyDown(IN_SPEED) and "indoor.sprint" or "indoor.walk")
                else
            end
        else
            if israining then
                ply:EmitSound(ply:KeyDown(IN_SPEED) and "wet.sprint" or "wet.walk")
            end
        end
    end


    --Armor values :steamhappy:
    if armorvalue > 120 then
        ply:EmitSound("superheavy")
        ply:EmitSound("bass")
    elseif armorvalue > 60 then
        ply:EmitSound("heavy")
    elseif armorvalue > 30 then
        ply:EmitSound("medium")
    elseif armorvalue > 15 then
        ply:EmitSound("light")
    end

    --Weapon rattle sound code
    if (weaponcategories[weapon.SubCategory]) and ply:KeyDown(IN_SPEED) then 
        if (ply.RattleTime or 0) < CurTime() then
            ply:EmitSound(weaponcategories[weapon.SubCategory])
            ply.RattleTime = CurTime() + 0.5
        end
    end

    --Wood creak sound code
    if (materialtype == 14 or materialtype == 18) then
        if (ply.WoodCreakTime or 0) < CurTime() then
            ply:EmitSound("wood.creak")
            ply.WoodCreakTime = CurTime() + 4
        end
    end

    return true
end)

hook.Add("OnPlayerHitGround", "LandSound", function(ply)
    ply:EmitSound("land")
end)

hook.Add("OnPlayerJump", "JumpSound", function(ply)
    ply:EmitSound("jump")
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
    local wasinwater = ply:WaterLevel()

    if CLIENT then
        return
    end

    -- if ply:KeyDown(IN_SPEED) and ply:IsOnGround() and ply:GetVelocity():Length() > 100 then
    --     if ply.BreathingStartTime == nil then
    --         ply.BreathingStartTime = CurTime()
    --     end
    --     -- print(ply.BreathingStartTime)
    --     if CurTime() > ply.BreathingStartTime + 10 then
    --         if ply.BreathingPlayed == nil then
    --             ply:EmitSound("breath.loop")
    --             ply.BreathingPlayed = true
    --         end
    --     end
    -- else
    --     ply.BreathingStartTime = nil
    --     if ply.BreathingPlayed == true then
    --         ply:EmitSound("breath.end")
    --     end
    --     ply.BreathingPlayed = nil
    -- end

    if ply:KeyDown(IN_DUCK) and ply:IsOnGround() then
        if ply.PlayerCrouched == nil then
            ply.PlayerCrouched = true
            ply:EmitSound("stand.to.crouch")
        end
    else
        if ply.PlayerCrouched == true then
            ply:EmitSound("crouch.to.stand")
            ply.PlayerCrouched = nil
        end
    end

    if wasinwater > 0 then
        ply.IsInWater = true
        ply.WaterExitTime = nil
    else
        if ply.IsInWater == true then
            ply.WaterExitTime = CurTime()
            ply.IsInWater = false
        end
    end
end)