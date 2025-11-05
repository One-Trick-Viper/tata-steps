sound.Add({
    name = "breath.loop",
    channel = CHAN_VOICE,
    volume = 0.3,
    level = 80,
    sound = {"breathing_loop.wav"}
})

sound.Add({
    name = "breath.end",
    channel = CHAN_VOICE,
    volume = 0.2,
    level = 80,
    sound = {"breathing_end.wav"}
})

sound.Add({
    name = "indoor.walk",
    channel = CHAN_INDOORLAYER,
    volume = 0.5,
    level = 80,
    pitch = {80, 110},
    sound = {"steps/indoor-walk-01.ogg", "steps/indoor-walk-02.ogg", "steps/indoor-walk-03.ogg",
             "steps/indoor-walk-04.ogg", "steps/indoor-walk-05.ogg", "steps/indoor-walk-06.ogg"}
})

sound.Add({
    name = "indoor.sprint",
    channel = CHAN_INDOORLAYER,
    volume = 0.5,
    level = 80,
    pitch = {80, 110},
    sound = {"steps/indoor-layer-01.ogg", "steps/indoor-layer-02.ogg", "steps/indoor-layer-03.ogg",
             "steps/indoor-layer-04.ogg", "steps/indoor-layer-05.ogg", "steps/indoor-layer-06.ogg"}
})

sound.Add({
    name = "wet.add",
    channel = CHAN_WETLAYER,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/wet-01.ogg", "steps/wet-02.ogg", "steps/wet-03.ogg", "steps/wet-04.ogg",
             "steps/wet-05.ogg", "steps/wet-06.ogg"}
})

sound.Add({
    name = "water.ankle",
    channel = CHAN_WATERLAYER,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/water-ankle-01.ogg", "steps/water-ankle-02.ogg", "steps/water-ankle-03.ogg",
             "steps/water-ankle-04.ogg", "steps/water-ankle-05.ogg", "steps/water-ankle-06.ogg"}
})

sound.Add({
    name = "water.waist",
    channel = CHAN_WATERLAYER,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/water-waist-01.ogg", "steps/water-waist-02.ogg", "steps/water-waist-03.ogg",
             "steps/water-waist-04.ogg", "steps/water-waist-05.ogg", "steps/water-waist-06.ogg"}
})

sound.Add({
    name = "tarmac.walk",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {80, 110},
    sound = {"steps/tarmac-walk-01.ogg", "steps/tarmac-walk-02.ogg", "steps/tarmac-walk-03.ogg",
             "steps/tarmac-walk-04.ogg", "steps/tarmac-walk-05.ogg", "steps/tarmac-walk-06.ogg"}
})

sound.Add({
    name = "tarmac.sprint",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/tarmac-sprint-01.ogg", "steps/tarmac-sprint-02.ogg", "steps/tarmac-sprint-03.ogg",
             "steps/tarmac-sprint-04.ogg", "steps/tarmac-sprint-05.ogg", "steps/tarmac-sprint-06.ogg"}
})

sound.Add({
    name = "rock.walk",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {80, 110},
    sound = {"steps/rock-walk-01.ogg", "steps/rock-walk-02.ogg", "steps/rock-walk-03.ogg", "steps/rock-walk-04.ogg",
             "steps/rock-walk-05.ogg", "steps/rock-walk-06.ogg"}
})

sound.Add({
    name = "rock.sprint",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/rock-sprint-01.ogg", "steps/rock-sprint-02.ogg", "steps/rock-sprint-03.ogg",
             "steps/rock-sprint-04.ogg", "steps/rock-sprint-05.ogg", "steps/rock-sprint-06.ogg"}
})

sound.Add({
    name = "grass.walk",
    channel = CHAN_BODY,
    volume = 0.5,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/grass-walk-01.ogg", "steps/grass-walk-02.ogg", "steps/grass-walk-03.ogg", "steps/grass-walk-04.ogg",
             "steps/grass-walk-05.ogg", "steps/grass-walk-06.ogg"}
})

sound.Add({
    name = "grass.sprint",
    channel = CHAN_BODY,
    volume = 0.5,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/grass-sprint-01.ogg", "steps/grass-sprint-02.ogg", "steps/grass-sprint-03.ogg",
             "steps/grass-sprint-04.ogg", "steps/grass-sprint-05.ogg", "steps/grass-sprint-06.ogg"}
})

sound.Add({
    name = "dirt.walk",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/dirt-walk-01.ogg", "steps/dirt-walk-02.ogg", "steps/dirt-walk-03.ogg", "steps/dirt-walk-04.ogg",
             "steps/dirt-walk-05.ogg", "steps/dirt-walk-06.ogg"}
})

sound.Add({
    name = "dirt.sprint",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/dirt-sprint-01.ogg", "steps/dirt-sprint-02.ogg", "steps/dirt-sprint-03.ogg",
             "steps/dirt-sprint-04.ogg", "steps/dirt-sprint-05.ogg", "steps/dirt-sprint-06.ogg"}
})

sound.Add({
    name = "metal.walk",
    channel = CHAN_BODY,
    volume = 0.5,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/solidmetal-walk-01.ogg", "steps/solidmetal-walk-02.ogg", "steps/solidmetal-walk-03.ogg", "steps/solidmetal-walk-04.ogg",
             "steps/solidmetal-walk-05.ogg", "steps/solidmetal-walk-06.ogg"}
})

sound.Add({
    name = "metal.sprint",
    channel = CHAN_BODY,
    volume = 0.5,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/solidmetal-sprint-01.ogg", "steps/solidmetal-sprint-02.ogg", "steps/solidmetal-sprint-03.ogg",
             "steps/solidmetal-sprint-04.ogg", "steps/solidmetal-sprint-05.ogg", "steps/solidmetal-sprint-06.ogg"}
})

sound.Add({
    name = "metalhollow.walk",
    channel = CHAN_BODY,
    volume = 0.5,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/metalhollow-walk-01.ogg", "steps/metalhollow-walk-02.ogg", "steps/metalhollow-walk-03.ogg",
             "steps/metalhollow-walk-04.ogg", "steps/metalhollow-walk-05.ogg", "steps/metalhollow-walk-06.ogg"}
})

sound.Add({
    name = "metalhollow.sprint",
    channel = CHAN_BODY,
    volume = 0.5,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/metalhollow-sprint-01.ogg", "steps/metalhollow-sprint-02.ogg", "steps/metalhollow-sprint-03.ogg",
             "steps/metalhollow-sprint-04.ogg", "steps/metalhollow-sprint-05.ogg", "steps/metalhollow-sprint-06.ogg"}
})

sound.Add({
    name = "metalgrate.walk",
    channel = CHAN_BODY,
    volume = 0.5,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/metalgrate-walk-01.ogg", "steps/metalgrate-walk-02.ogg", "steps/metalgrate-walk-03.ogg",
             "steps/metalgrate-walk-04.ogg", "steps/metalgrate-walk-05.ogg", "steps/metalgrate-walk-06.ogg"}
})

sound.Add({
    name = "metalgrate.sprint",
    channel = CHAN_BODY,
    volume = 0.5,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/metalgrate-sprint-01.ogg", "steps/metalgrate-sprint-02.ogg", "steps/metalgrate-sprint-03.ogg",
             "steps/metalgrate-sprint-04.ogg", "steps/metalgrate-sprint-05.ogg", "steps/metalgrate-sprint-06.ogg"}
})

sound.Add({
    name = "snow.walk",
    channel = CHAN_BODY,
    volume = 0.5,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/snow-walk-01.ogg", "steps/snow-walk-02.ogg", "steps/snow-walk-03.ogg", "steps/snow-walk-04.ogg",
             "steps/snow-walk-05.ogg", "steps/snow-walk-06.ogg"}
})

sound.Add({
    name = "snow.sprint",
    channel = CHAN_BODY,
    volume = 0.5,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/snow-sprint-01.ogg", "steps/snow-sprint-02.ogg", "steps/snow-sprint-03.ogg",
             "steps/snow-sprint-04.ogg", "steps/snow-sprint-05.ogg", "steps/snow-sprint-06.ogg"}
})

sound.Add({
    name = "ice.walk",
    channel = CHAN_BODY,
    volume = 0.5,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/ice-walk-01.ogg", "steps/ice-walk-02.ogg", "steps/ice-walk-03.ogg", "steps/ice-walk-04.ogg",
             "steps/ice-walk-05.ogg", "steps/ice-walk-06.ogg"}
})

sound.Add({
    name = "ice.sprint",
    channel = CHAN_BODY,
    volume = 0.5,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/ice-sprint-01.ogg", "steps/ice-sprint-02.ogg", "steps/ice-sprint-03.ogg", "steps/ice-sprint-04.ogg",
             "steps/ice-sprint-05.ogg", "steps/ice-sprint-06.ogg"}
})

sound.Add({
    name = "wood.walk",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/wood-walk-01.ogg", "steps/wood-walk-02.ogg", "steps/wood-walk-03.ogg", "steps/wood-walk-04.ogg",
             "steps/wood-walk-05.ogg", "steps/wood-walk-06.ogg"}
})

sound.Add({
    name = "wood.sprint",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/wood-sprint-01.ogg", "steps/wood-sprint-02.ogg", "steps/wood-sprint-03.ogg",
             "steps/wood-sprint-04.ogg", "steps/wood-sprint-05.ogg", "steps/wood-sprint-06.ogg"}
})

sound.Add({
    name = "carpet.walk",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/carpet-walk-01.ogg", "steps/carpet-walk-02.ogg", "steps/carpet-walk-03.ogg",
             "steps/carpet-walk-04.ogg", "steps/carpet-walk-05.ogg", "steps/carpet-walk-06.ogg"}
})

sound.Add({
    name = "carpet.sprint",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/carpet-sprint-01.ogg", "steps/carpet-sprint-02.ogg", "steps/carpet-sprint-03.ogg",
             "steps/carpet-sprint-04.ogg", "steps/carpet-sprint-05.ogg", "steps/carpet-sprint-06.ogg"}
})

sound.Add({
    name = "metalthin.walk",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/metalthin-walk-01.ogg", "steps/metalthin-walk-02.ogg", "steps/metalthin-walk-03.ogg",
             "steps/metalthin-walk-04.ogg", "steps/metalthin-walk-05.ogg", "steps/metalthin-walk-06.ogg"}
})

sound.Add({
    name = "metalthin.sprint",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/metalthin-sprint-01.ogg", "steps/metalthin-sprint-02.ogg", "steps/metalthin-sprint-03.ogg",
             "steps/metalthin-sprint-04.ogg", "steps/metalthin-sprint-05.ogg", "steps/metalthin-sprint-06.ogg"}
})

sound.Add({
    name = "woodpanel.walk",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/woodpanel-walk-01.ogg", "steps/woodpanel-walk-02.ogg", "steps/woodpanel-walk-03.ogg",
             "steps/woodpanel-walk-04.ogg", "steps/woodpanel-walk-05.ogg", "steps/woodpanel-walk-06.ogg"}
})

sound.Add({
    name = "woodpanel.sprint",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/woodpanel-sprint-01.ogg", "steps/woodpanel-sprint-02.ogg", "steps/woodpanel-sprint-03.ogg",
             "steps/woodpanel-sprint-04.ogg", "steps/woodpanel-sprint-05.ogg", "steps/woodpanel-sprint-06.ogg"}
})

sound.Add({
    name = "glass.walk",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/glass-walk-01.ogg", "steps/glass-walk-02.ogg", "steps/glass-walk-03.ogg", "steps/glass-walk-04.ogg",
             "steps/glass-walk-05.ogg", "steps/glass-walk-06.ogg"}
})

sound.Add({
    name = "glass.sprint",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/glass-sprint-01.ogg", "steps/glass-sprint-02.ogg", "steps/glass-sprint-03.ogg",
             "steps/glass-sprint-04.ogg", "steps/glass-sprint-05.ogg", "steps/glass-sprint-06.ogg"}
})

sound.Add({
    name = "woodcrate.walk",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/woodcrate-walk-01.ogg", "steps/woodcrate-walk-02.ogg", "steps/woodcrate-walk-03.ogg",
             "steps/woodcrate-walk-04.ogg", "steps/woodcrate-walk-05.ogg", "steps/woodcrate-walk-06.ogg"}
})

sound.Add({
    name = "woodcrate.sprint",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/woodcrate-sprint-01.ogg", "steps/woodcrate-sprint-02.ogg", "steps/woodcrate-sprint-03.ogg",
             "steps/woodcrate-sprint-04.ogg", "steps/woodcrate-sprint-05.ogg", "steps/woodcrate-sprint-06.ogg"}
})

sound.Add({
    name = "chainlink.walk",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/chainlink-walk-01.ogg", "steps/chainlink-walk-02.ogg", "steps/chainlink-walk-03.ogg",
             "steps/chainlink-walk-04.ogg", "steps/chainlink-walk-05.ogg", "steps/chainlink-walk-06.ogg"}
})

sound.Add({
    name = "chainlink.sprint",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/chainlink-sprint-01.ogg", "steps/chainlink-sprint-02.ogg", "steps/chainlink-sprint-03.ogg",
             "steps/chainlink-sprint-04.ogg", "steps/chainlink-sprint-05.ogg", "steps/chainlink-sprint-06.ogg"}
})

sound.Add({
    name = "plastic.walk",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/plastic-walk-01.ogg", "steps/plastic-walk-02.ogg", "steps/plastic-walk-03.ogg",
             "steps/plastic-walk-04.ogg", "steps/plastic-walk-05.ogg", "steps/plastic-walk-06.ogg"}
})

sound.Add({
    name = "plastic.sprint",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/plastic-sprint-01.ogg", "steps/plastic-sprint-02.ogg", "steps/plastic-sprint-03.ogg",
             "steps/plastic-sprint-04.ogg", "steps/plastic-sprint-05.ogg", "steps/plastic-sprint-06.ogg"}
})

sound.Add({
    name = "gravel.walk",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/gravel-walk-01.ogg", "steps/gravel-walk-02.ogg", "steps/gravel-walk-03.ogg",
             "steps/gravel-walk-04.ogg", "steps/gravel-walk-05.ogg", "steps/gravel-walk-06.ogg"}
})

sound.Add({
    name = "gravel.sprint",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/gravel-sprint-01.ogg", "steps/gravel-sprint-02.ogg", "steps/gravel-sprint-03.ogg",
             "steps/gravel-sprint-04.ogg", "steps/gravel-sprint-05.ogg", "steps/gravel-sprint-06.ogg"}
})

sound.Add({
    name = "wood.creak",
    channel = 211,
    volume = 1,
    level = 80,
    pitch = {75, 130},
    sound = {"steps/wood-creak-01.ogg", "steps/wood-creak-02.ogg", "steps/wood-creak-03.ogg", "steps/wood-creak-04.ogg",
             "steps/wood-creak-05.ogg", "steps/wood-creak-06.ogg"}
})

sound.Add({
    name = "tile.walk",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {150},
    sound = {"steps/tile-walk-01.ogg", "steps/tile-walk-02.ogg", "steps/tile-walk-03.ogg", "steps/tile-walk-04.ogg",
             "steps/tile-walk-05.ogg", "steps/tile-walk-06.ogg"}
})

sound.Add({
    name = "tile.sprint",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {150},
    sound = {"steps/tile-sprint-01.ogg", "steps/tile-sprint-02.ogg", "steps/tile-sprint-03.ogg",
             "steps/tile-sprint-04.ogg", "steps/tile-sprint-05.ogg", "steps/tile-sprint-06.ogg"}
})

sound.Add({
    name = "mud.walk",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {80, 110},
    sound = {"steps/mud-walk-01.ogg", "steps/mud-walk-02.ogg", "steps/mud-walk-03.ogg", "steps/mud-walk-04.ogg",
             "steps/mud-walk-05.ogg", "steps/mud-walk-06.ogg"}
})

sound.Add({
    name = "mud.sprint",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {80, 110},
    sound = {"steps/mud-sprint-01.ogg", "steps/mud-sprint-02.ogg", "steps/mud-sprint-03.ogg", "steps/mud-sprint-04.ogg",
             "steps/mud-sprint-05.ogg", "steps/mud-sprint-06.ogg"}
})

sound.Add({
    name = "sand.walk",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/sand-walk-01.ogg", "steps/sand-walk-02.ogg", "steps/sand-walk-03.ogg", "steps/sand-walk-04.ogg",
             "steps/sand-walk-05.ogg", "steps/sand-walk-06.ogg"}
})

sound.Add({
    name = "sand.sprint",
    channel = CHAN_BODY,
    volume = 1,
    level = 80,
    pitch = {95, 110},
    sound = {"steps/sand-sprint-01.ogg", "steps/sand-sprint-02.ogg", "steps/sand-sprint-03.ogg",
             "steps/sand-sprint-04.ogg", "steps/sand-sprint-05.ogg", "steps/sand-sprint-06.ogg"}
})
