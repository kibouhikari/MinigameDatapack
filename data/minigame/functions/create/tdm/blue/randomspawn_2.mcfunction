execute store result storage minigame:blue x int 1 run data get entity @e[limit=1,type=marker,tag=randomspawn_tdm_blue] Pos[0]
execute store result storage minigame:blue y int 1 run data get entity @e[limit=1,type=marker,tag=randomspawn_tdm_blue] Pos[1]
execute store result storage minigame:blue z int 1 run data get entity @e[limit=1,type=marker,tag=randomspawn_tdm_blue] Pos[2]
function minigame:create/set_value with storage minigame:blue
kill @e[tag=randomspawn_tdm_blue]