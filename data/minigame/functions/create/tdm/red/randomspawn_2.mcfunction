execute store result storage minigame:red x int 1 run data get entity @e[limit=1,type=marker,tag=randomspawn_tdm_red] Pos[0]
execute store result storage minigame:red y int 1 run data get entity @e[limit=1,type=marker,tag=randomspawn_tdm_red] Pos[1]
execute store result storage minigame:red z int 1 run data get entity @e[limit=1,type=marker,tag=randomspawn_tdm_red] Pos[2]
function minigame:create/set_value with storage minigame:red
kill @e[tag=randomspawn_tdm_red]