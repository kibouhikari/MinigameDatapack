## minigame:game/start/ffa/get_player

# ランダムスポーン4

say a4
# next function
$execute positioned $(x) $(y) $(z) as @e[tag=randomspawn_pos,limit=1,sort=nearest] at @s run function minigame:game/start/ffa/as_marker