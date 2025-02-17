## minigame:game/start/ffa/summon

# ランダムスポーン3

# random_spawn_countの座標にマーカーを召喚
$summon marker $(x) $(y) $(z) {Tags:["randomspawn_pos"]}

say a3
# next function
function minigame:game/start/ffa/get_player with storage minigame:res_pos