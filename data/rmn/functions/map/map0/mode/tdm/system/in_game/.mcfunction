# 死亡処理
    execute as @e[type=player,scores={rmn.deathcount=1..}] run tag @s add rmn.death
    execute as @r[tag=rmn.death] run function rmn:map/map0/mode/tdm/system/death/

# 試合時間を変更
    execute if score #tdm_gametimer_tick rmn.temporary matches ..0 run scoreboard players remove #tdm_gametimer rmn.temporary 1
    execute if score #tdm_gametimer_tick rmn.temporary matches ..0 run scoreboard players set #tdm_gametimer_tick rmn.temporary 20
    scoreboard players remove #tdm_gametimer_tick rmn.temporary 1
    execute store result bossbar minecraft:rmn.gametimer value run scoreboard players get #tdm_gametimer rmn.temporary

# 最多キル数を保存する
    execute as @a[team=rmn.red,scores={rmn.killscore=1..}] at @s run scoreboard players add #killscore.red rmn.temporary 1
    execute as @a[team=rmn.red,scores={rmn.killscore=1..}] at @s run scoreboard players remove @s rmn.killscore 1
    execute as @a[team=rmn.blue,scores={rmn.killscore=1..}] at @s run scoreboard players add #killscore.blue rmn.temporary 1
    execute as @a[team=rmn.blue,scores={rmn.killscore=1..}] at @s run scoreboard players remove @s rmn.killscore 1
    execute as @a[scores={rmn.killscore=1..}] run effect give @s instant_health 2 1 true
    execute as @a[scores={rmn.killscore=1..}] at @s run scoreboard players remove @s rmn.killscore 1

# キル数を表示
    execute as @a[tag=rmn.player] run title @s actionbar [{"text":"赤チームのキル数:","color":"red"},{"color":"aqua","score":{"objective":"rmn.temporary","name":"#killscore.red"}},{"text":"    青チームのキル数:","color":"blue"},{"color":"aqua","score":{"objective":"rmn.temporary","name":"#killscore.blue"}}]

# 試合時間が0なら試合を終了させる
    execute if score #tdm_gametimer rmn.temporary matches ..0 run function rmn:map/map0/mode/tdm/gameend/