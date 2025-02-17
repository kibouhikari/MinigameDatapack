# 試合前タイマー停止
scoreboard players set #before_start_timer_switch temporary 0

# 試合前タイマー非表示
bossbar set before_gametimer players
bossbar set before_gametimer visible false

# 設定適用
function minigame:option/data/
execute store result storage minigame: count double 1 run scoreboard players get #count temporary

# 回復時の回復量をminigame:ストレージのhealthに代入
execute store result storage minigame: health double 1 run data get storage minigame: max_health 0.5

# 最初に実行
tag @a[tag=entry] add player
tag @a[tag=entry] add tag
scoreboard players set #game temporary 1
clear @a[tag=player]
scoreboard players set #tick temporary 0

# ボスバー
execute store result bossbar gametimer max run scoreboard players get #gametimer temporary
bossbar set gametimer players @a
bossbar set gametimer visible true

# ランダムtp
execute if data storage minigame: {mode:ffa} as @r[tag=tag] run function minigame:game/start/ffa/
execute if data storage minigame: {mode:tdm} as @a[team=red] run function minigame:game/start/red/randomspawn with storage minigame:red
execute if data storage minigame: {mode:tdm} as @a[team=blue] run function minigame:game/start/blue/randomspawn with storage minigame:blue
execute if data storage minigame: {mode:tdm} as @a[team=green] run function minigame:game/start/green/randomspawn with storage minigame:green
execute if data storage minigame: {mode:tdm} as @a[team=yellow] run function minigame:game/start/yellow/randomspawn with storage minigame:yellow

# 回復
function minigame:function/recovery with storage minigame:

# ロードアウト付与
execute if score #loadout_switch temporary matches 1 as @a[tag=player] run function minigame:game/in_game/loadout/ with storage minigame: loadout