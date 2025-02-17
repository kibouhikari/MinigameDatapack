execute store result storage minigame:yellow x int 1 run data get entity @e[limit=1,type=marker,tag=randomspawn_tdm_yellow] Pos[0]
execute store result storage minigame:yellow y int 1 run data get entity @e[limit=1,type=marker,tag=randomspawn_tdm_yellow] Pos[1]
execute store result storage minigame:yellow z int 1 run data get entity @e[limit=1,type=marker,tag=randomspawn_tdm_yellow] Pos[2]
function minigame:create/set_value with storage minigame:yellow
kill @e[tag=randomspawn_tdm_yellow]