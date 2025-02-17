execute store result storage minigame:green x int 1 run data get entity @e[limit=1,type=marker,tag=randomspawn_tdm_green] Pos[0]
execute store result storage minigame:green y int 1 run data get entity @e[limit=1,type=marker,tag=randomspawn_tdm_green] Pos[1]
execute store result storage minigame:green z int 1 run data get entity @e[limit=1,type=marker,tag=randomspawn_tdm_green] Pos[2]
function minigame:create/set_value with storage minigame:green
kill @e[tag=randomspawn_tdm_green]