## minigame:game/start/ffa/compare

# ランダムスポーン6

# 比較
execute if score @s s = #temp.worst_player_count s run tp @a[tag=tag_flag] @s
tag @a[tag=tag_flag] remove tag

say a6
# next function
function minigame:game/start/ffa/repeat