## minigame:game/start/ffa/get_position

# ランダムスポーン2

# 座標を取得
$execute store result storage minigame:res_pos x int 1 run data get storage minigame: respawn[$(random_spawn_count)].x
$execute store result storage minigame:res_pos y int 1 run data get storage minigame: respawn[$(random_spawn_count)].y
$execute store result storage minigame:res_pos z int 1 run data get storage minigame: respawn[$(random_spawn_count)].z

say a2
# next function
function minigame:game/start/ffa/summon with storage minigame:res_pos