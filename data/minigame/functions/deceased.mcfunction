kill @e[type=area_effect_cloud,tag=random_spawn_deceased]

# ロードアウト取得
function minigame:function/get_loadout

# エフェクト付け直し
attribute @s generic.max_health base set 40
effect give @s[tag=player] instant_health 20 0 true
effect give @s[tag=player] regeneration 3 255 true

# ランダムリス
    # MAP1
    execute in minecraft:overworld if score #mode temporary matches 0 if score #map temporary matches 1 run scoreboard players set #max_random_spawn temporary 5
    execute in minecraft:overworld if score #mode temporary matches 0 if score #map temporary matches 1 run summon area_effect_cloud 0 0 0 {Tags:["random_spawn_deceased"]}
    execute in minecraft:overworld if score #mode temporary matches 0 if score #map temporary matches 1 store result score @s random_spawn run data get entity @e[tag=random_spawn_deceased,limit=1] UUID[0] 1
    execute in minecraft:overworld if score #mode temporary matches 0 if score #map temporary matches 1 run scoreboard players operation @s random_spawn %= #max_random_spawn temporary
    execute in minecraft:overworld if score #mode temporary matches 0 if score #map temporary matches 1 run tp @s[scores={random_spawn=0},tag=player,team=single_battle] -14.5 68 118.5
    execute in minecraft:overworld if score #mode temporary matches 0 if score #map temporary matches 1 run tp @s[scores={random_spawn=1},tag=player,team=single_battle] -13.5 61 131.5
    execute in minecraft:overworld if score #mode temporary matches 0 if score #map temporary matches 1 run tp @s[scores={random_spawn=2},tag=player,team=single_battle] 0.5 65 130.5
    execute in minecraft:overworld if score #mode temporary matches 0 if score #map temporary matches 1 run tp @s[scores={random_spawn=3},tag=player,team=single_battle] -15.5 71 178.5
    execute in minecraft:overworld if score #mode temporary matches 0 if score #map temporary matches 1 run tp @s[scores={random_spawn=4},tag=player,team=single_battle] -29.5 63 164.5
    execute in minecraft:overworld if score #mode temporary matches 0 if score #map temporary matches 1 run tp @s[scores={random_spawn=5},tag=player,team=single_battle] -35.5 66 132.5
    # MAP2
    execute in minecraft:overworld if score #mode temporary matches 0 if score #map temporary matches 2 run scoreboard players set #max_random_spawn temporary 9
    execute in minecraft:overworld if score #mode temporary matches 0 if score #map temporary matches 2 run summon area_effect_cloud 0 0 0 {Tags:["random_spawn_deceased"]}
    execute in minecraft:overworld if score #mode temporary matches 0 if score #map temporary matches 2 store result score @s random_spawn run data get entity @e[tag=random_spawn_deceased,limit=1] UUID[0] 1
    execute in minecraft:overworld if score #mode temporary matches 0 if score #map temporary matches 2 run scoreboard players operation @s random_spawn %= #max_random_spawn temporary
    execute in minecraft:overworld if score #mode temporary matches 0 if score #map temporary matches 2 run setblock -12 56 60 redstone_block

    execute in minecraft:overworld if score #mode temporary matches 1 if score #map temporary matches 2 run scoreboard players set #max_random_spawn temporary 3
    execute in minecraft:overworld if score #mode temporary matches 1 if score #map temporary matches 2 in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["random_spawn_deceased"]}
    execute in minecraft:overworld if score #mode temporary matches 1 if score #map temporary matches 2 in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["random_spawn_deceased"]}
    execute in minecraft:overworld if score #mode temporary matches 1 if score #map temporary matches 2 in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["random_spawn_deceased"]}
    execute in minecraft:overworld if score #mode temporary matches 1 if score #map temporary matches 2 in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["random_spawn_deceased"]}
    execute in minecraft:overworld if score #mode temporary matches 1 if score #map temporary matches 2 store result score @s random_spawn run data get entity @e[tag=random_spawn_deceased,limit=1] UUID[0] 1
    execute in minecraft:overworld if score #mode temporary matches 1 if score #map temporary matches 2 run scoreboard players operation @s random_spawn %= #max_random_spawn temporary
    execute in minecraft:overworld if score #mode temporary matches 1 if score #map temporary matches 2 run setblock -10 56 60 redstone_block

# 所期スポTP
execute in minecraft:overworld run tp @s[tag=!player] 0.500000 56.000000 0.500000

# 死亡回数リセット
scoreboard players set @s deathcount 0