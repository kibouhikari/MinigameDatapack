# gameスコア初期化
scoreboard players set #game temporary 0

# ゲーム終了判定常時作動防止
scoreboard players set #GameTimer temporary -1
scoreboard players set #sec temporary 0
scoreboard players set #tick temporary 0

#ゲーム終了後動作
title @a title "試合終了"
team join lobby @a
bossbar set minecraft:gametimer visible false
clear @a[tag=player]
tp @a[tag=player] 0.5 56 0.5 0 0
execute as @a at @s run playsound minecraft:ui.loom.take_result player @s
tag @a[tag=player] remove player
spawnpoint @a 0 56 0 0

# 個人戦勝利判定
execute if score #mode temporary matches 0 run function minigame:function/gameend/solomode

# チーム戦勝利判定
execute if score #mode temporary matches 1 run function minigame:function/gameend/teammode

# 勝利後回復
effect give @a instant_health 20 0 true