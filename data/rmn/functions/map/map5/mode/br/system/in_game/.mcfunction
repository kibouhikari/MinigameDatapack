# 死亡処理
    execute as @e[type=player,scores={rmn.deathcount=1..}] run tag @s add rmn.death
    execute as @r[tag=rmn.death] run function rmn:map/map5/mode/br/system/death/

# 観戦
    gamemode spectator @a[team=rmn.spectator]

# 試合時間を変更
    execute if score #br_phase rmn.temporary matches 0 if score #br_gametimer_tick rmn.temporary matches ..0 run scoreboard players remove #br_gametimer_0 rmn.temporary 1
    execute if score #br_phase rmn.temporary matches 1 if score #br_gametimer_tick rmn.temporary matches ..0 run scoreboard players remove #br_gametimer_1 rmn.temporary 1
    execute if score #br_phase rmn.temporary matches 2 if score #br_gametimer_tick rmn.temporary matches ..0 run scoreboard players remove #br_gametimer_2 rmn.temporary 1
    execute if score #br_phase rmn.temporary matches 3 if score #br_gametimer_tick rmn.temporary matches ..0 run scoreboard players remove #br_gametimer_3 rmn.temporary 1
    execute if score #br_gametimer_tick rmn.temporary matches ..0 run scoreboard players set #br_gametimer_tick rmn.temporary 20
    scoreboard players remove #br_gametimer_tick rmn.temporary 1
    execute if score #br_phase rmn.temporary matches 0 store result bossbar minecraft:rmn.br_gametimer_0 value run scoreboard players get #br_gametimer_0 rmn.temporary
    execute if score #br_phase rmn.temporary matches 1 store result bossbar minecraft:rmn.br_gametimer_1 value run scoreboard players get #br_gametimer_1 rmn.temporary
    execute if score #br_phase rmn.temporary matches 2 store result bossbar minecraft:rmn.br_gametimer_1 value run scoreboard players get #br_gametimer_2 rmn.temporary
    execute if score #br_phase rmn.temporary matches 3 store result bossbar minecraft:rmn.br_gametimer_1 value run scoreboard players get #br_gametimer_3 rmn.temporary

# 補給ボックス
    execute if score #br_supplybox rmn.temporary matches ..0 run function rmn:map/map5/mode/br/system/supply/
    execute if score #br_supplybox rmn.temporary matches ..0 run scoreboard players operation #br_supplybox rmn.temporary = #br_default_supplybox rmn.temporary
    execute if score #br_supplybox rmn.temporary matches 300 run tellraw @a [{"text":"補給ボックス更新まで15秒です","color":"yellow"}]
    execute if score #br_supplybox rmn.temporary matches 300 as @a at @s run playsound block.note_block.bell master @s ~ ~ ~ 1 1 1
    scoreboard players remove #br_supplybox rmn.temporary 1

# フェーズ変更
    execute if score #br_phase rmn.temporary matches 0 if score #br_gametimer_0 rmn.temporary matches ..0 run function rmn:map/map5/mode/br/system/phase/change
    execute if score #br_phase rmn.temporary matches 1 if score #br_gametimer_1 rmn.temporary matches ..0 run function rmn:map/map5/mode/br/system/phase/change
    execute if score #br_phase rmn.temporary matches 2 if score #br_gametimer_2 rmn.temporary matches ..0 run function rmn:map/map5/mode/br/system/phase/change
    execute if score #br_phase rmn.temporary matches 3 if score #br_gametimer_3 rmn.temporary matches ..0 run function rmn:map/map5/mode/br/system/phase/change

# 最多キル数を保存する
    execute as @a[tag=rmn.player] if score @s rmn.killcount > #most_killcount rmn.temporary run scoreboard players operation #most_killcount rmn.temporary = @s rmn.killcount
    execute as @a[scores={rmn.killscore=1..}] run effect give @s regeneration 12 2
    execute as @a[scores={rmn.killscore=1..}] run scoreboard players remove @s rmn.killscore 1

# 生存者数、キル数を表示
    execute as @a[tag=rmn.player] run title @s actionbar [{"text":"生存者数:"},{"color":"aqua","score":{"objective":"rmn.temporary","name": "#player_alive"}},{"text":"キル数:"},{"color":"aqua","score":{"objective":"rmn.killcount","name": "@s"}},{"text":"トップのキル数:"},{"color":"aqua","score":{"objective":"rmn.temporary","name": "#most_killcount"}}]
    execute as @a[tag=!rmn.player] run title @s actionbar [{"text":"生存者数:"},{"color":"aqua","score":{"objective":"rmn.temporary","name": "#player_alive"}},{"text":"トップのキル数:"},{"color":"aqua","score":{"objective":"rmn.temporary","name": "#most_killcount"}}]

# 生存者が一人以下なら試合を終了させる
    execute store result score #player_alive rmn.temporary if entity @a[tag=rmn.alive]
    execute if score #player_alive rmn.temporary matches ..1 run function rmn:map/map5/mode/br/gameend/