# 実行
say a

# 再実行
execute if score #random_spawn_count temporary matches 0.. run scoreboard players remove #random_spawn_count temporary 1
execute store result storage minigame: random_spawn_count int 1 run scoreboard players get #random_spawn_count temporary
function minigame:game/start/randomspawn with storage minigame: random_spawn_count