kill @e[type=area_effect_cloud,tag=random_spawn]

team join single_battle @a[tag=player]

execute if score #map temporary matches 1 run scoreboard players set #max_random_spawn temporary 5
execute if score #map temporary matches 1 in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["random_spawn"]}
execute if score #map temporary matches 1 in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["random_spawn"]}
execute if score #map temporary matches 1 in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["random_spawn"]}
execute if score #map temporary matches 1 in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["random_spawn"]}
execute if score #map temporary matches 1 in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["random_spawn"]}
execute if score #map temporary matches 1 in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["random_spawn"]}
execute if score #map temporary matches 1 as @a[tag=player] store result score @s random_spawn run data get entity @e[tag=random_spawn,limit=1,sort=random] UUID[0] 1
execute if score #map temporary matches 1 as @a[tag=player] run scoreboard players operation @s random_spawn %= #max_random_spawn temporary
execute if score #map temporary matches 1 in minecraft:overworld run tp @a[scores={random_spawn=0},tag=player] -14.5 68 118.5
execute if score #map temporary matches 1 in minecraft:overworld run tp @a[scores={random_spawn=1},tag=player] -13.5 61 131.5
execute if score #map temporary matches 1 in minecraft:overworld run tp @a[scores={random_spawn=2},tag=player] 0.5 65 130.5
execute if score #map temporary matches 1 in minecraft:overworld run tp @a[scores={random_spawn=3},tag=player] -15.5 71 178.5
execute if score #map temporary matches 1 in minecraft:overworld run tp @a[scores={random_spawn=4},tag=player] -29.5 63 164.5
execute if score #map temporary matches 1 in minecraft:overworld run tp @a[scores={random_spawn=5},tag=player] -35.5 66 132.5

execute if score #map temporary matches 2 run scoreboard players set #max_random_spawn temporary 9
execute if score #map temporary matches 2 in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["random_spawn"]}
execute if score #map temporary matches 2 in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["random_spawn"]}
execute if score #map temporary matches 2 in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["random_spawn"]}
execute if score #map temporary matches 2 in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["random_spawn"]}
execute if score #map temporary matches 2 in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["random_spawn"]}
execute if score #map temporary matches 2 in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["random_spawn"]}
execute if score #map temporary matches 2 in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["random_spawn"]}
execute if score #map temporary matches 2 in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["random_spawn"]}
execute if score #map temporary matches 2 in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["random_spawn"]}
execute if score #map temporary matches 2 in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["random_spawn"]}
execute if score #map temporary matches 2 as @a[tag=player] store result score @s random_spawn run data get entity @e[tag=random_spawn,limit=1,sort=random] UUID[0] 1
execute if score #map temporary matches 2 as @a[tag=player] run scoreboard players operation @s random_spawn %= #max_random_spawn temporary
execute if score #map temporary matches 2 in minecraft:overworld run setblock -12 56 60 redstone_block

scoreboard players set @a[tag=player] temporary -1