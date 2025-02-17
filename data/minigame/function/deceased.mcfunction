# ロードアウト取得
function minigame:function/get_loadout

# エフェクト付け直し
effect give @s[tag=player] health_boost infinite 4 true
effect give @s[tag=player] instant_health 20 0 true
effect give @s[tag=player] regeneration 3 255 true

# ランダムリス
execute store result score @s random_spawn run random value 0..5
    # TP

    # MAP1
    execute if score #mode temporary matches 0 if score #map temporary matches 1 run tp @s[scores={random_spawn=0},tag=player,team=single_battle] -14.5 68 118.5
    execute if score #mode temporary matches 0 if score #map temporary matches 1 run tp @s[scores={random_spawn=1},tag=player,team=single_battle] -13.5 61 131.5
    execute if score #mode temporary matches 0 if score #map temporary matches 1 run tp @s[scores={random_spawn=2},tag=player,team=single_battle] 0.5 65 130.5
    execute if score #mode temporary matches 0 if score #map temporary matches 1 run tp @s[scores={random_spawn=3},tag=player,team=single_battle] -15.5 71 178.5
    execute if score #mode temporary matches 0 if score #map temporary matches 1 run tp @s[scores={random_spawn=4},tag=player,team=single_battle] -29.5 63 164.5
    execute if score #mode temporary matches 0 if score #map temporary matches 1 run tp @s[scores={random_spawn=5},tag=player,team=single_battle] -35.5 66 132.5

# 所期スポTP
tp @s[tag=!player] 0.500000 56.000000 0.500000

# 死亡回数リセット
scoreboard players set @s deathcount 0