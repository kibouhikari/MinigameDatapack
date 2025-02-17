## minigame:game/in_game/action/

# エントリー表記
title @a[tag=!player] actionbar [{"text":"エントリー中","color":"green"}]
title @a[tag=!player] actionbar [{"text":"未エントリー","color":"gray"}]

# ボスバー同期
bossbar set gametimer name [{"text":"残り試合時間:"},{"score":{"name":"#GameTimer","objective":"temporary"},"color":"yellow"}]
execute store result bossbar gametimer value run scoreboard players get #GameTimer temporary

# タイマー減算
execute if score #GameTimer temporary matches 1.. run scoreboard players add #tick temporary 1
execute if score #tick temporary matches 20.. run scoreboard players remove #GameTimer temporary 1
execute if score #tick temporary matches 20.. run scoreboard players set #tick temporary 0

# 試合終了検知
execute if score #GameTimer temporary matches 0 run function minigame:game/end/ with storage minigame: firstPos