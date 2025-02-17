# 回復
function minigame:function/recovery with storage minigame:

# リスポーン
execute if entity @s[team=red] run function minigame:game/start/red/randomspawn with storage minigame:red
execute if entity @s[team=blue] run function minigame:game/start/blue/randomspawn with storage minigame:blue
execute if entity @s[team=green] run function minigame:game/start/green/randomspawn with storage minigame:green
execute if entity @s[team=yellow] run function minigame:game/start/yellow/randomspawn with storage minigame:yellow

# ロードアウト実行
execute if score #game temporary matches 1 if score #loadout_switch temporary matches 1 run function minigame:game/in_game/loadout/ with storage minigame: loadout

# スコア初期化
scoreboard players set @s deathcount 0