## minigame:game/start/ffa/

# ランダムスポーン0

# ストレージ内random_spawn_count設定
execute store result storage minigame: random_spawn_count int 1 run data get storage minigame:set_pos count
tag @s add tag_flag

say a0
# next function
function minigame:game/start/ffa/ffa