--- STEAMODDED HEADER
--- MOD_NAME: Alternative Soundtrack
--- MOD_ID: AltSoundtrack
--- PREFIX: alt_ost
--- MOD_AUTHOR: [Hoverman]
--- MOD_DESCRIPTION: Replaces the ingame music with original music by Hoverman
--- DEPENDENCIES: [Steamodded>=1.0.0~ALPHA-0909a]

SMODS.Sound({
    vol = 1.0,
    pitch = 1,
    key = "music_normal",
    path = "music_normal.ogg",
    select_music_track = function()
		return ((1 and not (G.booster_pack or G.shop or (G.GAME and G.GAME.blind and G.GAME.blind.boss))))
    end,
})

SMODS.Sound({
    vol = 1.0,
    pitch = 1,
    key = "music_tarot",
    path = "music_tarot.ogg",
    select_music_track = function()
        return (G.GAME and G.booster_pack and not (G.booster_pack_meteors))
    end,
})

SMODS.Sound({
    vol = 1.0,
    pitch = 1,
    key = "music_planet",
    path = "music_planet.ogg",
    select_music_track = function()
        return (G.GAME and G.booster_pack and G.booster_pack_meteors)
    end,
})

SMODS.Sound({
    vol = 1.0,
    pitch = 1,
    key = "music_shop",
    path = "music_shop.ogg",
    select_music_track = function()
        return (G.GAME and G.shop)
    end,
})

SMODS.Sound({
    vol = 1.0,
    pitch = 1,
    key = "music_boss",
    path = "music_boss.ogg",
    select_music_track = function()
        return (G.GAME and G.GAME.blind and G.GAME.blind.boss)
    end,
})
