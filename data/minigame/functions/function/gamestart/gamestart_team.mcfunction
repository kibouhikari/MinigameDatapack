kill @e[type=area_effect_cloud,tag=random_spawn]

# TP
    #MAP1
    execute if score #map temporary matches 1 in minecraft:overworld run tp @a[team=red] -36.5 60 122.5
    execute if score #map temporary matches 1 in minecraft:overworld run tp @a[team=blue] 4.5 61 179.5
    execute if score #map temporary matches 1 in minecraft:overworld run spawnpoint @a[team=red] -36 60 122
    execute if score #map temporary matches 1 in minecraft:overworld run spawnpoint @a[team=blue] 4 61 179
    #MAP2
    execute if score #map temporary matches 2 run scoreboard players set #max_random_spawn temporary 3
    execute if score #map temporary matches 2 in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["random_spawn"]}
    execute if score #map temporary matches 2 in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["random_spawn"]}
    execute if score #map temporary matches 2 in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["random_spawn"]}
    execute if score #map temporary matches 2 in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["random_spawn"]}
    execute if score #map temporary matches 2 as @a[tag=player] store result score @s random_spawn run data get entity @e[tag=random_spawn,limit=1,sort=random] UUID[0] 1
    execute if score #map temporary matches 2 as @a[tag=player] run scoreboard players operation @s random_spawn %= #max_random_spawn temporary
    execute as @a run tellraw @a [{"selector":"@s"},{"score":{"objective":"random_spawn","name":"@s"}}]
    execute if score #map temporary matches 2 in minecraft:overworld run setblock -10 56 60 redstone_block