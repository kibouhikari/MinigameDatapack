function minigame:create/randomspawn_2 with storage minigame:
scoreboard players add #count temporary 1
execute store result storage minigame: count double 1 run scoreboard players get #count temporary
execute store result storage minigame:set_pos count double 1 run scoreboard players get #count temporary