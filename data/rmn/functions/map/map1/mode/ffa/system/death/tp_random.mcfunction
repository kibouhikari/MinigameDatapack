# tpをする前の下準備
    #プレイヤーのrmn.random_spawnスコアを0~5の値でランダムに割り振る
    #UUIDを使用した乱数生成
    execute in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["rmn.random_spawn"]}
    execute in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["rmn.random_spawn"]}
    execute in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["rmn.random_spawn"]}
    execute in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["rmn.random_spawn"]}
    execute in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["rmn.random_spawn"]}
    execute in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["rmn.random_spawn"]}
    execute in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["rmn.random_spawn"]}
    execute in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["rmn.random_spawn"]}
    execute in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["rmn.random_spawn"]}
    execute in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["rmn.random_spawn"]}
    execute store result score @s rmn.random_spawn run data get entity @e[type=area_effect_cloud,tag=rmn.random_spawn,limit=1,sort=random] UUID[0] 1
    kill @e[type=area_effect_cloud,tag=rmn.random_spawn]
    scoreboard players set #9 rmn.temporary 9
    scoreboard players operation @s rmn.random_spawn %= #9 rmn.temporary

# 参加者をtpする処理
    execute in minecraft:killhouse run function rmn:map/map1/mode/ffa/system/tp