# 参加者をTP
    execute in minecraft:overworld run tp @a[tag=rmn.entry] -5.5 57 -2.5 0 0

# 参加者を元の状態へ戻す
    tag @a remove rmn.player
    clear @a[tag=rmn.entry]
    gamemode adventure @a[tag=rmn.entry]
    effect clear @a[tag=rmn.entry]
    scoreboard players set @a rmn.deathcount 0

# スコアを表示
    #非表示
    scoreboard objectives setdisplay list

    #体力非表示
    scoreboard objectives setdisplay belowName

# 試合時間を非表示
    bossbar set minecraft:rmn.br_gametimer_0 visible false
    bossbar set minecraft:rmn.br_gametimer_0 players
    bossbar set minecraft:rmn.br_gametimer_1 visible false
    bossbar set minecraft:rmn.br_gametimer_1 players
    bossbar set minecraft:rmn.br_gametimer_2 visible false
    bossbar set minecraft:rmn.br_gametimer_2 players

# 試合が終わったことにする
    data modify storage rmn: in_game set value 0b

# バトルロワイヤルを初期化
    execute in minecraft:tenkuu as @e[type=marker,tag=rmn.map5,tag=rmn.br_center,limit=1,sort=random] at @s run worldborder center ~ ~
    execute in minecraft:tenkuu run worldborder set 59999899
    scoreboard players set #br_phase rmn.temporary -1

    execute as @e[tag=rmn.supply_spawned] at @s run setblock ~ ~ ~ air replace
    execute in minecraft:tenkuu run kill @e[type=item]
    tag @e remove rmn.supply_spawned

# 試合が始まったことを通知
    #全体にタイトルを表示
    title @a title [{"text":"試合終了"}]

    #勝利者を表示
    execute unless data storage rmn: {on_start:1b} run function rmn:map/map5/mode/br/gameend/win/

    #生存タグを削除
    tag @a remove rmn.alive

# ロビーチームに参加
    team join rmn.lobby @a[tag=rmn.entry]

# キル数をリセット
    scoreboard players set @a[tag=rmn.entry] rmn.killcount 0
    scoreboard players set @a[tag=rmn.entry] rmn.killscore 0
    scoreboard players set #most_killcount rmn.temporary 0

    #試合終了時の音を鳴らす
    execute unless data storage rmn: {on_start:1b} as @a at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 0.5