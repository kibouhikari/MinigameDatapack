# タイマー-1
scoreboard players set #GameTimer temporary -1

# ボスバー
bossbar set gametimer visible false

# 回復
function minigame:function/recovery with storage minigame:

# clear
clear @a[tag=player]

# tp
$tp @a[tag=player] $(x) $(y) $(z) 0 0

# 試合終了音
execute as @a run playsound minecraft:ui.loom.take_result player @s

# tag削除
tag @a remove player

# lobbyチーム参加
execute as @a[team=!lobby] run team join lobby @s

# #game初期化
scoreboard players set #game temporary 0