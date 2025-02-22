# スポーン場所設定
    execute in minecraft:overworld run spawnpoint @a 0 56 0 0

# 試合外処理
    #rmn: in_gameが0bなら試合外処理を実行
    execute if data storage rmn: {in_game:0b} run function rmn:map/hub/system/out_game/

# 試合内処理
    #rmn: in_gameが1bなら試合内処理を実行(hubから分岐)
    execute if data storage rmn: {in_game:1b} run function rmn:map/hub/system/in_game/

# 退出処理
execute as @a[scores={rmn.leave_game=1..}] unless score @s rmn.in_match = #in_match rmn.temporary run function rmn:map/hub/system/leave/map
execute as @a[scores={rmn.leave_game=1..}] if data storage rmn: {in_game:1b} run scoreboard players set @s rmn.leave_game 0
execute as @a[scores={rmn.leave_game=1..}] if data storage rmn: {in_game:0b} run function rmn:map/hub/system/leave/map