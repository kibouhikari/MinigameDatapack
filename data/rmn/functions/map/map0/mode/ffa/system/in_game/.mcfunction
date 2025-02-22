# 死亡処理
    execute as @e[type=player,scores={rmn.deathcount=1..}] run function rmn:map/map0/mode/ffa/system/death/

# 試合時間を変更
    execute if score #ffa_gametimer_tick rmn.temporary matches ..0 run scoreboard players remove #ffa_gametimer rmn.temporary 1
    execute if score #ffa_gametimer_tick rmn.temporary matches ..0 run scoreboard players set #ffa_gametimer_tick rmn.temporary 20
    scoreboard players remove #ffa_gametimer_tick rmn.temporary 1
    execute store result bossbar minecraft:rmn.gametimer value run scoreboard players get #ffa_gametimer rmn.temporary

# 最多キル数を保存する
    execute as @a[tag=rmn.player] if score @s rmn.killcount > #most_killcount rmn.temporary run scoreboard players operation #most_killcount rmn.temporary = @s rmn.killcount
    execute as @a[scores={rmn.killscore=1..}] run scoreboard players remove @s rmn.killscore 1

# キル数を表示
    execute as @a[tag=rmn.player] run title @s actionbar [{"text":"キル数:"},{"color":"aqua","score":{"objective":"rmn.killcount","name": "@s"}},{"text":"トップのキル数:"},{"color":"aqua","score":{"objective":"rmn.killcount","name": "@s"}}]

# 試合時間が0なら試合を終了させる
    execute if score #ffa_gametimer rmn.temporary matches ..0 run function rmn:map/map0/mode/ffa/gameend/