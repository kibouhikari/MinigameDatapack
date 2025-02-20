# gameスコア初期化
scoreboard players set #game temporary 0

# gameスコア設定
scoreboard players set #game temporary 1

# killcount初期化
scoreboard players set @a killscore 0
scoreboard players set @a killcount 0
scoreboard players set #killcount.red temporary 0
scoreboard players set #killcount.blue temporary 0

# エントリー中のプレイヤーをゲームに参加させる
tag @a[tag=entry] add player

# 試合開始
scoreboard players operation #GameTimer temporary = #GameTimerLimit temporary
title @a title [{"text":"- 試合開始 -","bold":true}]
execute if score #mode temporary matches 0 run function minigame:function/gamestart/gamestart_single
execute if score #mode temporary matches 1 run function minigame:function/gamestart/gamestart_team
execute as @a at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1 1

# ロードアウト付与
execute as @a[tag=player] at @s run function minigame:function/get_loadout

# ボスバー設定
bossbar set minecraft:gametimer visible true
bossbar set minecraft:gametimer players @a
execute store result bossbar minecraft:gametimer max run scoreboard players get #GameTimer temporary

# ステータス設定
gamemode adventure @a[tag=player]
execute as @a[tag=player] run attribute @s generic.max_health base set 40
effect give @a[tag=player] instant_health 20 0 true

# 特殊イベント乱数
scoreboard players set #max_special_type temporary 3
execute in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["special_1_type"]}
execute in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["special_2_type"]}
execute in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["special_3_type"]}
execute in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["special_4_type"]}
execute store result score #special_1_type temporary run data get entity @e[tag=special_1_type,limit=1] UUID[0] 1
scoreboard players operation #special_1_type temporary %= #max_special_type temporary
execute store result score #special_2_type temporary run data get entity @e[tag=special_2_type,limit=1] UUID[0] 1
scoreboard players operation #special_2_type temporary %= #max_special_type temporary
execute store result score #special_3_type temporary run data get entity @e[tag=special_3_type,limit=1] UUID[0] 1
scoreboard players operation #special_3_type temporary %= #max_special_type temporary
execute store result score #special_4_type temporary run data get entity @e[tag=special_4_type,limit=1] UUID[0] 1
scoreboard players operation #special_4_type temporary %= #max_special_type temporary

kill @e[type=area_effect_cloud,tag=special_1_type]
kill @e[type=area_effect_cloud,tag=special_2_type]
kill @e[type=area_effect_cloud,tag=special_3_type]
kill @e[type=area_effect_cloud,tag=special_4_type]