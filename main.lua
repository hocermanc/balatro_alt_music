--- STEAMODDED HEADER
--- MOD_NAME: Alternative Soundtrack
--- MOD_ID: AltSoundtrack
--- PREFIX: alt_ost
--- MOD_AUTHOR: [Hoverman]
--- MOD_DESCRIPTION: Replaces the ingame music with original music by Hoverman
--- DEPENDENCIES: [Steamodded>=1.0.0~ALPHA-0909a]
local min1 = 1
local max1 = 4
local min2 = 5
local max2 = 8

-- stop music after defeating boss blind if music is to change
SMODS.Sound({
    vol = 1.0,
    pitch = 1,
    key = "music_normal_stop",
    path = "music_normal_stop.ogg",
    select_music_track = function()
        return G.GAME 
        and G.GAME.round_resets.blind_states.Boss == 'Defeated'
        and G.GAME.round_resets.ante % 8 == (max1 + 1)
        and 200
    end,
    sync = {
        alt_ost_music_normal = false,
        alt_ost_music_normal_ante3 = false,
    }
})

SMODS.Sound({
    vol = 1.0,
    pitch = 1,
    key = "music_normal_ante3_stop",
    path = "music_normal_ante3_stop.ogg",
    select_music_track = function()
        return G.GAME 
        and G.GAME.round_resets.blind_states.Boss == 'Defeated'
        and G.GAME.round_resets.ante % 8 == 1
        and 200
    end,
    sync = {
        alt_ost_music_normal = false,
        alt_ost_music_normal_ante3 = false,
    }
})

SMODS.Sound({
    vol = 1.0,
    pitch = 1,
    key = "music_normal",
    path = "music_normal.ogg",
    select_music_track = function()
		return G.GAME
    end,
    sync = {
        alt_ost_music_tarot = true,
        alt_ost_music_planet = true,
        alt_ost_music_shop = true,
        alt_ost_music_boss = true,
        alt_ost_music_spectral = true,
        alt_ost_music_cry_code = true,
        alt_ost_music_normal_ante3 = false,
    }
})

SMODS.Sound({
    vol = 1.0,
    pitch = 1,
    key = "music_tarot",
    path = "music_tarot.ogg",
    select_music_track = function()
        return G.GAME 
        and (G.GAME.round_resets.ante) % 8 >= min1  
        and (G.GAME.round_resets.ante) % 8 <= max1
        and (G.booster_pack) 
        and 50
    end,
})

SMODS.Sound({
    vol = 1.0,
    pitch = 1,
    key = "music_planet",
    path = "music_planet.ogg",
    select_music_track = function()
        return G.GAME 
        and (G.GAME.round_resets.ante) % 8 >= min1  
        and (G.GAME.round_resets.ante) % 8 <= max1
        and (G.booster_pack_meteors) 
        and 100
    end,
})

SMODS.Sound({
    vol = 1.0,
    pitch = 1,
    key = "music_shop",
    path = "music_shop.ogg",
    select_music_track = function()
        return G.GAME 
        and (G.GAME.round_resets.ante) % 8 >= min1  
        and (G.GAME.round_resets.ante) % 8 <= max1
        and (G.GAME and G.shop) 
        and 10
    end,
})

SMODS.Sound({
    vol = 1.0,
    pitch = 1,
    key = "music_boss",
    path = "music_boss.ogg",
    select_music_track = function()
        return G.GAME 
        and (G.GAME.round_resets.ante) % 8 >= min1  
        and (G.GAME.round_resets.ante) % 8 <= max1
        and (G.GAME and G.GAME.blind and G.GAME.blind.boss) 
        and 10
    end,
})

SMODS.Sound({
    vol = 1.0,
    pitch = 1,
    key = "music_spectral",
    path = "music_spectral.ogg",
    select_music_track = function()
        return G.GAME 
        and (G.GAME.round_resets.ante) % 8 >= min1  
        and (G.GAME.round_resets.ante) % 8 <= max1
        and (G.STATE and (G.STATE == G.STATES.SPECTRAL_PACK)) and 100
    end,
})

SMODS.Sound({
    vol = 1.0,
    pitch = 1,
    key = "music_cry_code",
    path = "music_cry_code.ogg",
    select_music_track = function()
        return G.GAME 
        and (G.GAME.round_resets.ante) % 8 >= min1  
        and (G.GAME.round_resets.ante) % 8 <= max1
        and ((G.pack_cards and G.pack_cards.cards and G.pack_cards.cards[1] and G.pack_cards.cards[1].ability.set == "Code") 
        or  (G.GAME and G.GAME.USING_CODE)) 
        and 100
    end,
})

SMODS.Sound({
    vol = 1.0,
    pitch = 1,
    key = "music_normal_ante3",
    path = "music_normal_ante3.ogg",
    select_music_track = function()
		return G.GAME 
        and ((G.GAME.round_resets.ante) % 8 >= min2
        or  (G.GAME.round_resets.ante) % 8 == 0)
        and 1
    end,
    sync = {
        alt_ost_music_tarot_ante3 = true,
        alt_ost_music_planet_ante3 = true,
        alt_ost_music_shop_ante3 = true,
        alt_ost_music_boss_ante3 = true,
        alt_ost_music_spectral_ante3 = true,
        alt_ost_music_cry_code_ante3 = true,
        alt_ost_music_normal = false,
    }
})

SMODS.Sound({
    vol = 1.0,
    pitch = 1,
    key = "music_tarot_ante3",
    path = "music_tarot_ante3.ogg",
    select_music_track = function()
        return G.GAME 
        and ((G.GAME.round_resets.ante) % 8 >= min2
        or  (G.GAME.round_resets.ante) % 8 == 0)
        and (G.booster_pack) 
        and 49
    end,
})

SMODS.Sound({
    vol = 1.0,
    pitch = 1,
    key = "music_planet_ante3",
    path = "music_planet_ante3.ogg",
    select_music_track = function()
        return G.GAME 
        and ((G.GAME.round_resets.ante) % 8 >= min2
        or  (G.GAME.round_resets.ante) % 8 == 0)
        and (G.booster_pack_meteors) 
        and 99
    end,
})

SMODS.Sound({
    vol = 1.0,
    pitch = 1,
    key = "music_shop_ante3",
    path = "music_shop_ante3.ogg",
    select_music_track = function()
        return G.GAME 
        and ((G.GAME.round_resets.ante) % 8 >= min2
        or  (G.GAME.round_resets.ante) % 8 == 0)
        and (G.GAME and G.shop) 
        and 9
    end,
})

SMODS.Sound({
    vol = 1.0,
    pitch = 1,
    key = "music_boss_ante3",
    path = "music_boss_ante3.ogg",
    select_music_track = function()
        return G.GAME 
        and ((G.GAME.round_resets.ante) % 8 >= min2
        or  (G.GAME.round_resets.ante) % 8 == 0)
        and (G.GAME and G.GAME.blind and G.GAME.blind.boss) 
        and 9
    end,
})

SMODS.Sound({
    vol = 1.0,
    pitch = 1,
    key = "music_spectral_ante3",
    path = "music_spectral_ante3.ogg",
    select_music_track = function()
        return G.GAME 
        and ((G.GAME.round_resets.ante) % 8 >= min2
        or  (G.GAME.round_resets.ante) % 8 == 0)
        and (G.STATE and (G.STATE == G.STATES.SPECTRAL_PACK)) 
        and 99
    end,
})

SMODS.Sound({
    vol = 1.0,
    pitch = 1,
    key = "music_cry_code_ante3",
    path = "music_cry_code_ante3.ogg",
    select_music_track = function()
        return G.GAME 
        and ((G.GAME.round_resets.ante) % 8 >= min2
        or  (G.GAME.round_resets.ante) % 8 == 0)
        and ((G.pack_cards and G.pack_cards.cards and G.pack_cards.cards[1] and G.pack_cards.cards[1].ability.set == "Code") 
        or  (G.GAME and G.GAME.USING_CODE))
        and 99
    end,
})
