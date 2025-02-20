# キル者ステータス設定
execute as @a[scores={killscore=1..}] at @s run attribute @s generic.max_health base set 40
execute as @a[scores={killscore=1..}] at @s run effect give @s instant_health 20 0 true

# 定期発光
scoreboard players operation #halfofGameTimer temporary = #GameTimerLimit temporary
scoreboard players operation #halfofGameTimer temporary /= #2 temporary
execute if score #GameTimer temporary = #halfofGameTimer temporary run effect give @a[tag=player] glowing 10 1

# キル数同期
execute as @a at @s if score @s killcount > #dummy killcount run scoreboard players operation #dummy killcount = @s killcount

execute as @a[team=red,scores={killscore=1..}] at @s run scoreboard players add #killscore.red temporary 1
execute as @a[team=red,scores={killscore=1..}] at @s run scoreboard players remove @s killscore 1
execute as @a[team=blue,scores={killscore=1..}] at @s run scoreboard players add #killscore.blue temporary 1
execute as @a[team=blue,scores={killscore=1..}] at @s run scoreboard players remove @s killscore 1
execute as @a[scores={killscore=1..}] at @s run scoreboard players remove @s killscore 1

# ボスバー同期
execute if score #game temporary matches 1.. if score #GameTimer temporary matches 1.. run scoreboard players remove #GameTimer temporary 1
execute if score #game temporary matches 1.. if score #GameTimer temporary matches 1.. store result bossbar minecraft:gametimer value run scoreboard players get #GameTimer temporary

# ゲーム終了検知
execute if score #GameTimer temporary matches 0 run function minigame:function/gameend/

# 落雷判定
scoreboard players add @e[tag=lightning_bolt] temporary 1
execute as @e[tag=lightning_bolt] at @s run particle minecraft:dust 1 1 1 1 ~ ~0.2 ~ 0.2 0 0.2 0 1
execute as @e[tag=lightning_bolt,scores={temporary=30..}] at @s run summon lightning_bolt ~ ~ ~
execute as @e[tag=lightning_bolt,scores={temporary=30..}] at @s run kill @s

# タイマー減算
execute run scoreboard players add #tick temporary 1
execute if score #tick temporary matches 20.. run scoreboard players add #sec temporary 1
execute if score #tick temporary matches 20.. run scoreboard players set #tick temporary 0

# 特殊イベント
execute if score #special temporary matches 1 if score #GameTimer temporary matches 0.. run function minigame:function/special/action/