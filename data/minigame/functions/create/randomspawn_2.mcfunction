execute store result storage minigame:set_pos x int 1 run data get entity @e[limit=1,type=marker,tag=randomspawn_ffa] Pos[0]
execute store result storage minigame:set_pos y int 1 run data get entity @e[limit=1,type=marker,tag=randomspawn_ffa] Pos[1]
execute store result storage minigame:set_pos z int 1 run data get entity @e[limit=1,type=marker,tag=randomspawn_ffa] Pos[2]
function minigame:create/set_value with storage minigame:set_pos
kill @e[tag=randomspawn_ffa]