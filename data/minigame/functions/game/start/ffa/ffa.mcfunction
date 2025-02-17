## minigaem:game/start/ffa/ffa

#ランダムスポーン1

# #random_spawn_countをスコアボード化
execute store result score #random_spawn_count temporary run data get storage minigame: random_spawn_count

# #random_spawn_countを1減算
scoreboard players remove #random_spawn_count temporary 1

# スコアボード化した#random_spawn_countをstorageと同期
execute store result storage minigame: random_spawn_count int 1 run scoreboard players get #random_spawn_count temporary

say a1
# next function
function minigame:game/start/ffa/get_position with storage minigame: